$(document).ready(function(){

  var navOffset = $('#coreynav').height();

  $('.navbar li a').click(function(event){
    event.preventDefault();
    $($(this).attr('href'))[0].scrollIntoView();
    scrollBy(0, -navOffset);
    $('navbar li').removeClass("active");
    $(this).parent().addClass("active");
  });

  $('body').scrollspy({
    target: '#coreynav',
    offset: navOffset + 1
 })

});



