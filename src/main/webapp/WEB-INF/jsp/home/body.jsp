 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security"	uri="http://www.springframework.org/security/tags"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 

      
    	
        <!-- slider-area start -->
        <div class="slider-area">
            <div class="bend niceties preview-2">
                <div id="ensign-nivoslider" class="slides"> 
                    <img src="${pageContext.request.contextPath}/resources/img/slider/slide1.jpg" alt="" title="#slider-direction-1"  />
                    <img src="${pageContext.request.contextPath}/resources/img/slider/slide2.jpg" alt="" title="#slider-direction-2"  />
                    <img src="${pageContext.request.contextPath}/resources/img/slider/slide3.jpg" alt="" title="#slider-direction-3"  />
                </div>
                <!-- direction 1 -->
                <div id="slider-direction-1" class="t-cn slider-direction slider-one">
                    <div class="container slider-space">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="slider-content-1 hidden-xs text-center">
                                    <div class="layer-1-1 wow fadeInDownBig" data-wow-duration="0.6s" data-wow-delay="0s">
                                        <img src="${pageContext.request.contextPath}/resources/img/slider/caption1_slider1.png" alt="">
                                    </div>
                                    <div class="layer-1-2 wow slideInLeft" data-wow-duration="0.3s" data-wow-delay="0.5s">
                                        <img src="${pageContext.request.contextPath}/resources/img/slider/caption2_slider1.png" alt="">
                                    </div>
                                    <div class="layer-1-3 wow slideInRight" data-wow-duration="0.3s" data-wow-delay="0.3s">
                                        <img src="${pageContext.request.contextPath}/resources/img/slider/caption3_slider1.png" alt="">
                                    </div>
                                    <div class="layer-1-4 wow bounceInUp" data-wow-duration="0.6s" data-wow-delay="1.0s">
                                        <a href="#" class="stat"><img src="${pageContext.request.contextPath}/resources/img/slider/button_slider_tur.jpg" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- direction 2 -->
                <div id="slider-direction-2" class="slider-direction slider-two">
                    <div class="container slider-space">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="slider-content-2 hidden-xs">
                                    <div class="layer-2-1 wow fadeInDown" data-wow-duration="0.3s" data-wow-delay="0s">
                                        <img src="${pageContext.request.contextPath}/resources/img/slider/caption1_slider2.png" alt="">
                                    </div>
                                    <div class="layer-2-2 wow flipInX" data-wow-duration="0.8s" data-wow-delay="0.3s">
                                        <img src="${pageContext.request.contextPath}/resources/img/slider/caption2_slider2.png" alt="">
                                    </div>
                                    <div class="layer-2-3 wow bounceInUp" data-wow-duration="0.6s" data-wow-delay="1.1s">
                                        <a class="stat" href="#"><img src="${pageContext.request.contextPath}/resources/img/slider/button_slider_tur.jpg" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- direction 3 -->
                <div id="slider-direction-3" class="slider-direction slider-three">
                   <div class="container slider-space">
                       <div class="row">
                           <div class="col-lg-12">
                               <div class="slider-content-3 hidden-xs text-right">
                                   <div class="layer-3-1 wow fadeInLeftBig" data-wow-duration="0.7s" data-wow-delay="0s">
                                       <img src="${pageContext.request.contextPath}/resources/img/slider/caption1_slider3.png" alt="">
                                   </div>
                                   <div class="layer-3-2 wow bounceInRight" data-wow-duration="0.2s" data-wow-delay="0.7s">
                                       <img src="${pageContext.request.contextPath}/resources/img/slider/caption2_slider3.png" alt="">
                                   </div>
                                   <div class="layer-3-3 wow bounceInUp" data-wow-duration="0.6s" data-wow-delay="0.9s">
                                       <a class="stat" href="#"><img src="${pageContext.request.contextPath}/resources/img/slider/button_slider_tur.jpg" alt=""></a>
                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
                </div>
            </div>
        </div>
        <!-- slider-area end -->
       
        <!-- who-are-we-area -->
        <section class="who-are-we-area text-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="who-are-we-txt">
                            <h2 class="section-title-black"><strong>Who are we?</strong></h2>
                            <p>Storytelling vaccine; John Lennon, participatory monitoring crowdsourcing, visionary improving quality, transformative <br>  positive social change. Human experience catalyst, healthcare technology.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- who-are-we-area end -->
        <!-- who-are-we-img-area start -->
        <div class="who-are-we-img-area"></div>
        <!-- who-are-we-img-area end -->
        <!-- cause-list-area start -->
        <section class="cause-list-area cause-list-area-green">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <h2 class="section-title-white text-center">Cause list</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="single-cause-list">
                            <div class="single-cause-img img-hvr-effect">
                                <a class="venobox" data-gall="myGallery" href="${pageContext.request.contextPath}/resources/img/child-img/pr1.jpg"><img src="${pageContext.request.contextPath}/resources/img/child-img/x010.jpg" alt="image alt"/></a>
                            </div>
                            <div class="cause-lists-desc">
                                <div class="cause-list-desig text-center">
                                    <div class="cause-desig-title">
                                        <h3><a href="#">Stop Syriaâs Hunger</a></h3>
                                    </div>
                                    <div class="cause-desig-title-desc">
                                        <p>Necessities local solutions cause, hack; human rights treatment Action Against Hunger generosity UNICEF change movements</p>
                                    </div>
                                    <div class="cause-dnt">
                                        <a href="#">Donate Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
					
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="single-cause-list">
                            <div class="single-cause-img img-hvr-effect">
                                <a class="venobox" data-gall="myGallery" href="${pageContext.request.contextPath}/resources/img/child-img/pr1.jpg"><img src="${pageContext.request.contextPath}/resources/img/child-img/x010.jpg" alt="image alt"/></a>
                            </div>
                            <div class="cause-lists-desc">
                                <div class="cause-list-desig text-center">
                                    <div class="cause-desig-title">
                                        <h3><a href="#">Stop Syriaâs Hunger</a></h3>
                                    </div>
                                    <div class="cause-desig-title-desc">
                                        <p>Necessities local solutions cause, hack; human rights treatment Action Against Hunger generosity UNICEF change movements</p>
                                    </div>
                                    <div class="cause-dnt">
                                        <a href="#">Donate Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
					
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="single-cause-list">
                            <div class="single-cause-img img-hvr-effect">
                                <a class="venobox" data-gall="myGallery" href="${pageContext.request.contextPath}/resources/img/child-img/pr1.jpg"><img src="${pageContext.request.contextPath}/resources/img/child-img/x010.jpg" alt="image alt"/></a>
                            </div>
                            <div class="cause-lists-desc">
                                <div class="cause-list-desig text-center">
                                    <div class="cause-desig-title">
                                        <h3><a href="#">Stop Syriaâs Hunger</a></h3>
                                    </div>
                                    <div class="cause-desig-title-desc">
                                        <p>Necessities local solutions cause, hack; human rights treatment Action Against Hunger generosity UNICEF change movements</p>
                                    </div>
                                    <div class="cause-dnt">
                                        <a href="#">Donate Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
					                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="single-cause-list">
                            <div class="single-cause-img img-hvr-effect">
                                <a class="venobox" data-gall="myGallery" href="${pageContext.request.contextPath}/resources/img/child-img/pr2.jpg"><img src="${pageContext.request.contextPath}/resources/img/child-img/x004.jpg" alt="image alt"/></a>
                            </div>
                            <div class="cause-lists-desc">                         
                                <div class="cause-list-desig text-center">
                                    <div class="cause-desig-title">
                                        <h3><a href="#">Help 100 children for</a></h3>
                                    </div>
                                    <div class="cause-desig-title-desc">
                                        <p>Necessities local solutions cause, hack; human rights treatment Action Against Hunger generosity UNICEF change movements</p>
                                    </div>
                                    <div class="cause-dnt">
                                        <a href="#">Donate Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="single-cause-list">
                            <div class="single-cause-img img-hvr-effect">
                                <a class="venobox" data-gall="myGallery" href="${pageContext.request.contextPath}/resources/img/child-img/pr2.jpg"><img src="${pageContext.request.contextPath}/resources/img/child-img/x004.jpg" alt="image alt"/></a>
                            </div>
                            <div class="cause-lists-desc">                         
                                <div class="cause-list-desig text-center">
                                    <div class="cause-desig-title">
                                        <h3><a href="#">Help 100 children for</a></h3>
                                    </div>
                                    <div class="cause-desig-title-desc">
                                        <p>Necessities local solutions cause, hack; human rights treatment Action Against Hunger generosity UNICEF change movements</p>
                                    </div>
                                    <div class="cause-dnt">
                                        <a href="#">Donate Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="single-cause-list">
                            <div class="single-cause-img img-hvr-effect">
                                <a class="venobox" data-gall="myGallery" href="${pageContext.request.contextPath}/resources/img/child-img/pr3.jpg"><img src="${pageContext.request.contextPath}/resources/img/child-img/x007.jpg" alt="image alt"/></a>
                            </div>
                            <div class="cause-lists-desc">
                                <div class="cause-list-desig text-center">
                                    <div class="cause-desig-title">
                                        <h3><a href="#">Save Africaâs Children</a></h3>
                                    </div>
                                    <div class="cause-desig-title-desc">
                                        <p>Necessities local solutions cause, hack; human rights treatment Action Against Hunger generosity UNICEF change movements</p>
                                    </div>
                                    <div class="cause-dnt">
                                        <a href="#">Donate Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- cause-list-area end -->


        <!-- how-can-help-us-area start -->
        <section class="how-can-help-us-area how-can-help-us-area-green section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="hw-can-hlp-txt">
                            <h2 class="section-title-black text-center">How can you help us?</h2>
                        </div>
                    </div>
                </div>
                <div class="row help-us-mt">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="single-help-us">
                            <div class="help-icon-circle">
                                <i class="fa fa-heartbeat"></i>
                            </div>
                            <div class="single-help-descs">
                                <h4>Donate</h4>
                                <p>Ford Foundation; vulnerable citizens; storytelling life-savingleverage inclusive mobilize. Jane Addams.</p>
                            </div>
                        </div>
                        <div class="single-help-us">
                            <div class="help-icon-circle">
                                <i class="fa fa-usd"></i>
                            </div>
                            <div class="single-help-descs">
                                <h4>Fundraise</h4>
                                <p>Small-scale farmers, inspire social change eq life-savingleverage inclusive mobilize. Jane Addams.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="single-help-us">
                            <div class="help-icon-circle">
                                <i class="fa fa-user-plus"></i>
                            </div>
                            <div class="single-help-descs">
                                <h4>Participate</h4>
                                <p>Forward-thinking gender equality urban resourceful social challenges human rights rural generosity.</p>
                            </div>
                        </div>
                        <div class="single-help-us">
                            <div class="help-icon-circle">
                                <i class="fa fa-credit-card"></i>
                            </div>
                            <div class="single-help-descs">
                                <h4>Contribute</h4>
                                <p>Vulnerable citizens; storytelling Small-scale farmers life-savingleverage inclusive mobilize. Jane Addams.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- how-can-help-us-area end -->
    
   

        <!-- contact-us-area start -->
        <section class="contact-us-area contact-us-area-green section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <h2 class="section-title-white text-center">Contact us</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="contact-addrss">
                            <ul>
                                <li>
                                    <div class="adrs-icon">
                                        <i class="fa fa-home"></i>
                                    </div>
                                    <div class="my-adrs-ic">
                                        <h3>Address</h3>
                                        <p>123 Kingsland Rd. Bighouse London</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="adrs-icon">
                                        <i class="fa fa-phone"></i>
                                    </div>
                                    <div class="my-adrs-ic">
                                        <h3>Phone Number</h3>
                                        <p>+8801681715926</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="adrs-icon">
                                        <i class="fa fa-envelope"></i>
                                    </div>
                                    <div class="my-adrs-ic">
                                        <h3>Email</h3>
                                        <p>admin@bootexperts.com</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="cntct-frm">
                            <form action="#">
                                <input type="text" placeholder="Name:">
                                <input type="text" placeholder="Email:">
                                <input type="text" placeholder="Subject:">
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="cntct-form-txtarea">
                            <textarea cols="40" rows="10" placeholder="Message:"></textarea>
                            <input type="submit" value="Send">
                        </div>
                    </div>
                </div>
                <div class="volunteer-area">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="vounteer-img">
                                <img src="${pageContext.request.contextPath}/resources/img/line_footer.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="volunteer-descs text-center">
                                <h3><strong>We Need You!</strong></h3>
                                <h2><strong>Become Volunteer</strong></h2>
                                <p>Plumpyânut, disruptor legal aid; respect, best practices; economic independence crisis
                                <br>
                                situation focus on impact institutions</p>
                                <a href="#" class="button button3">Apply now</a>
                            </div>
                        </div>   
                    </div>
                </div>
            </div>
        </section>
<script src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-2.8.3.min.js"></script>
         <script src="${pageContext.request.contextPath}/resources/js/vendor/jquery-1.12.0.min.js"></script>
        <!-- bootstrap js -->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
        <!-- owl.carousel js -->
        <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
        <!-- jquery-ui js -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
        <!-- wow js -->
        <script src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
        <!-- venobox js -->
        <script src="${pageContext.request.contextPath}/resources/js/venobox.min.js"></script>
        <!-- mixitup js -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.mixitup.js"></script>   
        <!-- elevateZoom js -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.elevateZoom-3.0.8.min.js"></script>
        <!-- nivo-slider js -->
        <script src="${pageContext.request.contextPath}/resources/lib/js/jquery.nivo.slider.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/lib/home.js" type="text/javascript"></script>   
        <!-- meanmenu js -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.meanmenu.js"></script>
        <!-- plugins js -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
        <!-- main js -->
        <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
