<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="style.css">
  </head>

  <body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
      <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">CarShowRoom</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="index.jsp"
                >Home</a
              >
            </li>
            <li class="nav-item"><a class="nav-link" href="#">Link</a></li>
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Dropdown
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><hr class="dropdown-divider" /></li>
                <li>
                  <a class="dropdown-item" href="#">Something else here</a>
                </li>
              </ul>
            </li>
            <li class="nav-item"><a class="nav-link disabled">Disabled</a></li>
          </ul>
          <form class="d-flex" role="search">
            <button
              id="resister"
              class="btn btn-outline-danger margin-right"
              onclick="register(); return false;" type="button"
            >
              Register
            </button>
            <button class="btn btn-outline-success" type="submit">
              Log In
            </button>
          </form>
        </div>
      </div>
    </nav>

    <div id="main"></div>
    
      
  <%
    	String fname = request.getParameter("fname");
    	String lname = request.getParameter("lname");
    	String mob = request.getParameter("mob");
    	String email = request.getParameter("email");
    	String uid = request.getParameter("uid");
    	String pass = request.getParameter("pass");
    	if(fname!=null && lname!=null && mob!=null && email!=null && uid!=null && pass!=null){
    		Connection con = null;
    		PreparedStatement pstmt = null;
  	    	try{
  	    		Class.forName("com.mysql.cj.jdbc.Driver");
  	    		con = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Dishant@2002");
  	    		pstmt = con.prepareStatement("insert into carwalep.resister(FNAME,LNAME,CONTACT_NO,EMAIL_ADD,ID,PASSWORD,DATE_TIME) values(?,?,?,?,?,?,?)");
  	    		pstmt.setString(1,fname);
  	    		pstmt.setString(2,lname);
  	    		pstmt.setString(3,mob);
  	    		pstmt.setString(4,email);
  	    		pstmt.setString(5,uid);
  	    		pstmt.setString(6,pass);
  	    		pstmt.setString(7,String.valueOf(new Date()));
  	    		
  	    		pstmt.execute();
  	    	}
  	    	catch(Exception e){
  	    		e.printStackTrace();
  	    	}
    	}
    %>
    
    <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
    crossorigin="anonymous"
    ></script>

    <script src="script.js"></script>
  </body>
</html>
