<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- login form -->
<div class="panel full">
    <div class="panel-header">
        <h3>Log In</h3>
    </div>
    <div class="content">

        <stripes:form beanclass="com.sti.iftdss.landing.web.ResetPasswordActionBean" method="POST" focus="first">
            <table>
                <stripes:errors>
                    <stripes:errors-header><tr><td>&nbsp;</td></tr></stripes:errors-header>
                    <tr><td><span style="color: #b72222"><stripes:individual-error/></span></td></tr>
                    <stripes:errors-footer><tr><td>&nbsp;</td></tr></stripes:errors-footer>
                </stripes:errors>
                <tr>
                    <td><label for="resetPwdAuth">Reset Password Authorization code:</label></td>
                    <td><stripes:password id="resetPwdAuth" name="resetPwdAuth" /></td>
                </tr>
                <tr>
                    <td>Username of user to reset password for:</td>
                    <td><stripes:text id="username" name="username"/></td>
                </tr>
                <tr>
                    <td>New password:</td>
                    <td><stripes:password id="password" name="password"/></td>
                </tr>
                <tr>
                    <td>Verify new password:</td>
                    <td><stripes:password id="passwordVerify" name="passwordVerify"/></td>
                </tr>
            </table>
            <stripes:submit id="login" name="pwdReset" value="Reset Password"/><br/>
        </stripes:form>
    </div>
</div>