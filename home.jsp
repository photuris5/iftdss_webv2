<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<stripes:layout-render name="/layout/home.jsp" pageTitle="Home" pageTab="home" pageClass="welcome">
    <stripes:layout-component name="main_content">
        <div class="row-fluid">
            <c:choose>
                <c:when test="${param.loginFormOnly == '1' || param.loginformonly == '1'}">
                    <div class="login-only">
                        <div style="margin: 0 auto;">
                            <jsp:include page="login.jsp"/>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="tier1 container-fluid" style="padding-top:20px;">
                        <div class="container" style="margin:0 auto">
                            <div class="col-lg-8 col-md-8"> <!-- style="text-align:center;"> -->
                                <div style="margin: 0 auto;max-width:700px;">
                                    <img src="/images/icons/caution_sm.png">
                                    <h4 style="color:#800000;margin-bottom:0;">Please excuse any bugs and quirks as we upgrade IFTDSS. Report any new defects or bugs to our <a href="mailto:IFTDSS.help@gmail.com?subject=IFTDSS%20Feedback">Feedback email.</a></h4>
                                    <h1 style="color:#788a51;margin-bottom:0;">Welcome to IFTDSS</h1>
                                    <h3 style="margin-top:10px;">The Interagency Fuels Treatment Decision Support System</h3>
                                    <p style="font-size:16px;line-height:24px;margin:0 auto;font-family:'Helvetica Neue Light', 'Helvetica Neue', Arial, sans-serif;">
                                        IFTDSS is a web-based software and data integration framework that
                                        organizes previously existing and newly developed fire and fuels software applications
                                        to make fuels treatment planning and analysis more efficient and effective.
                                    </p>
                                </div>

                                <div class="col-md-12 nopadding" style="text-align: center;font-size:16px;margin: 20px 0px">
                                    <a href="${pageContext.request.contextPath}/requestAccount" style="display:inline-block;text-decoration: none;margin-right:15px;">
                                        <img src="${pageContext.request.contextPath}/images/icons/account.png" style="display: inline-block" />
                                        <span style="display:inline-block">Request<br />Account</span>
                                    </a>

                                    <a target="MCWebHelp" href="/documentation/IFTDSS_Help.htm" style="display:inline-block;text-decoration: none;margin-right:15px;">
                                        <img src="${pageContext.request.contextPath}/images/icons/help_big.png" style="display: inline-block;" />
                                        <span style="display:inline-block;">Online<br />Help</span>
                                    </a>
                                    <a href="${pageContext.request.contextPath}/iftdss/feedback" style="display:inline-block;text-decoration: none;margin-right:15px;">
                                        <img src="${pageContext.request.contextPath}/images/icons/feedback.png" style="display: inline-block;" />
                                        <span style="display:inline-block">Submit<br />Feedback</span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                <jsp:include page="login.jsp"/>
                            </div>
                        </div>
                    </div>
                    <hr style="width:80%" />
                    <div class="tier2 container-fluid" style="margin:0 auto;padding-bottom:40px;">
                        <div class="container">
                            <div class="col-lg-4 col-md-6" style="padding-top:20px;">
                                <h2>IFTDSS Can Help You...</h2>
                                <div style="padding-top:10px;">
                                    <a target="MCWebHelp" href="/documentation/IFTDSS_Help_CSH.htm#04-Prescribed-Burns/RxBurnsIntro.htm" style="text-decoration:none;font-size:18px;">
                                        <img src="${pageContext.request.contextPath}/images/icons/help_big.png" style="width:72px;padding-left:5px;" />
                                        <span>Develop a Burn Plan</span>
                                    </a>
                                </div>
                                <div style="padding-top:10px;font-size:18px;">
                                    <a href="/documentation/IFTDSS_Help_CSH.htm#06-Risk-Assessment/RiskAssessIntro.htm" style="text-decoration:none">
                                        <img src="${pageContext.request.contextPath}/images/icons/risk_assessment.png" style="padding-left:5px;" />
                                        <span>Conduct a Risk Assessment</span>
                                    </a>
                                </div>
                                <div style="padding-top:10px;font-size:18px;">
                                    <a href="/documentation/IFTDSS_Help_CSH.htm#10-Reference/RefFireBehavior.htm" style="text-decoration:none">
                                        <img src="${pageContext.request.contextPath}/images/icons/fire_behavior.png" style="width:72px;padding-left:5px;" />
                                        <span>Model Fire Behavior</span>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6" style="padding-top:20px;">
                                <h2>Learn More</h2>
                                    <div id="iftVideoWrapper">
                                        <a id="startVideo" href="#"><img src="${actionBean.contextPath}/images/Video_Intro_Image_20.jpg" style="width:350px" /></a>
                                    </div>
                            </div>
                            <div class="col-lg-4 col-md-6" style="line-height:30px;padding-top:20px;">
                                <h2>What's New in 2.0.1</h2>
                                <ul style="font-size:18px;">
                                    <li>Shapefile Upload</li>
                                    <li>Landscape Hazard Analysis Tutorial</li>
                                    <li>Risk Assessment Tutorials</li>
                                    <li>Improved Mapping Tools</li>
                                    <li>2014 Interagency Burn Plan Template</li>
                                    <li>Landscape File Download</li>
                                    <li>Minimum Travel Time Tutorial</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="quotes container-fluid">
                        <div class="container" style="margin:0 auto">
                            <div class="col-lg-4 col-md-6">
                                <i class="fa fa-quote-left fa-3x"></i>
                                <blockquote>
                                    <p>IFTDSS didn’t reinvent any of the fire management tools. It just combined the best components of the tools that are out there right now and made them more accessible for the end users.</p>
                                    <footer>Jen Croft<br />Fire Management Officer<br />Tonasket Ranger District<br />Okanogan-Wenatchee National Forest</footer>
                                </blockquote>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <i class="fa fa-quote-left fa-3x"></i>
                                <blockquote>
                                    <p>IFTDSS is organized around workflows - recipes for
                                        common tasks that suggest the best tools to use for
                                        each step of the job. IFTDSS offers six workflows so
                                        far: data acquisition and editing, hazard analysis, risk
                                        assessment, fuels treatment, vegetation analysis, and
                                        prescribed burn planning.
                                    </p>
                                    <footer>Fire Science Digest October 2014</footer>
                                </blockquote>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <i class="fa fa-quote-left fa-3x"></i>
                                <blockquote>
                                    <p>IFTDSS allows for improving the management of fuels
                                        treatment through its data management and its
                                        incorporation of scientific models.
                                    </p>
                                    <footer>Carnegie Mellon University’s Software Engineering Institute</footer>
                                </blockquote>
                            </div>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </stripes:layout-component>
    <stripes:layout-component name="js_includes">
            <script type="text/javascript" src="${actionBean.contextPath}/js/HomePageController.js?revision=1"></script>
    </stripes:layout-component>
</stripes:layout-render>
