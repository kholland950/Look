<%-- 
    Document   : index
    Created on : Mar 19, 2015, 11:43:40 AM
    Author     : kevinholland
--%>

<%@page import="com.look.RecentFeed"%>
<!DOCTYPE html>
<html class="html">
 <head>

  <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
  <meta name="generator" content="7.0.314.244"/>
  <title>Home</title>
  <!-- CSS -->
  <link rel="stylesheet" type="text/css" href="css/site_global.css?417434784"/>
  <link rel="stylesheet" type="text/css" href="css/master_a-master.css?377472291"/>
  <link rel="stylesheet" type="text/css" href="css/index.css?485589862" id="pagesheet"/>
  <!-- Other scripts -->
  <script type="text/javascript">
   document.documentElement.className += ' js';
</script>
   </head>
 <body>

  <div class="clearfix" id="page"><!-- column -->
   <div class="position_content" id="page_position_content">
    <div class="browser_width colelem" id="u186"><!-- group -->
     <div class="clearfix" id="u186_align_to_page">
      <a class="nonblock nontext MuseLinkActive clearfix grpelem" id="u192-6" href="index.html"><!-- content --><p id="u192-2">Look!</p><p>A new way to upload, share, and view images online</p></a>
     </div>
    </div>
    <div class="clearfix colelem" id="pmenuu194"><!-- group -->
     <ul class="MenuBar clearfix grpelem" id="menuu194"><!-- horizontal box -->
      <li class="MenuItemContainer clearfix grpelem" id="u398"><!-- vertical box -->
       <a class="nonblock nontext MenuItem MenuItemWithSubMenu clearfix colelem" id="u399" href="index.jsp"><!-- horizontal box --><div class="MenuItemLabel NoWrap clearfix grpelem" id="u401-4"><!-- content --><p>Feed</p></div></a>
      </li>
     </ul>
     <ul class="MenuBar clearfix grpelem" id="menuu280"><!-- horizontal box -->
      <li class="MenuItemContainer clearfix grpelem" id="u351"><!-- vertical box -->
       <a class="nonblock nontext MenuItem MenuItemWithSubMenu clearfix colelem" id="u352" href="images.html"><!-- horizontal box --><div class="MenuItemLabel NoWrap clearfix grpelem" id="u354-4"><!-- content --><p>Images</p></div></a>
      </li>
     </ul>
     <div class="grpelem" id="u692"><!-- custom html -->
      <!DOCTYPE html>
<html>
<head>
<title>Search Box Example 1</title>
<meta name="ROBOTS" content="NOINDEX, NOFOLLOW" />
<!-- CSS styles for standard search box -->
<style type="text/css">
	#tfheader{
		background-color:##ffffff;
	}
	#tfnewsearch{
		float:center;
		padding:5px;
                            height:45px
	}
	.tftextinput{
		margin: 0;
		padding: 5px 5px;
		font-family: Arial, Helvetica, sans-serif;
		font-size:14px;
		border:1px solid #000000; border-right:0px;
		border-top-left-radius: 5px 5px;
		border-bottom-left-radius: 5px 5px;
	}
	.tfbutton {
		margin: 0;
		padding: 5px 5px;
		font-family: Arial, Helvetica, sans-serif;
		font-size:14px;
		outline: none;
		cursor: pointer;
		text-align: center;
		text-decoration: none;
		color: #ffffff;
		border: solid 1px #000000; border-right:0px;
		background: ##ffffff;
		background: -webkit-gradient(linear, left top, left bottom, from(#000000), to(#000000));
		background: -moz-linear-gradient(top,  ##ffffff,  ##ffffff);
		border-top-right-radius: 5px 5px;
		border-bottom-right-radius: 5px 5px;
	}
	.tfbutton:hover {
		text-decoration: none;
		background: #007ead;
		background: -webkit-gradient(linear, left top, left bottom, from(#595656), to(#595656));
		background: -moz-linear-gradient(top,  #595656,  #595656);
	}
	/* Fixes submit button height problem in Firefox */
	.tfbutton::-moz-focus-inner {
	  border: 0;
	}
	.tfclear{
		clear:both;
	}
</style>
</head>
<body>
	<!-- HTML for SEARCH BAR -->
	<div id="tfheader">
		<form id="tfnewsearch" method="get" action="http://www.google.com">
		        <input type="text" class="tftextinput" name="q" size="21" maxlength="120"><input type="submit" value="search" class="tfbutton">
		</form>
	<div class="tfclear"></div>
	</div>
</body>
</html>

<%
    RecentFeed rf = new RecentFeed();
    out.println(rf.outputRecentFeed());
%>

</div>
     <ul class="MenuBar clearfix grpelem" id="menuu432"><!-- horizontal box -->
      <li class="MenuItemContainer clearfix grpelem" id="u452"><!-- vertical box -->
       <a class="nonblock nontext MenuItem MenuItemWithSubMenu clearfix colelem" id="u453" href="log-in.html"><!-- horizontal box --><div class="MenuItemLabel NoWrap clearfix grpelem" id="u455-4"><!-- content --><p>Log In</p></div></a>
      </li>
     </ul>
     <ul class="MenuBar clearfix grpelem" id="menuu405"><!-- horizontal box -->
      <li class="MenuItemContainer clearfix grpelem" id="u425"><!-- vertical box -->
       <a class="nonblock nontext MenuItem MenuItemWithSubMenu clearfix colelem" id="u426" href="create-an-account.html"><!-- horizontal box --><div class="MenuItemLabel NoWrap clearfix grpelem" id="u428-4"><!-- content --><p>Create An Account</p></div></a>
      </li>
     </ul>
    </div>
    <div class="verticalspacer"></div>
    <div class="browser_width colelem" id="u191"><!-- simple frame --></div>
   </div>
  </div>
    
  <!-- JS includes -->
  <script type="text/javascript">
   if (document.location.protocol != 'https:') document.write('\x3Cscript src="http://musecdn.businesscatalyst.com/scripts/4.0/jquery-1.8.3.min.js" type="text/javascript">\x3C/script>');
</script>
  <script type="text/javascript">
   window.jQuery || document.write('\x3Cscript src="scripts/jquery-1.8.3.min.js" type="text/javascript">\x3C/script>');
</script>
  <script src="scripts/museutils.js?3865766194" type="text/javascript"></script>
  <script src="scripts/jquery.tobrowserwidth.js?3842421675" type="text/javascript"></script>
  <script src="scripts/jquery.musemenu.js?3788803530" type="text/javascript"></script>
  <script src="scripts/jquery.watch.js?4068933136" type="text/javascript"></script>
  <!-- Other scripts -->
  <script type="text/javascript">
   $(document).ready(function() { try {
Muse.Utils.transformMarkupToFixBrowserProblemsPreInit();/* body */
$('.browser_width').toBrowserWidth();/* browser width elements */
Muse.Utils.prepHyperlinks(true);/* body */
Muse.Utils.initWidget('.MenuBar', function(elem) { return $(elem).museMenu(); });/* unifiedNavBar */
Muse.Utils.fullPage('#page');/* 100% height page */
Muse.Utils.showWidgetsWhenReady();/* body */
Muse.Utils.transformMarkupToFixBrowserProblems();/* body */
} catch(e) { Muse.Assert.fail('Error calling selector function:' + e); }});
</script>
   </body>
</html>
