<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
<style>
header{
  margin-top: 80px;
    padding-top: 56px;
    padding-bottom: 38px;
    transition: 0.5s;
}
header nav{
    font-family: Roboto;
    font-size: 24px;
}
header nav .navbar-nav{
    width: 98%;
}
.menuContainer{
    margin-top: -114px;
}
header nav .navbar-nav li>.nav-link{
    padding: 32px 19px !important;
}
header .navbar-light .navbar-nav .active > .nav-link{
    color: #fff;
}
header .navbar-light .navbar-nav .nav-link{
    color: #313131;
    position: relative;
    z-index: 4;
}
header .navbar-light .navbar-nav .nav-link::before{
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    height: 11px;
    z-index: -1;
    transition: 0.2s linear;
}
header{
    --firstNavColor: #07458d;
    --secNavColor: #ed3541;
    --thirdNavColor: #435599;
    --fourthNavColor: #b9c9d9;
    --fiveNavColor: #f1b949;
    --sixNavColor: #07458d;
    --sevenNavColor: #b1dff5;
}
header .navbar-light .navbar-nav .nav-item{
    z-index: 4;
    position: relative;
}
header .navbar-light .navbar-nav .nav-item.active:nth-child(1) > .nav-link,
header .navbar-light .navbar-nav .nav-item:nth-child(1)>.nav-link::before{
    background-color: var(--firstNavColor);
}
header .navbar-light .navbar-nav .nav-item:nth-child(1):hover .nav-link::before,
header .navbar-light .navbar-nav .nav-item:nth-child(1):hover .nav-link{
    color: #fff;
    height: 100%;
}
header .navbar-light .navbar-nav .nav-item.active:nth-child(2) > .nav-link,
header .navbar-light .navbar-nav .nav-item:nth-child(2)>.nav-link::before{
    background-color: var(--secNavColor);
}
header .navbar-light .navbar-nav .nav-item:nth-child(2):hover .nav-link::before,
header .navbar-light .navbar-nav .nav-item:nth-child(2):hover .nav-link{
    color: #fff;
    height: 100%;
}
header .navbar-light .navbar-nav .nav-item.active:nth-child(3) > .nav-link,
header .navbar-light .navbar-nav .nav-item:nth-child(3)>.nav-link::before{
    background-color: var(--thirdNavColor);
}
header .navbar-light .navbar-nav .nav-item:nth-child(3):hover .nav-link::before,
header .navbar-light .navbar-nav .nav-item:nth-child(3):hover .nav-link{
    color: #fff;
    height: 100%;
}
header .navbar-light .navbar-nav .nav-item.active:nth-child(4) > .nav-link,
header .navbar-light .navbar-nav .nav-item:nth-child(4)>.nav-link::before{
    background-color: var(--fourthNavColor);
}
header .navbar-light .navbar-nav .nav-item:nth-child(4):hover .nav-link::before,
header .navbar-light .navbar-nav .nav-item:nth-child(4):hover .nav-link{
    color: #fff;
    height: 100%;
}
header .navbar-light .navbar-nav .nav-item.active:nth-child(5) > .nav-link,
header .navbar-light .navbar-nav .nav-item:nth-child(5)>.nav-link::before{
    background-color: var(--fiveNavColor);
}
header .navbar-light .navbar-nav .nav-item:nth-child(5):hover .nav-link::before,
header .navbar-light .navbar-nav .nav-item:nth-child(5):hover .nav-link{
    color: #fff;
    height: 100%;
}
header .navbar-light .navbar-nav .nav-item.active:nth-child(6) > .nav-link,
header .navbar-light .navbar-nav .nav-item:nth-child(6)>.nav-link::before{
    background-color: var(--sixNavColor);
}
header .navbar-light .navbar-nav .nav-item:nth-child(6):hover .nav-link::before,
header .navbar-light .navbar-nav .nav-item:nth-child(6):hover .nav-link{
    color: #fff;
    height: 100%;
}
header .navbar-light .navbar-nav .nav-item.active:nth-child(7) > .nav-link,
header .navbar-light .navbar-nav .nav-item:nth-child(7)>.nav-link::before{
    background-color: var(--sevenNavColor);
}
header .navbar-light .navbar-nav .nav-item:nth-child(7):hover .nav-link::before,
header .navbar-light .navbar-nav .nav-item:nth-child(7):hover .nav-link{
    color: #fff;
    height: 100%;
}
header.fixed-top{
    padding-bottom: 0;
}
header.fixed-top .navbar-brand > img{
    width: 104px;
}
header.fixed-top .menuContainer{
    margin-top: -58px;
}
/* dropdown design */

header .navbar-light .navbar-nav .nav-item.dd:hover .nav-link::after{
    content: '';
    position: absolute;
    top: 100%;
    left: 0;
    right: 0;
    bottom: -38px;
    background-color: var(--thirdNavColor);
}

.dropdownMenu{
    display: none;
    position: absolute;
    left: 0;
    top: auto;
    font-family: ApercuPro-Regular;
    color: #004f6d;
    background-color: #fff;
    border-radius: 0 0 10px 10px;
    width: 162%;
    font-size: 23px;
    margin-top: 38px;
}
.dropdownMenu a{
    padding-left: 25px;
}
.dropdownMenu::before{
    content: '';
    position: absolute;
    top: -8%;
    left: 50%;
    width: 29px;
    height: 29px;
    background-color: #fff;
    border-radius: 5px;
    z-index: 4;
    transform: rotate(45deg) translate(-50%,50%);
}
.dropdownMenu>li{
    padding: 10px 0;
    border-radius: 0 0 10px 10px;
    background-color: #fff;
    position: relative;
    z-index: 4;
}

.dropdownMenu>li:hover{
    background-color: #f7f7f9;
}
header .navbar-light .navbar-nav .nav-item.dd:hover .dropdownMenu{
    display: block;
}
/* ending dropdown */

</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</head>
<body>
<header class="container-fluid bg-white">
	
	<div class="container px-0 menuContainer">
		<nav class="navbar navbar-expand-xl navbar-light align-items-end p-xl-0">
			<a class="navbar-brand d-none" href="index.html">
				<img src="https://runyoursite.in/wp-content/uploads/2020/02/runyoursite-logo.png" width="180px" class="img-fluid">
			</a>

			<a href="#mobileMenu" id="mobileBar" class="d-none ml-auto"> <i class="fa fa-bars"></i></a>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ml-md-auto justify-content-end" id="nav">
					<li class="nav-item active">
						<a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">About <span class="sr-only">(About Us)</span></a>
					</li>
					<li class="nav-item dd">
						<a class="nav-link" href="#">Student Operations <span class="sr-only">(Programs)</span></a>
						<ul class="list-unstyled dropdownMenu">
							<li>
								<a href="studentform">Add Student</a>
							</li>
							<li>
								<a href="viewstudent">View Student</a>
							</li>
						</ul>
					</li>
					
					
					<li class="nav-item dd">
						<a class="nav-link" href="/Student">SingOut <span class="sr-only">(Photo Gallery)</span></a>
					</li>
					<li class="nav-item ">
						<a class="nav-link" href="#">Contact Us <span class="sr-only">(Contact Us)</span></a>
					</li>						
				</ul>
			</div>
		</nav>
	</div>

</header>
<pre><h4>                                      Hello ${msg }</h4></pre>



</body>
</html>