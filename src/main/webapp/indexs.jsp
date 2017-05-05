<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WebBased RecruitMent System </title>
 <link href = "css/menu.css" rel = "stylesheet" />
       
        <!---------company-profiles/Jquery------------->
        <script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
	    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	    <!--<style type="text/css" src="css/comProfile.css"></style>-->
<script>
	$(document).ready(function () {

		// transition effect
		style = 'easeOutQuart';

		// if the mouse hover the image
		$('.photo').hover(
			function() {
				//display heading and caption
				$(this).children('div:first').stop(false,true).animate({top:0},{duration:200, easing: style});
				$(this).children('div:last').stop(false,true).animate({bottom:0},{duration:200, easing: style});
			},

			function() {
				//hide heading and caption
				$(this).children('div:first').stop(false,true).animate({top:-50},{duration:200, easing: style});
				$(this).children('div:last').stop(false,true).animate({bottom:-50},{duration:200, easing: style});
			}
		);

	});
	</script>
<!---------company-profiles/Jquery------------->

<!---------company-profiles/CSS------------->
    <style>

	section {
		width:31%;
		float:left;
		padding:5px;
        /*padding-left:10px;*/
        margin-left:18px;
        background-color:darkgrey;
       
	}

    div.com-info {
        width:100%;
        margin:auto;
        background:#f0f0f0;
        
    }
	
	.photo {
		position:relative;
		font-family:arial;	
		overflow:hidden;
		border:5px solid #000;
		width:350px;
		height:233px;
	}	
	
		.photo .heading, .photo .caption {
			position:absolute;
			background:#000;
			height:50px;
			width:350px;
			opacity:0.6;
		}
		
		.photo .heading { 
			top:-50px;
		}

		.photo .caption { 		
			bottom:-50px;		
			left:0px;
		}
		
		.photo .heading span {
			color:#26c3e5;	
			top:-50px;
			font-weight:bold;
			display:block;
			padding:5px 0 0 10px;
		}
		
		.photo .caption span{
			color:#999;	
			font-size:9px;
			display:block;
			padding:5px 10px 0 10px;
		}
		
	</style>

</head>


<body>


         <div id="wrap">
       
    <header>

        <div class="inner relative">

          <!--<a class="logo"><img src="T.png" width="200" height="80"/></a>-->

             <img src="images/02.png" width="220" height="60" class="logo" /> 
            
            <a id="menu-toggle" class="button dark" href="#"><i class="icon-reorder"></i></a>
                
                <!--<h2 class="top">Web Based Recruitment System</h2>-->
            <nav id="navigation">
                <ul id="main-menu">

                  <!--   <li class="current-menu-item"><a href="#">Home</a></li>
                    <li class="parent">
                       <a href="#">About Us</a>
                        <li><a href = "#">Home</a><li>
                        <li><a href = "#">About Us</a><li>
                        <li><a href = "#">Contact us</a><li> -->
                    </li>

                    <li class="parent">
                        <a href="#">Jobs</a>

                        <ul class="sub-menu">
                            <li><a href="#">All jobs</a></li>
                            <li><a href="#">IT jobs</a></li>
                            <li><a href="#">Government jobs</a></li>
                            <li><a href="#">Skills jobs</a></li>
                           <!-- <li><a href="Suites.aspx"></a></li> -->
                        </ul>
                    </li>
                    
                    <li class="parent">
                        <li><a href="#">JobSeeker</a>
                        <ul class="sub-menu">
                            <li><a href="/Hello/Emp/register">Register Now</a></li>
                            <li><a href="#">Search jobs</a></li>
                            <li><a href="/Hello/Emp/weblogin">Login</a></li>
                            <li><a href="#">Create job Alert</a></li>
                           <!-- <li><a href="Suites.aspx"></a></li> -->
                        </ul>
                    </li>

                    <li class="parent">
                        <li><a href="#">Employer</a>
                        <ul class="sub-menu">
                            <li><a href="/Hello/Emp/empregister">Register Now</a></li>
                            <li><a href="/Hello/Emp/emplogin">Login</a></li>
                            <li><a href="#">Post jobs</a></li>
                            <li><a href="#">View jobs</a></li>
                           <!--  <li><a href="#"></a></li>
                           <li><a href="Suites.aspx"></a></li> -->
                        </ul>
                    </li>
                  
                  <li><a href="#">Reports</a></li>
                   <li><a href="Admin.html">Admin</a></li>
                 <li><a href="contactUs.html">Contact Us</a></li>
                
                </ul>
            </nav>
            <div class="clear"></div>

        </div>
    </header>
</div>
<div id="slide"><img src = "images/eCampus_Banner.jpg"></div>

