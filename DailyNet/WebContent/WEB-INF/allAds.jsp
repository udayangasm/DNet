<html  ng-app ="allAds">
  	<head>  
    
    <title>All Ads</title>  
  
    <link rel="stylesheet" href="resources/css/bootstrap.css" />
    <link rel="stylesheet" href="resources/css/app.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
    <script src="http://angular-ui.github.io/ui-router/release/angular-ui-router.js"></script>
	
	<script src="https://maps.googleapis.com/maps/api/js?callback=initMap" async defer></script>
	
	
	<script type="text/javascript" src="resources/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="resources/js/jssor.slider.mini.js"></script>
    
		<script src="resources/js/showAllAds.js"></script>
    <script src="resources/js/service/ItemService.js"></script>
     
    
    
    
    <script >
    
	

    function initialize(dlat,dlan) {

    var myLatlng = new google.maps.LatLng(dlat,dlan);
    var mapOptions = {
    zoom: 10,
    center: myLatlng
    }
    var map = new google.maps.Map(document.getElementById("map"), mapOptions);

    // Place a draggable marker on the map
    marker = new google.maps.Marker({
    position: myLatlng,
    map: map,
    draggable:false,
    title:"Drag me!"
    });

    }

    
    
    
    function imageSlidingFunc(){


var jssor_1_SlideshowTransitions = [
  {$Duration:1200,x:0.3,$During:{$Left:[0.3,0.7]},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,x:-0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,x:-0.3,$During:{$Left:[0.3,0.7]},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,x:0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,y:0.3,$During:{$Top:[0.3,0.7]},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,y:-0.3,$SlideOut:true,$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,y:-0.3,$During:{$Top:[0.3,0.7]},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,y:0.3,$SlideOut:true,$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,x:0.3,$Cols:2,$During:{$Left:[0.3,0.7]},$ChessMode:{$Column:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,x:0.3,$Cols:2,$SlideOut:true,$ChessMode:{$Column:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,y:0.3,$Rows:2,$During:{$Top:[0.3,0.7]},$ChessMode:{$Row:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,y:0.3,$Rows:2,$SlideOut:true,$ChessMode:{$Row:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,y:0.3,$Cols:2,$During:{$Top:[0.3,0.7]},$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,y:-0.3,$Cols:2,$SlideOut:true,$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,x:0.3,$Rows:2,$During:{$Left:[0.3,0.7]},$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,x:-0.3,$Rows:2,$SlideOut:true,$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,x:0.3,y:0.3,$Cols:2,$Rows:2,$During:{$Left:[0.3,0.7],$Top:[0.3,0.7]},$ChessMode:{$Column:3,$Row:12},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,x:0.3,y:0.3,$Cols:2,$Rows:2,$During:{$Left:[0.3,0.7],$Top:[0.3,0.7]},$SlideOut:true,$ChessMode:{$Column:3,$Row:12},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,$Delay:20,$Clip:3,$Assembly:260,$Easing:{$Clip:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,$Delay:20,$Clip:3,$SlideOut:true,$Assembly:260,$Easing:{$Clip:$Jease$.$OutCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,$Delay:20,$Clip:12,$Assembly:260,$Easing:{$Clip:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
  {$Duration:1200,$Delay:20,$Clip:12,$SlideOut:true,$Assembly:260,$Easing:{$Clip:$Jease$.$OutCubic,$Opacity:$Jease$.$Linear},$Opacity:2}
];

var jssor_1_options = {
  $AutoPlay: true,
  $SlideshowOptions: {
    $Class: $JssorSlideshowRunner$,
    $Transitions: jssor_1_SlideshowTransitions,
    $TransitionsOrder: 1
  },
  $ArrowNavigatorOptions: {
    $Class: $JssorArrowNavigator$
  },
  $ThumbnailNavigatorOptions: {
    $Class: $JssorThumbnailNavigator$,
    $Cols: 10,
    $SpacingX: 8,
    $SpacingY: 8,
    $Align: 360
  }
};

var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

//responsive code begin
//you can remove responsive code if you don't want the slider scales while window resizing
function ScaleSlider() {
    var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
    if (refSize) {
        refSize = Math.min(refSize, 800);
        jssor_1_slider.$ScaleWidth(refSize);
    }
    else {
        window.setTimeout(ScaleSlider, 30);
    }
}
ScaleSlider();
$(window).bind("load", ScaleSlider);
$(window).bind("resize", ScaleSlider);
$(window).bind("orientationchange", ScaleSlider);
//responsive code end




    }

    

    </script>
    
    
    
         <style>
    
    	.jssora05l, .jssora05r {    display: block;  position: absolute;       width: 40px;  height: 40px;   cursor: pointer; overflow: hidden; }
        .jssora05l { background-position: -10px -40px; }
        .jssora05r { background-position: -70px -40px; }
        .jssora05l:hover { background-position: -130px -40px; }
        .jssora05r:hover { background-position: -190px -40px; }
        .jssora05l.jssora05ldn { background-position: -250px -40px; }
        .jssora05r.jssora05rdn { background-position: -310px -40px; }

        
        .jssort01 .p {  position: absolute;  top: 0;  left: 0; width: 72px;  height: 72px;}
        
        .jssort01 .t { position: absolute;   top: 0; left: 0; width: 100%; height: 100%; border: none;}
        
        .jssort01 .w {   position: absolute; top: 0px;   left: 0px;   width: 100%;    height: 100%;}
        
        .jssort01 .c {  position: absolute;    top: 0px;   left: 0px;   width: 68px;   height: 68px;   border: #000 2px solid;    box-sizing: content-box;  _background: none;}
        
        .jssort01 .pav .c {  top: 2px;_top: 0px; left: 2px;    _left: 0px;   width: 68px;   height: 68px; border: #000 0px solid;  _border: #fff 2px solid;  background-position: 50% 50%;}
        
        .jssort01 .p:hover .c {  top: 0px;   left: 0px;    width: 70px;    height: 70px;   border: #fff 1px solid;   background-position: 50% 50%; }
        
        .jssort01 .p.pdn .c {   background-position: 50% 50%;   width: 68px; height: 68px;  border: #000 2px solid;}
        
        * html .jssort01 .c, * html .jssort01 .pdn .c, * html .jssort01 .pav .c { width /**/: 72px;   height /**/: 72px;}
     
     
    
     div.body {
    position: relative;
    margin-top: 30px;
    left: 50px;
    margin-bottom: 50px;
    width: 900px;
    height: 200px;
    border : 1px solid black;
    
}

div.image {
    position: absolute;
    top: 25px;
    left: 25px;
    width: 150px;
    height: 150px;
	
}


div.image1 {
    position: relative;
    top: 25px;
    left: 25px;
    width: 700px;
    height: 500px;
	
}

div.image2 {
    position: relative;
    top: 25px;
    left: 25px;
    width: 700px;
    height: 500px;
	
}

div.image3 {
    position: relative;
    top: 25px;
    left: 25px;
    width: 700px;
    height: 500px;
	
}

div.image4 {
    position: relative;
    top: 25px;
    left: 25px;
    width: 700px;
    height: 500px;
	
}

div.moreDiscription  {
    position: relative;
    top: 25px;
    left: 25px;
    width: 500px;
    height: 200px;
	
}

div.location {
    position: relative;
    top: 25px;
    left: 25px;
    width: 500px;
    height: 500px;
	
}

div.header {
    position: absolute;
    top: 25px;
    left: 200px;
    width: 650px;
    height: 50px;
    color: red;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    font-size: 16px;
}

div.discription {
    position: absolute;
    top: 75px;
    left: 200px;
    width: 650px;
    height: 125px;
    
}


div.location {
    position: absolute;
    top: 10px;
    right: 10px;
    width: 150px;
    height: 150px;
    
}


div.viewMore {
    position: absolute;
    bottom: 10px;
    right: 10px;
    width: 150px;
    height: 25px;
    background-color:blue;
}

div.buyOnline {
    position: absolute;
    bottom: 10px;
    left: 25px;
    width: 150px;
    height: 25px;
    background-color:orange;
	
}   

div.imageSliding {    position: absolute;  top: 25px; left: 25px;   width: 600px;  height: 450px;}
div.contactDetails{  position: absolute;  top: 25px; right: 25px;   width: 300px;  height: 450px;}
div.mapLocation{  position: absolute;  top: 500px; right: 25px;   width: 600px;  height: 600px;}
div.description{  position: absolute;  top: 500px; left: 25px;   width: 300px;  height: 600px;}



div.viewMoreGrid{

	position: relative;
    top: 25px;
    left: 25px;
    width: 1100px;
    height: 1200px;
    


}


  
     </style>
     
	</head>
	
	<body>
   	<dev ui-view></dev>
    	</body>
  	
</html>
