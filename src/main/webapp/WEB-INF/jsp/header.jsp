<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security"	uri="http://www.springframework.org/security/tags"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

        <header class="header-area">
        <div class="header-top hidden-xs">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-sm-4">
                           
                        </div>
                        <div class="col-lg-8 col-md-8 col-sm-8">
                            <div class="account-login">
                                <div class="accounts-login accounts-login-green">
                                    <a href="../account"><span>My Account</span></a>
                                    
                                </div>
                            </div>
                            <div class="contacts-top">
                                <div class="contacts-supports contacts-supports-green">
                                    <span class="spprt-phone">
                                        <i class="fa fa-phone"></i>
                                        01973833508
                                    </span>
                                    <span class="support-email support-email-green">
                                        <i class="fa fa-envelope"></i>
                                        admin@bootexperts.com
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom" id="sticker">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3">
                            <div class="logo">
                                <a href="index-2.html"><img src="${pageContext.request.contextPath}/resources/img/logo/logo_turquoise.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 hidden-xs">
                            <div class="main-menu">
                                <nav>
                                    <ul class="greens-menu">
                                        <li><a href="index.html">Inicio</a></li>
                                        <li><a href="wishlist.html">Distribuciones</a></li>
                                        <li><a href="blog.html">Blog</a></li>
                                        <li class="parent">
                                            <a href="#">Pages</a>
                                            <div class="mega-menu">
                                                <span>
                                                    <a class="mm-title" href="#">page set 1</a>
                                                    <a href="shopping-cart.html">Cart</a>
                                                    <a href="shop-leftsidebar.html">Shop left sidebar</a>
                                                    <a href="shop-rightsidebar.html">Shop right sidebar</a>
                                                    <a href="shop-list.html">Shop list</a>
                                                    <a href="shop-fullwidth.html">Shop fullwidth</a>
                                                </span>
                                                <span>
                                                    <a class="mm-title" href="#">page set 2</a>
                                                    <a href="blog-details.html">Blog details</a>
                                                    <a href="checkout.html">Checkout</a>
                                                    <a href="contact-us.html">Contact us</a>
                                                    <a href="gallery.html">Gallery</a>
                                                    <a href="my-account.html">My account</a>
                                                </span>
                                                <span>
                                                    <a class="mm-title" href="#">page set 3</a>
                                                    <a href="services.html">Services</a>
                                                    <a href="single-product.html">Single product</a>
                                                    <a href="team-member.html">Team member</a>
                                                    <a href="wishlist.html">Wishlist</a>
                                                    <a href="404.html">404</a>
                                                </span>
                                            </div>
                                        </li>  
                                        <li><a href="#"><span class="donate-tdy donate-tdy-green">Donate Today!</span></a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="mobile-menu-area mobile-menu-area-green visible-xs">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mobile-menu">
							<nav id="dropdown">
								<ul>
									<li><a href="index.html">Home</a>
									</li>
									<li><a href="causes.html">Causes</a></li>
									<li><a href="portfolio.html">Portfolio</a></li>
									<li><a href="blog.html">Blog</a></li>
									<li><a href="#">Pages</a>
										<ul>
											<li>
												<a href="#">page set 1</a>
												<ul>
													<li><a href="shopping-cart.html">Cart</a></li>
													<li><a href="shop-leftsidebar.html">Shop left sidebar</a></li>
													<li><a href="shop-rightsidebar.html">Shop right sidebar</a></li>
													<li><a href="shop-list.html">Shop list</a></li>
													<li><a href="shop-fullwidth.html">Shop fullwidth</a></li>
												</ul>
											</li>
											<li>
												<a href="#">page set 2</a>
												<ul>
													<li><a href="blog-details.html">Blog details</a></li>
													<li><a href="checkout.html">Checkout</a></li>
													<li><a href="contact-us.html">Contact us</a></li>
													<li><a href="gallery.html">Gallery</a></li>
													<li><a href="my-account.html">My account</a></li>
												</ul>
											</li>
											<li>
												<a href="#">page set 3</a>
												<ul>
													<li><a href="services.html">Services</a></li>
													<li><a href="single-product.html">Single product</a></li>
													<li><a href="team-member.html">Team member</a></li>
													<li><a href="wishlist.html">Wishlist</a></li>
													<li><a href="404.html">404</a></li>
												</ul>
											</li>
										</ul>
									</li>
								</ul>
							</nav>
						</div>					
					</div>
				</div>
			</div>
		</div>
		