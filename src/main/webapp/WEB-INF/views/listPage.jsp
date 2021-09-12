<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>



<style>
body {
    background: #eee
}

.ratings i {
    font-size: 16px;
    color: red
}

.strike-text {
    color: red;
    text-decoration: line-through
}

.product-image {
    width: 100%
}

.dot {
    height: 7px;
    width: 7px;
    margin-left: 6px;
    margin-right: 6px;
    margin-top: 3px;
    background-color: blue;
    border-radius: 50%;
    display: inline-block
}

.spec-1 {
    color: #938787;
    font-size: 15px
}

h5 {
    font-weight: 400
}

.para {
    font-size: 16px
}
</style>

<div class="container py-4">
		<h4 class="h1 text-center" id="pageHeaderTitle">LIST OF PLACES</h4>
		<hr>
		<div class="container text-right">
			<a href="/add-place" class="btn btn-info" >ADD PLACE</a>
		</div>
	<c:forEach items="${places}" var="place">

<div class="container mt-5 mb-5">
    <div class="d-flex justify-content-center row">
        <div class="col-md-12">
            <div class="row p-2 bg-white border rounded">
                
                <div class="col-md-6 mt-1">
                    <h5><b>LOCATION | TYPE | FACILITIES | COMMENTS</b></h5>
                    <div class="d-flex flex-row">
                        <div class="ratings mr-2"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div><span></span>
                    </div>
                    <div class="mt-1 mb-1 spec-1" style="color:black"><span>CITY : <c:out value="${place.city }" />&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="dot"></span><span>COUNTRY : <c:out value="${place.country }" />&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="dot"></span><span>ACCOMMODATES : <c:out value="${place.accommodates }" /><br></span></div>
                    <div class="mt-1 mb-1 spec-1" style="color:black"><span>TYPE : <c:out value="${place.type }" />&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="dot"></span><span>TYPE PLACE : <c:out value="${place.typePlace }" />&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="dot"></span><span>AIR CONDITIONAL : <c:out value="${place.airConditional }" /><br></span></div>
                    <div class="mt-1 mb-1 spec-1" style="color:black"><span>WIFI : <c:out value="${place.wifi }" />&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="dot"></span><span>BREAKFAST : <c:out value="${place.breakfast }" />&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="dot"></span><br></div>
                    
                    </div>
                <div class="align-items-center align-content-center col-md-3 border-left mt-1">
                    <p class="text-justify text-truncate para mb-0">DESCRIPTION : <br><c:out value="${place.description }" /></p>
                </div>
                <div class="align-items-center align-content-center col-md-3 border-left mt-1">
                    <div class="d-flex flex-row align-items-center">
                        <h4 class="mr-1">Rente Price : <c:out value="${place.rentPrice }" /></h4>
                    </div>
                    
                    <div class="d-flex flex-column mt-4"><button class="btn btn-primary btn-sm" type="button"><a href="place-update?id=<c:out value='${place.id}' />"><font color="white">Edit</font></a></button>
                    <button class="btn btn-outline-danger btn-sm mt-2" type="button"><a href="delete-place?id=<c:out value='${place.id}' />">Delete</a></button></div>
                </div>
            </div>
           
        </div>
    </div>
</div>
</c:forEach>
</div>

<%@ include file="../common/footer.jspf" %>	


