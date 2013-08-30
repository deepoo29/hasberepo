<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <title>HASBE</title>
        <!--		<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css" />-->
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <div id="logo">
                    <h1><a href="#">HASBE</a></h1>
                </div>
                <div id="menu">
                    <ul>
                    <li class="first current_page_item"><a href="#">Welcome Data Owner</a></li>
                        <li><a href="index.jsp">Log Out</a></li>
                    <br class="clearfix" />
                    </ul>
                </div>
            </div>
            <div id="inner">
                <div id="splash">
                    <%if (request.getParameter("msg") != null) {
                                out.println(request.getParameter("msg"));
                            }%>
                        <h2>Upload File</h2>
                        <form action="uploadProcess.jsp" method="post" enctype="multipart/form-data">
                               <tr style="height: 40px;"><td>Choose File:</td><td> <input name="file" type="file" id="file"/>    </td></tr>
                               <tr style="height: 40px;"><td colspan="2"> <input type="submit" value="Upload"/> </td></tr>
                        <table>
                            
                        </table>
                        </form>
                </div>
            
            </div>

        </div>

    </body>
</html>