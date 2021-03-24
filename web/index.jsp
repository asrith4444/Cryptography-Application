<%-- 
    Document   : index
    Created on : 17 Mar, 2021, 8:13:21 AM
    Author     : Asrith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cryptography Application</title>
    </head>
    <body>
        <center>
            <h1>Cryptography Application</h1><hr>
            <div>
                <h2>Additive Cipher</h2>
                <P>Apply the Additive Cipher to your Plain Text or Cipher Text!  <a href='additive.jsp'><button>Click Here</button></a></P>
                    
            </div>
            <div>
                    <h2>Multiplicative Cipher</h2>
                    <P>Apply the Multiplicative Cipher to your Plain Text or Cipher Text!   <a href='multiplicative.jsp'><button>Click Here</button></a></P>
                    
            </div>
            <div>
                    <h2>Affine Cipher</h2>
                    <P>Apply the Affine Cipher to your Plain Text or Cipher Text!   <a href='affine.jsp'><button>Click Here</button></a></P>
                    
            </div>
            <jsp:include page="footer.html"/>
    </center>
    </body>
</html>
