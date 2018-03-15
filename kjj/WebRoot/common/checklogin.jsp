<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty user}">
<c:redirect url="user?status=login"></c:redirect>
</c:if>
