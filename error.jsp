<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld"%>
<stripes:layout-render name="/layout/default.jsp" useContainerDiv="${true}" pageTitle="Error" pageTab="" pageClass="">
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <stripes:layout-component name="main_content">
        <h3>An Error Occurred</h3>
        <p>We're sorry, but the IFTDSS web site is having an issue completing your last request.</p>

        <div style="display: none;">
            <pre>
                ${stackMessage}
                <c:forEach items="${stackTrace}" var="item">${item}
                </c:forEach>
            </pre>
        </div>
    </stripes:layout-component>
    <stripes:layout-component name="js_component"><%--no JS needed on page currently--%></stripes:layout-component>
</stripes:layout-render>