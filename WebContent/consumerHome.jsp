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
                        <li class="first current_page_item"><a href="#">Welcome Domain Authority! </a></li>                       
                        <li class="first current_page_item"><a href="domAuthHome.jsp">Data Owner</a></li>                       
                        <li><a href="consumer.jsp">Data Consumer</a></li>
                        <li><a href="index.jsp">LogOut</a></li>
                    </ul>
                    <br class="clearfix" />
                </div>
            </div>
            <div id="inner">
                <div id="splash">
                    <span style="font-size: 22px;">Data Consumer Registration:</span>
                    <%if (request.getParameter("msg") != null) {
                            out.println(request.getParameter("msg"));
                        }%>
                    <form method="post" action="content.jsp">
                        <table width="90%">
                            <tr style="height: 40px;"><td>User id:</td>
                                <td>
                                    <select id="keys" name="keys" onchange="loadXMLDoc()">
                                        <option value="-1">-Select-</option>

                                        <%
                                            String sql = "select * from upload";
                                            System.out.println(";;;;;;;;;;;;;;;" + sql);
                                            PreparedStatement pst = null;
                                            Connection conn = null;
                                            try {
                                                conn = DbConnector.getConnection();
                                                pst = conn.prepareStatement(sql);
                                                ResultSet rs = pst.executeQuery();
                                                while (rs.next()) {%>
                                        <option value="<%=rs.getString(1)%>"><%=rs.getString("filename")%></option>
                                        <%}
                                            } catch (Exception e) {
                                            }%>
                                    </select>  
                                </td></tr>
                                    <tr><td>Key</td><td><input type="text" id="key_" name="key_"/></td></tr>
                                    <tr><td></td><td><input type="submit" value="Submit"/></td></tr>
                        </table>
                    </form>	

                </div>

            </div>

        </div>

    </body>
</html>