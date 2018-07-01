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

 <!-- /SEO -->
 
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

        </style>

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
               <div class="col-md-4 col-md-offset-4">  
      

         <%
             String message = (String) request.getAttribute("testName");
             Integer questionNumber = (Integer) request.getAttribute("questionNumber");
        %>
         
          
        <br>
     <center>
      <a class="btn btn-info btn-lg" style="background-color: #008080" role="button" href="/interEditTestName?email=<%=s1%>&testName=<%=  message %>"><b>&nbsp Edit name test &nbsp</b></a>
     </center>
     
     <c:forEach items="${listBook}" var="question">
            <br>
      <center>         
            <ul class="list-group">
            <a class="btn btn-info btn-lg" role="button" style="background-color: #008080" href="/interEditQuestion?email=<%=s1%>&testName=<%=message%>&testSeriesNumber=<c:out value="${question.questionSeries}"/>&questionNumber=<%=questionNumber%>"><b>Edit  Test  Series  <c:out value="${question.questionSeries}" /></b></a>
           </ul>
       </center>
       </c:forEach>
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