<div class="social">
        <ul>
            <li><a href="https://www.facebook.com/" class ="icon-facebook"><img src="social/f.png" id="fb" /></a></li>
            <li><a href="https://twitter.com/" class ="icon-twitter"><img src="social/t.png" /></a></li>
            <li><a href="https://plus.google.com/" class ="icon-googleplus"><img src="social/g.png" /></a></li>
            <li><a href="https://www.pinterest.com/" class ="icon-printerest"><img src="social/p.png" /></a></li>
            <li><a href="https://mail.google.com/"class ="icon-mail"><img src="social/m.png" /></a></li>
        </ul>        
    </div>
<!---------company-profiles------------->
<div class = "com-info">
 
 <section>
     <div class="photo"></div>
        <img src="com.img/Deloitte.jpg" width="360" height="238" alt="" />
        <div class="heading"><span>Deloitte</span></div>
        <div class="caption"><span>A Angad for photographing distant objects; it is designed in a compact manner so that the distance from the front of the lens to the film plane is less than the focal length of the lens. </span></div>
</section>

<section>
    <div class="photo"></div>
        <div class="heading"><span>Infosys</span></div>
        <img src="com.img/infosy.jpg" width="360" height="238" alt="" />
        
        <div class="caption"><span>A lens for photographing distant objects; it is designed in a compact manner so that the distance from the front of the lens to the film plane is less than the focal length of the lens. </span></div>
</section>

<section>
    <div class="photo"></div>
        <img src="com.img/IBM.jpg" width="360" height="238" alt="" />-->
        <div class="heading"><span>IBM</span></div>
        <div class="caption"><span>A lens for photographing distant objects; it is designed in a compact manner so that the distance from the front of the lens to the film plane is less than the focal length of the lens. </span></div>

    <div class="photo"></div>
        <img src="com.img/atmecs.jpeg" width="360" height="238" alt="Atmecs" />
        <div class="heading"><span>Atmecs</span></div>
        <div class="caption"><span>ATMECS provides Product Engineering, QA Automation, Cloud Infrastructure, Data and Market Research services. We are also investing in extensive research in Cloud, Big Data and Automation related services. </span></div>

</section>
</div>
<!---------company-profiles------------->



<footer class = "down-info">
<section>
    <div class="section-left">
        <ul>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Terms n Condition</a></li>
            <li><a href="#">Privacy n Policy</a></li>
            <li><a href="#">Career with Us</a></li>
            <!--<li><a href="#">Sitemap</a></li>-->
            <li><a href="#">Contact Us</a></li>
        </ul>
<!--
        <ul>
            <li><a href="#">Jobs</a></li>
            <li><a href="#">Browse All Jobs</a></li>
            <li><a href="#">IT Jobs</a></li>
            <li><a href="#">Government Jobs</a></li>
            <li><a href="#">Skills Jobs</a></li>
            <li><a href="#">Functional Jobs</a></li>
        </ul>

        <ul>
            <li><a href="#">JobSeeker</a></li>
            <li><a href="#">Register Now</a></li>
            <li><a href="#">Search Jobs</a></li>
            <li><a href="#">Login</a></li>
            <li><a href="#">Create job Alert</a></li>
            <li><a href="#">Blogs</a></li>
            
        </ul>

        <ul>
            <li><a href="#">JobSeeker</a></li>
            <li><a href="#">Register Now</a></li>
            <li><a href="#">Search Jobs</a></li>
            <li><a href="#">Login</a></li>
            <li><a href="#">Create job Alert</a></li>
            <li><a href="#">Blogs</a></li>
            
        </ul>-->

    </div>

    <div class="section-left">
        <ul>
            <li><a href="#">Jobs</a></li>
            <li><a href="#">Browse All Jobs</a></li>
            <li><a href="#">IT Jobs</a></li>
            <li><a href="#">Government Jobs</a></li>
            <li><a href="#">Skills Jobs</a></li>
            <li><a href="#">Functional Jobs</a></li>
        </ul>
    </div>

     <div class="section-left">
        <ul>
            <li><a href="#">JobSeeker</a></li>
            <li><a href="/Hello/Emp/register">Register Now</a></li>
            <li><a href="#">Search Jobs</a></li>
            <!--<li><a href="#">Login</a></li> -->
            <li><a href="#">Create job Alert</a></li>
            <li><a href="#">Blogs</a></li>
            
        </ul>
     </div>
     <div class="section-left">
        <ul>
            <li><a href="#">Employer</a></li>
            <li><a href="/Hello/Emp/empregister">Register Now</a></li>
            <li><a href="#">Search Jobs</a></li>
            <!--<li><a href="#">Login</a></li> -->
            <li><a href="#">Post Jobs</a></li>
            <li><a href="#">View Jobs</a></li>
            
        </ul>
    </div>
</section>
    </footer>



</body>
</html>