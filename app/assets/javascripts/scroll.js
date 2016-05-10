$(document).ready(function(){

  var navOffset = $('#coreynav').height();

  $('body').scrollspy({
    target: '#coreynav',
    offset: navOffset + 1
  });

});



