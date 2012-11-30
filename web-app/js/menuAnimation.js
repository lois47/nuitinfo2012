/* Création du menu */
$(document).ready(function(){
	 $(".menu").buildMenu({
         template:"yourMenuVoiceTemplate",
         additionalData:"",
         menuSelector:".menuContainer",
         menuWidth:150,
         openOnRight:false,
         containment:"window",
         iconPath:"ico/",
         hasImages:true,
         fadeInTime:100,
         fadeOutTime:200,
         menuTop:0,
         menuLeft:0,
         submenuTop:0,
         submenuLeft:4,
         opacity:1,
         shadow:false,
         shadowColor:"black",
         shadowOpacity:.2,
         openOnClick:false,
         closeOnMouseOut:false,
         closeAfter:500,
         minZindex:"auto",
         hoverIntent:0, //if you use jquery.hoverIntent.js set this to time in milliseconds; 0= false;
         submenuHoverIntent:0, //if you use jquery.hoverIntent.js set this to time in milliseconds; 0= false;
     });
	 
	 // l'animation sur le changement de la langue dans le footer
	 $("#change-language").click(function() {
		 $('#selectLanguage').fadeToggle('slow', 'linear');
	 });
});

