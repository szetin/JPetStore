<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="stripes"
           uri="http://stripes.sourceforge.net/stripes.tld" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link rel="StyleSheet" href="../css/jpetstore.css" type="text/css"
          media="screen"/>
    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.4.2/pure-min.css">

    <meta name="generator"
          content="HTML Tidy for Linux/x86 (vers 1st November 2002), see www.w3.org"/>
    <title>JPetStore Demo</title>
    <meta content="text/html; charset=windows-1252"
          http-equiv="Content-Type"/>
    <meta http-equiv="Cache-Control" content="max-age=0"/>
    <meta http-equiv="Cache-Control" content="no-cache"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="Expires" content="Tue, 01 Jan 1980 1:00:00 GMT"/>
    <meta http-equiv="Pragma" content="no-cache"/>
</head>

<body>

<div id="Header">

    <div id="Logo">
        <div id="LogoContent"><a href="../mvc/Catalog.action">
            <img src="../images/logo-topbar.gif"/>
        </a></div>
    </div>

    <div id="Menu">
        <div id="MenuContent">
            <stripes:link
                    beanclass="org.mybatis.jpetstore.web.actions.CartActionBean"
                    event="viewCart">
                <img align="middle" name="img_cart" src="../images/cart.gif"/>
            </stripes:link>
            <img align="middle" src="../images/separator.gif"/>
            <c:if test="${sessionScope.accountBean == null}">
                <stripes:link
                        beanclass="org.mybatis.jpetstore.web.actions.AccountActionBean"
                        event="signonForm">
                    Sign In
                </stripes:link>
            </c:if> <c:if test="${sessionScope.accountBean != null}">
            <c:if test="${!sessionScope.accountBean.authenticated}">
                <stripes:link
                        beanclass="org.mybatis.jpetstore.web.actions.AccountActionBean"
                        event="signonForm">
                    Sign In
                </stripes:link>
            </c:if>
        </c:if> <c:if test="${sessionScope.accountBean != null}">
            <c:if test="${sessionScope.accountBean.authenticated}">
                <stripes:link
                        beanclass="org.mybatis.jpetstore.web.actions.AccountActionBean"
                        event="signoff">
                    Sign Out
                </stripes:link>
                <img align="middle" src="../images/separator.gif"/>
                <stripes:link
                        beanclass="org.mybatis.jpetstore.web.actions.AccountActionBean"
                        event="editAccountForm">
                    My Account
                </stripes:link>
            </c:if>
        </c:if> <img align="middle" src="../images/separator.gif"/> <a
                href="../help.html">?</a></div>
    </div>

    <div id="Search">
        <div id="SearchContent"><stripes:form
                beanclass="org.mybatis.jpetstore.web.actions.CatalogActionBean">
            <stripes:text name="keyword" size="14"/>
            <stripes:submit name="searchProducts" value="Search"/>
        </stripes:form></div>
    </div>

    <div id="QuickLinks">
        <a href="?viewCategory=&categoryId=FISH">
            <img src="../images/sm_fish.gif"/>
        </a>
        <img src="../images/separator.gif"/>
        <a href="?viewCategory=&categoryId=DOGS">
            <img src="../images/sm_dogs.gif"/>
        </a>
        <img src="../images/separator.gif"/>
        <a href="?viewCategory=&categoryId=REPTILES">
            <img src="../images/sm_reptiles.gif"/>
        </a>
        <img src="../images/separator.gif"/>
        <a href="?viewCategory=&categoryId=CATS">
            <img src="../images/sm_cats.gif"/>
        </a>
        <img src="../images/separator.gif"/>
        <a href="?viewCategory=&categoryId=BIRDS"><img src="../images/sm_birds.gif"/></a>
    </div>

</div>

<div id="Content">
<stripes:messages/>