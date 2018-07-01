<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
         <!-- SEO -->
 <title>ProgrammingOnlineTest:online programming test free</title>
 
     <%
response.setHeader("Pragma","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Expires","0");
response.setDateHeader("Expires",-1);
%>

<script language="JavaScript">

var nHist = window.history.length;
if(window.history[nHist] != window.location)
  window.history.forward();
</script>
 
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
    
           <!-- /nav -->
    <!--Navigation-->
    
                <%
                    Integer testSeriesNumber = (Integer) request.getAttribute("testSeriesNumber");
                    String testName = (String) request.getAttribute("testName");
                    List<String> UserAnswer = (List<String>) request.getAttribute("UserAnswer");
                    Integer counter1 = (Integer) request.getAttribute("counter");
                    List<String> testDetail = (List<String>) request.getAttribute("testDetail");
                     int c=0;
                     c=10-counter1;
                 %>
                 
                 


                 
                   
                 
                 <div class="container">
                 <div class="container-fluid">
                 <!-- Page Header -->
                 <div class="row" style="background-color:#ADDFFF">
                 <div class="col-lg-12" >
                <center>
                    <h2>Result of <%=testName%> test in test series  <%=testSeriesNumber%></h2>
                    <h2><%=counter1%> correct and <%=c%> incorrect out of 10 Question</h2>
                    <p> 
                        <a class="btn btn-primary btn-responsive btn-md" href="/homePage" role="button">Go To Home &raquo;</a>
                        <a class="btn btn-primary btn-responsive btn-md" href="/testHomePage" role="button">Go To test Home &raquo;</a>
                        <a class="btn btn-primary btn-responsive btn-md" href="/testSeriesServlet?testName=<%=testName%>" role="button">Take Another Test&raquo;</a>
                       </p>
                    <h2>description of test</h2>
                </center>
                <hr>
                <% int i=0;%>
                      
            
               <c:forEach items="${testDetail}" var="testDetail" varStatus="loop" >
               <h2>Q.NO. <c:out value="${loop.index+1}"/>...<c:out value="${testDetail.question}"/></h2>
               <ul class="list-group">
                   <li class="list-group-item"><b>OPTION 1 = <c:out value="${testDetail.questionOption1}"/></b></li>
                   <li class="list-group-item"><b>OPTION 2 = <c:out value="${testDetail.questionOption2}"/></b></li>
                   <li class="list-group-item"><b>OPTION 3 = <c:out value="${testDetail.questionOption3}"/><b></li>
                   <li class="list-group-item"><b>OPTION 4 = <c:out value="${testDetail.questionOption4}"/></b></li>
                   <br>
                   <li class="list-group-item"><b>True Answer = <c:out value="${testDetail.trueAnswer}"/></b></li>
                   <br>
                    <c:forEach items="${UserAnswer}" var="UserAnswer" varStatus="loop" begin = "<%=i%>" end = "<%=i%>">
                   <li class="list-group-item"><b>Your Answer = <c:out value="${UserAnswer}"/></b></li>
                    </c:forEach>
                    <% i++; %>
               </ul>
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