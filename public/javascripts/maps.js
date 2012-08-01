var map;
var centerLatitude = 38.5587607;
var centerLongitude = -121.7522674;
var startZoom = 14;

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

 <!-- var cbus = #(@cbus}; //-->
 <!-- console.log(cbus.length);  //-->
   
	for (i = 0; i < cbus.length; i++) {
		addMarker(cbus[i].lat, cbus[i].lng, cbus[i].address );
	}
}
	window.onload = init;
	window.onunload = GUnload;
