<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

	ga('create', 'UA-80508583-1', 'auto');
	ga('send', 'pageview');
</script>

<div  ng-controller="HttpGetController">


<div class="fullPageViewMoreMobiles">


 <ul>
		 		<li ng-repeat="category in ctgController.categories">


<div class ="viewMoreShortDetails">

 <h1>{{category.header}}</h1>
          							  <br>  
          							  <h2><b>Mobile  : {{category.mobile}}</b></h2>
          							  <br>
          							  
          							  <h2><b>Email  :{{category.email}} </b></h2>

</div>
<div class ="viewMoreImages">
<div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 600px; height: 450px; overflow: hidden; visibility: hidden; background-color: #24262e;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            </div>
        <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 450px; overflow: hidden;">
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="/DailyNet/myResources/{{category.image}}" />
    
            </div>
            <div data-p="144.50" style="display: none;">
                <img data-u="image" src="/DailyNet/myResources/{{category.otherImages[0]}}" />
                </div>
    
        <div data-p="144.50" style="display: none;">
                <img data-u="image" src="/DailyNet/myResources/{{category.otherImages[1]}}" />
             </div>

        <div data-p="144.50" style="display: none;">
                <img data-u="image" src="/DailyNet/myResources/{{category.otherImages[2]}}" />
             </div>

        
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora05l" style="top:0px;left:8px;width:1px;height:1px;"></span>
        <span data-u="arrowright" class="jssora05r" style="top:0px;right:8px;width:1px;height:1px;"></span>
        
</div>
<div class ="viewMoreDescription">

<h3> {{category.moreDescription}} </h3>   
</div>
<div class ="viewMoreMap" ng-init="showme(category.dlat,category.dlan)">

 <div id="map" style=" width:960px; height:900px" ></div>  
</div>

</li>

</ul>

</div>

</div>





