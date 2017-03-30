// function toggleCost() {
//   $(this).toggleClass("selected-cost-btn");
//   // var
//   // updateCost();
// }
//
// function updateCost() {
//   var costs = [ "0 EUR", "2500 EUR", "5000 EUR", "7500 EUR", "10000 EUR" ];
//   $("#eventCost").html($(this).id());
//
// }
//
//
// $(document).ready(function() {
//   $(".participant-count-btn").bind('click', toggleCost);
//   // updateCost();
// });


$( function() {
   $( "#slider-range-max" ).slider({
     range: "max",
     min: 0,
     max: 80,
     value: 20,
     slide: function( event, ui ) {
       $( "#amount" ).val( ui.value );
       $("#cost").html( ui.value * 125 + " EUR")
     }
   });
   $( "#amount" ).val( $( "#slider-range-max" ).slider( "value" ) );
 } );
