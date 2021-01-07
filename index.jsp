<%@ page language="java" contentType="text/html; charset= UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter"%>    
<%@ page import = "bbs.BbsDAO" %>
<%@ page import = "bbs.Bbs" %>
<%@ page import = "java.util.ArrayList" %> 
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <title>
    HIGHLIGHT
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  <!-- Nucleo Icons -->
  <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="../assets/css/blk-design-system.css?v=1.0.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
  
   <style>
      table {
        width: 100%;
      }
      td {
        border: 1px solid #bcbcbc;
        padding: 5px;
        text-align: center;
      }
    </style>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script>
      $( document ).ready( function() {
        $( 'td:empty' ).append( 'N/A' );
      } );
    </script>
</head>

<body class="profile-page">
 <% 
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String)session.getAttribute("userID");
		}
		int pageNumber = 1;
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg fixed-top navbar-transparent " color-on-scroll="90">
    <div class="container">
      <div class="navbar-translate">
               <a class="navbar-brand" href="index.jsp" rel="tooltip" title="Developed by 김동현 " data-placement="bottom" target="_blank">

         <span>SHINHEUNG</span> 빙고게임
        </a>
      </div>
    </div>
  </nav>
  
  <div class="wrapper">
    <div class="page-header">
    <img src="../assets/img/dots.png" class="dots">
      <img src="../assets/img/path4.png" class="path">
      <div class="container align-items-center">
       
          <div class="col-md-5">
            <h1 class="profile-title text-left">Playing bingo games</h1>
            <h5 class="text-on-back">Bingo</h5>
          </div>
          <br><br>
          <div class="col-lg-12 col-md-12 ml-auto mr-auto">
   
                <div class="tab-content tab-subcategories">
                  <div class="tab-pane active" id="linka">
                    <div class="table-responsive">
                      <div class="alert alert-danger alert-with-icon">
            <button type="button" aria-hidden="true" class="close" data-dismiss="alert" aria-label="Close">
              <i class="tim-icons icon-simple-remove"></i>
            </button>
            <span data-notify="icon" class="tim-icons icon-support-17"></span>
            <span>
              <b> ※ 더블터치 ※ </b><br> 천천히 두번 터치하면<br>화면에 표시할수 있어요!</span>
          </div>
                    <table border="1">
 
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/1.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/2.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/3.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/4.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/5.png" alt="First slide"></td>
							</tr>
							
							<tr>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/6.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/7.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/8.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/9.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/10.png" alt="First slide"></td>
							</tr>
							
							<tr>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/11.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/12.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/13.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/14.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/15.png" alt="First slide"></td>
							</tr>
							
							<tr>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/16.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/17.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/18.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/19.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/20.png" alt="First slide"></td>
							</tr>
							
							<tr>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/21.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/22.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/23.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/24.png" alt="First slide"></td>
                            <td onClick="chk(this)"><img class="d-block w-100" src="assets/img/빙고/25.png" alt="First slide"></td>
							</tr>
                     </table>
                     <p style="text-align:center;">Developed by KIMDONGHYUN<br>청주신흥고등학교</p>
                     
                     <br><br><br>
                
                     
            <script>
           <!--
                var color = "#00ff0000";
                function chk(obj){
                	
                   if(color == "green") {
                     color = "#00ff0000";
                     obj.style.background = 'green';
                    }
                   
                   else if(color == "#00ff0000") {
                        color = "green";
                        obj.style.background = '#00ff0000';
                    }
                   
                   
               }
           -->
</script>
                     
                    </div>
                  </div>
          </div>
        </div>
      </div>
    </div>
   
    
  </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/bootstrap.min.js" type="text/javascript"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
  <script src="../assets/js/plugins/bootstrap-switch.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="../assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
  <!-- Chart JS -->
  <script src="../assets/js/plugins/chartjs.min.js"></script>
  <!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
  <script src="../assets/js/plugins/moment.min.js"></script>
  <script src="../assets/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
  <!-- Black Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
  <!-- Control Center for Black UI Kit: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/blk-design-system.min.js?v=1.0.0" type="text/javascript"></script>
</body>

</html>