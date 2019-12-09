import mapboxgl from 'mapbox-gl';
const mapElement = document.getElementById('map');

if (mapElement) {
mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

}

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};
const initMapbox = () => {

  if (mapElement) { // only build a map if there's a div#map to inject into
    console.log("map element")
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      // center: [ marker.lng, marker.lat ];
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    console.log(markers);

      markers.forEach((marker) => {
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .addTo(map);
      });
      fitMapToMarkers(map, markers);



// if (mapElement) {
//   // [ ... ]

// }
  }
};

export { initMapbox }
