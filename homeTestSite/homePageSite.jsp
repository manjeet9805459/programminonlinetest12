<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
         <!-- SEO -->
 <title>ProgrammingOnlineTest:online programming test free</title>
 <meta name="Description" content="ProgrammingOnlineTest:online programming test free for student 
       and developer to increasing the Skill"/>
 <meta name="Keywords" content=" free online programming test and interview questions of all technology 
       like java tutorial, android,java frameworks, javascript, ajax, core java, sql, python, php, c 
       language etc. for beginners and professionals." />
<base href="ProgrammingOnlineTest.com" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link rel="canonical" href="ProgrammingOnlineTest" />
<meta name="robots" content="index, follow"/>
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="author" content="ProgrammingOnlineTest">

 <!-- /SEO -->
 
  <!-- Bootstrap Core CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"/>
    
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    
     <!-- /Bootstrap Core CSS -->
     
         <!-- google -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-116317042-1"></script>
        
        
             
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
             margin-left: 30px;
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
           <li><a href="/adminHome/loginPage.jsp"><span class="glyphicon glyphicon-log-in">
           </span> Only admin Login</a></li>
           </ul>
           </div>
          </div>
          </nav>
          </div>
    
           
         <!-- /Nav -->
         
          <!-- welcome Box -->
        <div class="container">
        <div class="jumbotron" style="background-color:#B0E0E6">
        <h2>Welcome to Programming online test</h2>
        <h4 class="text-justify">
            This site focus on to improve the coding skill of the students, developers and programmers.
            This site provide the Quiz, test and interView question for students and programmers to help 
            for to crack the interView and increasing the coding Skill.
         </h4>
          <p>
          <a class="btn btn-primary btn-responsive btn-md" href="/testHomePage" role="button">Go for Test give &raquo;</a>
          <a class="btn btn-primary btn-responsive btn-md" href="/questionStratHome" role="button">InterView Question &raquo;</a>
        </p>
      </div>
      </div>
       <!-- /welcomBOx -->

           
             <!-- New List -->
          <div class="container" >
            <div class="container-fluid">
            <div class="row" style="background-color:#B0E0E6">
            <div class="col-lg-12">
            <h2 class="page-header">&nbsp &nbsp TEST... <small>List.....</small>
            <hr style="background-color:black">
            </h2>
            <c:forEach var="user" items="${listBook}" step="1" begin="0" >
             <div class="col-md-3 portfolio-item">
            <a href="/testSeriesServlet?testName=${user.testName}">
             <img class="img-responsive" src="${user.imagesURL}" style="margin-left: 30px;height:115px;width:115px"
                alt="">
            </a>
            <h3>
            <a href="/testSeriesServlet?testName=${user.testName}" style="margin-left: 30px;font-size: 20px">${user.testName}</a>
            </h3>
            <p style="margin-left: 30px;font-size: 15px;">Take Test ${user.testName} </p>
            </div>
            </c:forEach>
           </div>
           </div>
       

             
           
      <!-- Pagination -->
      
        <div class="row text-center">
            <div class="col-lg-12">
                
        <nav aria-label="Navigation for countries">
        <ul class="pagination">
        <c:if test="${currentPage != 1}">
            <li class="page-item"><a class="page-link" href="/homePage?recordsPerPage=${recordsPerPage}&currentPage=${currentPage-1}">Previous</a>
            </li>
        </c:if>

        <c:forEach begin="1" end="${noOfPages}" var="i">
            <c:choose>
                <c:when test="${currentPage eq i}">
                <li class="page-item active"><a class="page-link">
                            ${i} <span class="sr-only">(current)</span></a>
                </li>
            </c:when>
             <c:otherwise>
                    <li class="page-item"><a class="page-link" 
                        href="/homePage?recordsPerPage=${recordsPerPage}&currentPage=${i}">${i}</a>
                    </li>
             </c:otherwise>
            </c:choose>
        </c:forEach>

        <c:if test="${currentPage lt noOfPages}">
            <li class="page-item"><a class="page-link" 
                href="/homePage?recordsPerPage=${recordsPerPage}&currentPage=${currentPage+1}">Next</a>
            </li>
        </c:if>              
           </ul>
           </nav>
           </div>
           </div>
           </div>
           </div>
           <!-- End the new Test list -->
            <!-- /New Test -->
           
               
     
        <!-- /All test List -->
    
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