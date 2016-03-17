var req;
var isIE;
var completeField;
var completeTable;
var autoRow;
function init() {
    completeField = document.getElementById("complete-field");
    completeTable = document.getElementById("complete-table");
    autoRow = document.getElementById("auto-row");
    completeTable.style.top = getElementY(autoRow) + "px";
}
function doCompletion() {
    var url = "autocomplete?action=complete&id=" + escape(completeField.value);
	req = initRequest();
    req.open("GET", url, true);
    req.onreadystatechange = callback;
    req.send(null);
}
function initRequest() {
    if (window.XMLHttpRequest) {
        if (navigator.userAgent.indexOf('MSIE') != -1) {
            isIE = true;
        }
        return new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        isIE = true;
        return new ActiveXObject("Microsoft.XMLHTTP");
    }
}
function callback() {
    clearTable();
    if (req.readyState == 4) {
        if (req.status == 200) {
            parseMessages(req.responseXML);
        }
    }
}
function appendFlight(flightID,  flightName,  Airlines,  sourceCity,  destinationCity) {
    var row;
    var cell;
    var linkElement;
    
    if (isIE) {
        completeTable.style.display = 'block';
        row = completeTable.insertRow(completeTable.rows.length);
        cell = row.insertCell(0);
    } else {
        completeTable.style.display = 'table';
        row = document.createElement("tr");
        cell = document.createElement("td");
        row.appendChild(cell);
        completeTable.appendChild(row);
    }
    cell.className = "popupCell";
    linkElement = document.createElement("a");
    linkElement.className = "popupItem";
    linkElement.setAttribute("href", "autocomplete?action=lookup&id="+flightID);
    linkElement.appendChild(document.createTextNode(destinationCity));
	//+ " " +  Airlines + " " + sourceCity + " " + destinationCity ));
	//linkElement.appendChild(document.createTextNode(noOfSeats + " "));
	//linkElement.appendChild(document.createTextNode(Airlines + " "));
	//linkElement.appendChild(document.createTextNode(sourceCity + " "));
	//linkElement.appendChild(document.createTextNode(destinationCity + " "));
    cell.appendChild(linkElement);
}
function clearTable() {
    if (completeTable.getElementsByTagName("tr").length > 0) {
        completeTable.style.display = 'none';
        for (loop = completeTable.childNodes.length -1; loop >= 0 ; loop--) {
            completeTable.removeChild(completeTable.childNodes[loop]);
        }
    }
}
function getElementY(element){
    
    var targetTop = 0;
    
    if (element.offsetParent) {
        while (element.offsetParent) {
            targetTop += element.offsetTop;
            element = element.offsetParent;
        }
    } else if (element.y) {
        targetTop += element.y;
    }
    return targetTop;
}
function parseMessages(responseXML) {
    
    // no matches returned
    if (responseXML == null) {
        return false;
    } else {
        var flightsmap = responseXML.getElementsByTagName("flightsmap")[0];
        if (flightsmap.childNodes.length > 0) {
            completeTable.setAttribute("bordercolor", "black");
            completeTable.setAttribute("border", "1");
    
            for (loop = 0; loop < flightsmap.childNodes.length; loop++) {
                var flight = flightsmap.childNodes[loop];
				var flightID = flight.getElementsByTagName("flightID")[0];
                var flightName = flight.getElementsByTagName("flightName")[0];
				//var noOfSeats = flight.getElementsByTagName("noOfSeats")[0];
				var Airlines = flight.getElementsByTagName("Airlines")[0];
				var sourceCity = flight.getElementsByTagName("sourceCity")[0];
				var destinationCity = flight.getElementsByTagName("destinationCity")[0];

                appendFlight(
                    flightID.childNodes[0].nodeValue,
					flightName.childNodes[0].nodeValue,
					//noOfSeats.childNodes[0].nodeValue,
					Airlines.childNodes[0].nodeValue,
                    sourceCity.childNodes[0].nodeValue,
					destinationCity.childNodes[0].nodeValue);
            }
        }
    }
}