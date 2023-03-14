<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<form action="index.jsp" method="post">
  <div class="input-group">
    <span class="input-group-text">First and last name</span>
    <input type="text" aria-label="First name" class="form-control" name="fname">
    <input type="text" aria-label="Last name" class="form-control" name="lname">
  </div>
  
  <div class="mb-3">
    <label for="mob" class="form-label">Contact Number</label>
    <input type="number" class="form-control" id="mob" name="mob"/>
  </div>

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email"/>
    <div id="emailHelp" class="form-text">
      We'll never share your email with anyone else.
    </div>
  </div>
  
  <div class="mb-3">
    <label for="uid" class="form-label">User Id</label>
    <input type="text" class="form-control" id="uid" name="uid"/>
  </div>

  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="pass"/>
  </div>

  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1" onclick="showPass()"/>
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>

  <button type="submit" class="btn btn-primary">Submit</button>
  
</form>
