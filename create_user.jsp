<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld"%>
<stripes:layout-render name="/layout/default.jsp" pageTab="Home" pageClass="home">
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <stripes:layout-component name="main_content">
        <div class="container create-account">
            <div class="">
                <h1>Sign Up</h1>
                <div class="actions"></div>
            </div>
            <p>
                <i class="fa fa-envelope-o"></i> To receive an access code please email
                <a href="mailto:IFTDSS.help@gmail.com?subject=IFTDSS Access Code Request">IFTDSS.help@gmail.com</a>.

            </p>
            <div class="content">
                <stripes:form beanclass="com.sti.iftdss.landing.web.RequestAccountActionBean" method="POST" focus="">
                    <div class="form span-14">
                        <stripes:errors globalErrorsOnly="true">
                            <div class="formInput">
                                <div class="error"><stripes:individual-error/></div>
                                <br class="clear" />
                            </div>
                        </stripes:errors>

                        <div class="formInput">
                            <div class="span-8">
                                <label for="accessCode">Access Code</label><br />
                                <stripes:password name="accessCode" id="accessCode" class="form-control" />
                            </div>
                            <stripes:errors field="accessCode">
                                <div class="error span-6"><stripes:individual-error/></div>
                            </stripes:errors>
                        </div>

                        <div class="form-group">
                            <label for="firstName">First Name</label>
                            <div>
                                <stripes:text name="firstName" id="firstName"  class="form-control" />
                            </div>

                            <stripes:errors field="firstName">
                                <div class="error clear span-6"><stripes:individual-error/></div>
                            </stripes:errors>
                        </div>
                        <div class="formInput">
                            <label class="" for="lastName">Last Name</label>
                            <div class="span-4">
                                <stripes:text name="lastName" id="lastName"  class="form-control" />
                            </div>

                            <stripes:errors field="lastName">
                                <div class="error clear span-6"><stripes:individual-error/></div>
                            </stripes:errors>
                        </div>
                            
                        <div class="formInput">     
                            <label for="username">Username</label><br />
                            <stripes:text name="username" id="username"  class="form-control" />
                            <stripes:errors field="username">
                                <div class="error clear span-6"><stripes:individual-error/></div>
                            </stripes:errors>
                        </div>
                            
                        <div class="formInput">
                            <label for="password">Password</label><br />
                            <stripes:password id="password" name="password" class="form-control" />
                            <stripes:errors field="password">
                                <div class="error clear span-6"><stripes:individual-error/></div>
                            </stripes:errors>
                        </div>
                            
                        <div class="formInput">
                            <label for="confirmPassword">Confirm Password</label><br />
                            <stripes:password name="confirmPassword" id="confirmPassword"  class="form-control" />
                            <stripes:errors field="confirmPassword">
                                <div class="error clear span-6"><stripes:individual-error/></div>
                            </stripes:errors>
                        </div>
                    </div>
                            
                    <stripes:submit name="submitRequest" class="btn btn-success" value="Request Account"/>
                </stripes:form>
            </div>
        </div>
    </stripes:layout-component>
</stripes:layout-render>


