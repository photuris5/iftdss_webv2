<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- login form -->
<c:choose>
    <c:when test="${!empty actionBean.context.hideLogin && actionBean.context.hideLogin}">
        <%-- do nothing --%>
    </c:when>
    <c:otherwise>
        <h2>Sign In</h2>
        <form id="loginForm" action="login" method="POST" focus="first">

                <div class="formInput">
                    <!--[if lt IE 10]><label for="username">Username</label><![endif]-->
                    <input type="text" id="username" name="username" class="form-control" placeholder="Username" />
                    <span id="usernameErrMsg" style="display:none;margin-bottom:0;"></span>
                </div>

                <div class="formInput">
                    <!--[if lt IE 10]><label for="password">Password</label><![endif]-->
                    <input type="password" id="password" name="password" class="form-control" placeholder="Password" />
                    <span id="passwordErrMsg" style="display:none;margin-bottom:0;"></span>
                </div>

                <div>



                </div>

            <table border="0">
                <tr vertical-align="inherit">
                    <td>
                        <div class="formInput">
                            <div class="btn-group">
                                <button type="submit" id="submitLoginForm" class="btn btn-success">Go</button>
                            </div>
                            <div class="btn-group">&nbsp;
                                <a href="/requestAccount">Create Account</a>&nbsp;<span class="separator">·</span>&nbsp;<a href="/iftdss/passwordreset">Forget Password?</a>
                            </div>
                            <div id="authErrMsg" style="display:none;margin-bottom:0;margin-top:10px;"></div>
                        </div>
                    </td>
                </tr>
            </table>

        </form>


        <div id="authErrMsg" style="display:none;margin-bottom:0;margin-top:10px;"></div>

        <br>

        <span style="font-size:12px;">
        Projects, data, model runs, and outputs will <strong>NOT</strong> be transferred to the new IFTDSS! in 2017. Please backup your work locally. We will keep eveyone posted on the plan to phase out 2.0 beta as development proceeds.
        </span>

        <hr>

        <span style="font-size:18px;color:#4D5934;font-weight:bold">
        <a href="https://www.frames.gov/partner-sites/iftdss/iftdss-home/">Click HERE for more information</a>
        </span>
        <hr>
        <span style="font-size:18px;color:#4D5934;font-weight:bold">
        <a href="/documentation/Content/Resources/PDFs/IFTDSS_FAQs_042916.pdf">IFTDSS FAQs</a>
        </span>
        <hr>
        <span style="font-size:18px;color:#4D5934;font-weight:bold">
        <a href="https://www.frames.gov/files/8314/4769/5412/IFTDSS_WorkshopAFE2015.pdf">AFE 2015 IFTDSS Workshop Tutorials</a>
        </span>

    </c:otherwise>
</c:choose>
