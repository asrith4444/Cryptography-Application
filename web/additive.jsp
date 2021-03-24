<%-- 
    Document   : additive
    Created on : 24 Mar, 2021, 9:24:37 PM
    Author     : Asrith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Additive Cipher | Cryptography Application</title>
    </head>
    <body>
        <center>
            <h1>Additive Cipher</h1><hr>
        <h2>Encrypt your text!</h2>
        <form action="addresult.jsp" method="get">
            <table>
                <tr>
                    <td><input type="text" name="pt" placeholder="Enter Plain Text"/></td>
                </tr>
                <tr>
                    <td><b>Choose Key</b>
                        <select name="key">
                            <% 
                                    for(int i=1;i<26;i++){
                                        out.println("<option value='"+i+"'>"+i+"</option>");
                                    }
                            %>
                        </select>
                        <input type="hidden" name="type" value="encrypt"/>
                    </td>
                    <td><input type="submit" value="Encrypt!"/></td>
                </tr>
            </table>
        </form><hr>
        <h2>Decrypt your text!</h2>
        <form action="addresult.jsp" method="get">
            <table>
                <tr>
                    <td><input type="text" name="ct" placeholder="Enter Cipher Text"/></td>
                </tr>
                <tr>
                    <td><b>Choose Key</b>
                        <select name="key">
                            <% 
                                    for(int i=1;i<26;i++){
                                        out.println("<option value='"+i+"'>"+i+"</option>");
                                    }
                            %>
                        </select>
                        <input type="hidden" name="type" value="decrypt"/>
                    </td>
                    <td><input type="submit" value="Decrypt!"/></td>
                </tr>
            </table>
        </form><hr>
<!--        <h2>Decrypt your text without key!</h2>
        <form action="result.jsp" method="get">
            <table>
                <tr>
                    <td><input type="text" name="dct" placeholder="Enter Cipher Text"/></td>
                </tr>
                <tr>
                    <td>
                        <input type="hidden" name="type" value="bdecrypt"/>
                    </td>
                    <td><input type="submit" value="Decrypt!"/></td>
                </tr>
            </table>
        </form><hr>-->
<jsp:include page="footer.html"/>
    </center>
    </body>
</html>
