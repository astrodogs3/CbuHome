var map;
var centerLatitude = 38.57897;
var centerLongitude = -121.5289;
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
	
	for (i = 0; i < offices.length; i++) {
		addMarker(offices[i].lat, offices[i].lng, offices[i].city );
	}
}
	window.onload = init;
	window.onunload = GUnload;