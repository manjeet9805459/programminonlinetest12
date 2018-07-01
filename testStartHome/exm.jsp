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
     
  
        <!-- /Bootstrap Core CSS -->
        
        <script language="JavaScript">

var nHist = window.history.length;
if(window.history[nHist] != window.location)
  window.history.forward();
</script>
        
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
 <script language="javascript">
var Timer;
var TotalSeconds;

function CreateTimer(TimerID, Time) 
{
    Timer = document.getElementById(TimerID);
    TotalSeconds = Time;
    UpdateTimer()
    window.setTimeout("Tick()", 1000);
}

function Tick() 
{
    TotalSeconds -= 1;
    if(TotalSeconds==-1)
      {
         document.searchform.submit();
     }
   else
     {
    UpdateTimer()
    window.setTimeout("Tick()", 1000);
     }
}

function UpdateTimer() {
    Timer.innerHTML = TotalSeconds;
}
</script>
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
         
         
              <%
        
                  Integer testSeriesNumber =(Integer) request.getAttribute("testSeriesNumber");
                  String testName =(String) request.getAttribute("testName");
                  
       
                
               %>
                 <c:forEach items="${listBook}" var="question">
                 <div class="container">
                <div class="container-fluid" style="background-color:#ADDFFF">
                <div class="row">
                <form action="exm" method="get" name="searchform" id="searchform" >
                  <input type="hidden" name="testSeriesNumber" value="${testSeriesNumber}">
                  <input type="hidden" name="testName" value="${testName}">
                  <input type="hidden" name="questionNumber" value="${question.questionNumber}">
                <div class="col-lg-12">
                  <h2 class="page-header" align="center" style=";margin-top:1%;">Quiz Start...
              </h2>
              <h2 class="page-header" style=";margin-top:1%;">&nbsp;<c:out value="${question.questionNumber}"/>/10
              <p id='timer' align="right" style="float:right;margin-right:5px;width:45%"></p></h2>
              <hr>
              </div>
                
              
        <h2 style=";margin-top:1%;">&nbsp;&nbsp;<c:out value="${question.questionNumber}"/></h2>
        <h2>&nbsp;&nbsp;<c:out value="${question.question}"/></h2>
        <label class="radio-inline">&nbsp;&nbsp;&nbsp;
           <input type="radio" name="optradio" value="${question.questionOption1}">${question.questionOption1}
       </label><br>
         <label class="radio-inline">&nbsp;&nbsp;&nbsp;
        <input type="radio" name="optradio" value="${question.questionOption2}">${question.questionOption2}
           </label><br>
           <label class="radio-inline">&nbsp;&nbsp;&nbsp;
           <input type="radio" name="optradio" value="${question.questionOption3}">${question.questionOption3}
            </label><br>
             <label class="radio-inline">&nbsp;&nbsp;&nbsp;
             <input type="radio" name="optradio" value="${question.questionOption4}">${question.questionOption4}
             </label><br><br>
            <input type="hidden" name="testSeriesNumber" value="${testSeriesNumber}">
            <input type="hidden" name="testName" value="${testName}">
             &nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-primary btn-responsive btn-md">&nbsp;Submit&nbsp;</button>&nbsp
               <a class="btn btn-primary btn-responsive btn-md" href="/testSeriesServlet?testName=<%=testName%>" role="button">Cancel</a>
           </form>
           </c:forEach>
              <hr>
             </div>
             </div>
              </div>
         
                 <br>
         
       
      <script type="text/javascript">window.onload = CreateTimer("timer", 90);</script>
          <!--footer-->
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