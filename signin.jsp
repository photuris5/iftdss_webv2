<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld"%>
<stripes:layout-render name="/layout/default.jsp" pageTab="Home" pageClass="home">
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <stripes:layout-component name="main_content">
    <div class="container create-account">
      <jsp:include page="login.jsp"/>
      </div>
  </stripes:layout-component>
</stripes:layout-render>
