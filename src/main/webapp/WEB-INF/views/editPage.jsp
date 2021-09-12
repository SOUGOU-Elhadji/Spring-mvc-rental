<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>

	<br>
	<div class="container col-md-6">
		<div class="card shadow p-3 mb-5 bg-body rounded">
			<div class="card-body">

			<form action="place-update" method="post">
				<c:if test="${podcast != null}">
					<input type="hidden" name="id" value="<c:out value='${place.id}' />" />
				</c:if>
				
				
				<div class="form-row">
				    <div class="form-group col-md-6">
				      <input type="hidden" value="<c:out value='${place.user }' />" name="user" class="form-control" id="inputEmail4" placeholder="City">
				    </div>
				   
				  </div>
				
				  <div class="form-row">
				    <div class="form-group col-md-6">
				      <label for="inputEmail4">City</label>
				      <input type="text" value="<c:out value='${place.city }' />" name="city" class="form-control" id="inputEmail4" placeholder="City">
				    </div>
				    <div class="form-group col-md-6">
				      <label for="inputPassword4">Country</label>
				      <select name="country" class="form-control">
			             <option disabled="" selected="">- country -</option>
			             <option value="Afghanistan"> Senegal </option>
			             <option value="Albania"> Mali </option>
			             <option value="...">...</option>
			          </select>
				    </div>
				  </div>
				  <div class="form-row">
				    <div class="form-group col-md-6">
				      <label for="inputEmail4">Accommodates</label>
				      <select value="<c:out value='${place.accommodates }' />" name="accommodates" class="form-control">
				             <option disabled="" selected="">- persons -</option>
				             <option>1 Person</option>
				             <option>2 Persons </option>
				             <option>3 Persons</option>
				             <option>4 Persons</option>
				             <option>5 Persons</option>
				             <option>6+ Persons</option>
	                  </select>
				    </div>
				    <div class="form-group col-md-6">
				      <label for="inputPassword4">Rent Price</label>
				      <input type="number" value="<c:out value='${place.rentPrice }' />" name="rentPrice" class="form-control" id="inputPassword4" placeholder="Password">
				    </div>
				  </div>
					<div class="form-row">
				    <div class="form-group col-md-6">
				    <label>Your place is good for</label>
	                <select value="<c:out value='${place.type }' />" name="type" class="form-control">
					    <option disabled="" selected="">- type -</option>
					    <option>Business</option>
					    <option>Vacation </option>
					    <option>Work</option>
			        </select>
			       </div>
				  <div class="form-group col-md-6">
				    <label for="inputAddress2">Type Place</label>
				    <select value="<c:out value='${place.typePlace }' />" name="typePlace" class="form-control">
					    <option disabled="" selected="">- type -</option>
					    <option>Home</option>
					    <option>Appartment </option>
			        </select></div>
				  </div>
				  </div>
				  <div class="form-row">
				    <div class="form-group col-md-4">
				      <label for="inputCity">Air Conditional</label>
				      <select value="<c:out value='${place.airConditional }' />" name="airConditional" id="inputState" class="form-control">
				        <option selected>Choose...</option>
				        <option>Yes</option>
				        <option>No</option>
				        <option>...</option>
				      </select>
				    </div>
				    <div class="form-group col-md-4">
				      <label for="inputState">Wifi</label>
				      <select value="<c:out value='${place.wifi }' />" name="wifi" id="inputState" class="form-control">
				        <option selected>Choose...</option>
				        <option>Yes</option>
				        <option>No</option>
				        <option>...</option>
				      </select>
				    </div>
				    <div class="form-group col-md-4">
				      <label for="inputZip">breakfast</label>
				      <select value="<c:out value='${place.breakfast }' />" name="breakfast" id="inputState" class="form-control">
				        <option selected>Choose...</option>
				        <option>Yes</option>
				        <option>No</option>
				        <option>...</option>
				      </select>
				    </div>
				  </div>
			  	<div class="form-group col-md-12">
			      <label for="inputCity">Description</label>
			      <input type="textarea" value="<c:out value='${place.description }' />" name="description" class="form-control" id="inputCity">
			    </div>
			  <button type="submit" class="btn btn-primary">SAVE</button>
			</form>
				
		</div>
	</div>



<%@ include file="../common/footer.jspf" %>	
