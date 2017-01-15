// Write your Pizza Builder JavaScript in this file.
$('.crust-gluten-free').removeClass('crust-gluten-free');
$('.sauce-white').removeClass('sauce-white');
$('.btn-pepperonni').hasClass('.active');

$('.btn-pepperonni').click(function() {
	$('.pep').toggle();
});

$('.btn-mushrooms').click(function() {
	$('.mushroom').toggle();
});

$('.btn-green-peppers').click(function() {
	$('.green-pepper').toggle();
});

$('.btn-sauce').click(function() {
	console.log("hola")
	$('.sauce').toggleClass('sauce-white');
});

$('.btn-crust').click(function() {
	$('.crust').toggleClass('crust-gluten-free');
});

$(function(){
      $('.btn-pepperonni').click(function(){
      var isPresent = true;
      if var isPresent === true {
       	$('.btn-pepperonni').removeClass('active') 
      } else {
      	$('.btn-pepperonni').addClass('active')
      }
});