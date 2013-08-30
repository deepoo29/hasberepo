<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <title>HASBE</title>
        <!--		<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css" />-->
        <link rel="stylesheet" type="text/css" href="style.css" />
		<script type="text/javascript">
		function validate(){
         
		 var _name = document.getElementById("_name").value;
		
		 var _password = document.getElementById("_password").value;
		  var add = document.getElementById("add").value;
		 var _age = document.getElementById("_age").value;
		 var _phone = document.getElementById("_phone").value;
		 var _emailid = document.getElementById("_emailid").value;
		 if(_name==null || _name==""){
          alert("Enter userid");
		  return false;		
		}else if(_password==null || _password==""){
          alert("Enter password");
		  return false;
				}else if(add==null || add==""){
          alert("Enter address");
		  return false;
				}else if(_age==null || _age==""){
          alert("Enter Age");
		  return false;
				}else if(_phone==null || _phone==""){
          alert("Enter phone number");
		  return false;
				}else if(_emailid==null || _emailid==""){
          alert("Enter email id");
		  return false;
				}
		}
		</script>

    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <div id="logo">
                    <h1><a href="#">HASBE</a></h1>
                </div>
                <div id="menu">
                    <ul>
                        <li class="first current_page_item"><a href="#">Welcome Trusted Authority</a></li>                        
                        <li class="first current_page_item"><a href="index.jsp">LogOut</a></li>                        
                    </ul>
                    <br class="clearfix" />
                </div>
            </div>
            <div id="inner">
                <div id="splash">
                   <span style="font-size: 22px;">Domain Authority Registration:</span>
                        <%if (request.getParameter("msg") != null) {
                                out.println(request.getParameter("msg"));
                            }%>
                        <form method="post" action="DomAuthReg">
                            <table width="90%">
                            <tr style="height: 40px;"><td>User id:</td><td><input type="text" size="30" style="height: 25px;" id="_name" name="_name"/></td></tr>
                                <tr style="height: 40px;"><td>Password:</td><td><input type="password" size="30" style="height: 25px;" id="_password" name="_password"/></td></tr>
                                <tr style="height: 40px;"><td>Address:</td><td><input type="text" size="30" style="height: 25px;" id="add" name="add" />
                                       </td></tr>
                                <tr style="height: 40px;"><td>Age:</td><td><input type="text" size="30" style="height: 25px;" id="_age" name="_age"/></td></tr>
                                <tr style="height: 40px;"><td>Phone:</td><td><input type="text" size="30" style="height: 25px;" id="_phone" name="_phone" maxlength="10"/></td></tr>
                                <tr style="height: 40px;"><td>Email-Id:</td><td><input type="text" size="30" style="height: 25px;" id="_emailid" name="_emailid"/></td></tr>
                                

                                <tr style="height: 40px;"><td></td><td><input type="submit" value="Submit" style="height: 25px;width: 90px;" onclick="return validate()"/></td></tr>
                          
                            </table>
                        </form>	
                </div>
            
            </div>

        </div>

    </body>
</html>