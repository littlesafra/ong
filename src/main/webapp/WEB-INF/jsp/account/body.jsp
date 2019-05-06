 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security"	uri="http://www.springframework.org/security/tags"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
 <!-- big-banner-area start -->
        <div class="big-banner-area text-center">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="big-banner-descs">
                            <h1 class="big-b-title">My Account</h1>
                            <a href="index-2.html">Home page</a>
                            <span>My Account</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- big-banner-area end -->
        <!-- my-account-area start -->
        <div class="my-account-area single-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="my-acc-login">
                                    <div class="title-heading">Login</div>
                                    <form action="#">
                                        <p>
                                            <label>
                                                Username or email address:
                                                <span class="required">*</span>
                                            </label>
                                            <input class="my-inptsd" type="text" placeholder="Username or Email">
                                        </p>
                                        <p>
                                            <label>
                                                Password: 
                                                <span class="required">*</span>
                                            </label>
                                            <input class="my-inptsd" type="password" placeholder="Password">
                                        </p>
                                        <div class="wd-login-left">
                                            <p class="form-rememberme">
                                            <label class="inline">
                                            <input id="rememberme" type="checkbox" value="forever" name="rememberme">
                                            Remember me
                                            </label>
                                            </p>
                                            <p class="lost_password">
                                            <a href="#">Lost your password?</a>
                                            </p>
                                        </div>
                                        <div class="my-acc-lgin-btn">
                                            <input type="submit" value="Login">
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="my-acc-login">
                                    <div class="title-heading">register</div>
                                    <form action="#">
                                        <p>
                                            <label>
                                                email 
                                                <span class="required">*</span>
                                            </label>
                                            <input class="my-inptsd" type="text">
                                        </p>
                                        <p>
                                            <label>
                                                Password: 
                                                <span class="required">*</span>
                                            </label>
                                            <input class="my-inptsd" type="password">
                                        </p>
                                        <div class="my-acc-lgin-btn">
                                            <input type="submit" value="register">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                        <div class="my-acc-menu">
                            <h3>Account</h3>
                            <div class="acc-menu-content">
                                <ul>
                                    <li><a href="#">Login</a></li>
                                    <li><a href="#">Register</a></li>
                                    <li><a href="#">Forgotten Password</a></li>
                                    <li><a href="#">Wishlist</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>