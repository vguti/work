$(function() {
  var geolocation = window.navigator.geolocation;
  var $button = $('.js-locate');
  var $imagePlaceholder = $('.js-image');

  function initialize() {
    $button.on('click', function() {
      geolocation.getCurrentPosition(createMapImageForPosition);
    });
  }
  function createMapImageForPosition(position) {
    var lat = position.coords.latitude;
    var lng = position.coords.longitude;
    setImageByURL($imagePlaceholder, getMapURLForPosition(lat, lng));
  }

  function getMapURLForPosition(latitude, longitude) {
    return 'https://maps.googleapis.com/maps/api/staticmap?' +
      'maptype=roadmap&zoom=14&size=640x400&center=' +
      latitude + "," + longitude;
  }

  function setImageByURL($placeholder, imageURL) {
    $placeholder.html('<img src="' + imageURL + '"></img>');
  }

  initialize();
});
