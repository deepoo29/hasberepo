<%@page import="com.util.Utilities"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
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
                        <li class="first current_page_item"><a href="consumerHome.jsp">Back </a></li>                       
                        <li><a href="index.jsp">LogOut</a></li>
                    </ul>
                    <br class="clearfix" />
                </div>
            </div>
            <div id="inner">
                <div id="splash">
                    <span style="font-size: 22px;">Data:</span>
                    <%if (request.getParameter("msg") != null) {
                            out.println(request.getParameter("msg"));
                        }%>
                    <form method="post" action="content.jsp">
                        <table width="90%">
                            <tr style="height: 40px;">
                                <td>
                                
                                        <%
                                        String sql="";
                                        boolean flag=false;
                                        if(request.getParameter("keys").trim()!="" && request.getParameter("keys").trim()!=""){
                                       sql = "select * from upload where id='"+request.getParameter("keys") +"' and key_='"+request.getParameter("key_") +"'";
                                            flag=true;
                                        }else{
                                       sql = "select * from upload where id='"+request.getParameter("keys") +"'";
                                            
                                        }
                                            System.out.println(";;;;;;;;;;;;;;;" + sql);
                                            PreparedStatement pst = null;
                                            Connection conn = null;
                                            try {
                                                conn = DbConnector.getConnection();
                                                pst = conn.prepareStatement(sql);
                                                ResultSet rs = pst.executeQuery();
                                                if (rs.next()) {
                                                    if(flag==true){
                                                    System.out.println("false????");
                                                out.println(Utilities.decryptString(rs.getString(3),rs.getString(4)));
                                                                                               }else{
                                                        out.println(rs.getString(3));
                                                                                               }
                                        }else{
                                                    out.println("In valid Key");
                                        }
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }%>
                                </td></tr>
                        </table>
                                    
                    </form>	

                </div>

            </div>

        </div>

    </body>
</html>