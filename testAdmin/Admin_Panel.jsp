<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
         <!-- SEO -->
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="canonical" href="ProgrammingOnlineTest" />
<meta name="robots" content="index, follow"/>
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="author" content="ProgrammingOnlineTest">
 <title>Admim home</title>

 <title>ProgrammingOnlineTest:online programming test free</title>

<base href="ProgrammingOnlineTest.com" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="canonical" href="ProgrammingOnlineTest" />
<meta name="robots" content="index, follow"/>
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="author" content="ProgrammingOnlineTest">
 
  <!-- Bootstrap Core CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"/>
    
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
     <!-- /Bootstrap Core CSS -->
     
      
        
         <style>
             body {
             background-color:#FFFAFA;
                  }
            .navbar {
             padding-top: 2% ;
             padding-bottom: 2%;
             height: auto; 
                  }
            hr { background-color: black; 
                 height: 2px; 
                 border: 2px; 
            }
   
         .page-header { 
             border-bottom:none; 
         }
         
         
         #customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
   border-color: black;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
   
    background-color: #008080;
    color: white;
    border-color: black;

}
        </style>
         </head>
         <body>
   
     <!-- Nav -->
    
                   <div class="container">
      <nav class="navbar navbar-inverse">
       <div class="container-fluid">
        <div class="navbar-header">
     
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
        </button>
             <a class="brand" href="/homePage">
            <img class="img-responsive" src="/imagedata/p3.png"  height="165px" width="165px"alt="">
            </a>
           </div>
           <div class="collapse navbar-collapse" id="myNavbar">
           <ul class="nav navbar-nav">
           <li class="active">
           <a href="/homePage">
           <span class="glyphicon glyphicon-home"></span>Home Page</a>
           </li>
           <li><a href="/testHomePage">Programming Test</a></li>
           <li><a href="/questionStratHome">InterView Question</a></li>
           <li class="dropdown">
           <a class="dropdown-toggle" data-toggle="dropdown" href="#">Other Option<span class="caret"></span></a>
           <ul class="dropdown-menu">
           <li><a href="/Extra/programming_Book.jsp">Programming Book</a></li>
           <li><a href="/Extra/top_tutorial_Site.jsp">Top tutorial Site</a></li>
           <li><a href="/Extra/about_us.jsp">About us</a></li>
           </ul>
           </li>
           </ul>
        
          
           <ul class="nav navbar-nav navbar-right">
           <li><form class="navbar-form navbar-right" action="/serachTest">
           <div class="input-group">
           <input type="text" name="testName" placeholder="search only test" class="form-control">
           <span class="input-group-btn">
           <button class="btn btn-default" type="submit">Go</button>
           </span>
           </div>
           </form>
           </li>
              <%
                 String s1=request.getParameter("email");
               %>
               
               <li><a href="/LogoutServlet"><span class="glyphicon glyphicon-log-in">
                       </span> Logout</a></li>
                       <br><br><b style="color:#008080;margin-left: 150px">ADMIN NAME=<%=s1%></b>
           </ul>
           </div>
          </div>
          </nav>
          </div>
     
            <div class="container">
            <div class="container-fluid">
            <div class="row" style="background-color:#ADDFFF">
               <div class="col-lg-12">  
                   <center>
                       <h2>
                    <span style="color:green"><%=(request.getAttribute("errMessage") == null) ? ""
                             : request.getAttribute("errMessage")%></span>
                       </h2>
                   </center>
                     <center>
                   <h2>List of test</h2>
                       </center>
            <h3><p>Create new test to click add new test Button......</p></h3>
            <h4><a class="btn btn-primary btn-rounded btn-sm my-0" href="/testAdmin/AddTest.jsp?email=<%=s1%>">Add New Test</a></h4>
      <hr>
            
        <div style="overflow-x:auto;">
           <table class="table table-striped" id="customers">
           <thead>
      <tr>
        <th>SR NO</th>
        <th>test Name</th>
        <th>ADD Series</th>
        <th>Read Series</th>
        <th>Edit series</th>
        <th>delete series</th>
      </tr>
    </thead>
    
    <tbody>
        <c:forEach items="${listBook}" var="question">
    <tr>
          
        <td><c:set var="count" value="${count + 1}" scope="page"/><c:out value="${count}"/></td>
        <td><c:out value="${question.testName}"/></td>
        
        <td>
         <a  class="btn btn-primary btn-rounded btn-sm my-0" href="/addTestSeries?email=<%=s1%>&testName=<c:out value="${question.testName}"/>"><b> ADD New test Series </b></a>&nbsp
       </td>
       <td>
       <a  class="btn btn-primary btn-rounded btn-sm my-0" href="/testSeries?email=<%=s1%>&testName=<c:out value="${question.testName}"/>"><b>&nbsp Read Test &nbsp </b></a>&nbsp
       </td>
       <td>
            <a  class="btn btn-primary btn-rounded btn-sm my-0" href="/edithome?email=<%=s1%>&testName=<c:out value="${question.testName}"/>"><b>&nbsp Edit Test &nbsp<b> </b></a>&nbsp 
       </td>
       <td>
            <a  class="btn btn-primary btn-rounded btn-sm my-0" href="/deleteQuesServlet?email=<%=s1%>&testName=<c:out value="${question.testName}"/>"><b>&nbsp Delete Test &nbsp </b></a> 
       </td>
         
     </tr>
     </c:forEach>
    </tbody>
    
  </table>
</div>
               </div>
</div>
 </div>
  </div>
    <br>                         
 
   
     <!-- footer -->
             <footer>
        <font color="white"> 
        <div class="container">
        <div class="container-fluid" style="background-color:black">
        <div class="row">
                 <br>    
              <!--First column-->
            <div class="col-md-6">
                 <a class="brand" href="/homePage">
            <img class="img-responsive" src="/imagedata/p3.png"  height="250px" width="350px"alt="">
                 </a>
                <br>
            </div>
            <!--/.First column-->

            <!--Second column-->
            <div class="col-md-6">
                <ul class="list-styled">
                    <h4 class="text">Usefully Link</h4>
                    <li><a href="/testHomePage">Programming Test</a></li>
                        <li><a href="/questionStratHome">InterView Question</a></li>
                          <li><a href="/Extra/programming_Book.jsp">Programming Book</a></li>
                        <li><a href="/Extra/top_tutorial_Site.jsp">Top tutorial Site</a></li>
                      <li><a href="/Extra/about_us.jsp">About us</a></li>
                </ul>
            </div>  
           </div>
        </div>
            
            
              <div class="footer-copyright py-3 text-center" style="background-color:#262626">
               © 2018 Copyright:
               <a href="/homePage">ProgramingOnlineTest</a>
           </div> 
        </div>
        </font> 
        </footer>
    <br>
 </body>
</html>