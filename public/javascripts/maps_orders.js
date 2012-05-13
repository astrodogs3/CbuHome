var map;
var centerLatitude = 38.5587607;
var centerLongitude = -121.7522674;

var startZoom = 13;

function addMarker(lat, lng, description) {
  var marker = new GMarker(new GLatLng(lat, lng));
  GEvent.addListener(marker, 'click',
	  function() {
	    marker.openInfoWindowHtml(description);
	  }
  );
  map.addOverlay(marker);
}

function init(){
	map = new GMap2(document.getElementById("map"));
	map.addControl(new GSmallMapControl());
	map.addControl(new GMapTypeControl());
	map.setCenter(new GLatLng(centerLatitude, centerLongitude), startZoom);
	
	for (i = 0; i < orders.length; i++) {
		for (j = 0; j < orders[i].cbus.length; j++) {
			addMarker(orders[i].cbus[j].lat, orders[i].cbus[j].lng, orders[i].cbus[j].address );
		}
	}
}
	window.onload = init;
	window.onunload = GUnload;