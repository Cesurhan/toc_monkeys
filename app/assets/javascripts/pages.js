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
