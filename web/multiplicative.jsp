<%-- 
    Document   : multiplicative
    Created on : 24 Mar, 2021, 9:19:11 PM
    Author     : Asrith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multiplicative Cipher | Cryptography Application</title>
    </head>
    <body>
        <center>
            <h1>Multiplicative Cipher</h1><hr>
        <h2>Encrypt your text!</h2>
        <form action="mulresult.jsp" method="get">
            <table>
                <tr>
                    <td><input type="text" name="pt" placeholder="Enter Plain Text"/></td>
                </tr>
                <tr>
                    <td><b>Choose Key</b>
                        <select name="key">
                            <option value='1'>1</option>
                            <option value='3'>3</option>
                            <option value='5'>5</option>
                            <option value='7'>7</option>
                            <option value='9'>9</option>
                            <option value='11'>11</option>
                            <option value='15'>15</option>
                            <option value='17'>17</option>
                            <option value='19'>19</option>
                            <option value='21'>21</option>
                            <option value='23'>23</option>
                            <option value='25'>25</option>
                        </select>
                        <input type="hidden" name="type" value="encrypt"/>
                    </td>
                    <td><input type="submit" value="Encrypt!"/></td>
                </tr>
            </table>
        </form><hr>
        <h2>Decrypt your text!</h2>
        <form action="mulresult.jsp" method="get">
            <table>
                <tr>
                    <td><input type="text" name="ct" placeholder="Enter Cipher Text"/></td>
                </tr>
                <tr>
                    <td><b>Choose Key</b>
                        <select name="key">
                            <option value='1'>1</option>
                            <option value='3'>3</option>
                            <option value='5'>5</option>
                            <option value='7'>7</option>
                            <option value='9'>9</option>
                            <option value='11'>11</option>
                            <option value='15'>15</option>
                            <option value='17'>17</option>
                            <option value='19'>19</option>
                            <option value='21'>21</option>
                            <option value='23'>23</option>
                            <option value='25'>25</option>
                        </select>
                        <input type="hidden" name="type" value="decrypt"/>
                    </td>
                    <td><input type="submit" value="Decrypt!"/></td>
                </tr>
            </table>
        </form><hr>
        <jsp:include page="footer.html"/>
    </center>
    </body>
</html>
