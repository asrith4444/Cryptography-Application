<%-- 
    Document   : result
    Created on : 17 Mar, 2021, 8:24:26 AM
    Author     : Asrith
--%>

<%@page import="Ciphers.MultiplicativeCipher"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! 
    MultiplicativeCipher ac= new MultiplicativeCipher();
    String ct="",pt="";
    int ec=0,de=0,key=0,bde=0;
%>
<%
    if(request.getParameter("type").equals("encrypt")){
        pt=request.getParameter("pt");
        key=Integer.parseInt(request.getParameter("key"));
        ct=ac.encrypt(pt,key);
        ec=1;
    }
    if(request.getParameter("type").equals("decrypt")){
        ct=request.getParameter("ct");
        key=Integer.parseInt(request.getParameter("key"));
        pt=ac.decrypt(ct,key);
        de=1;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multiplicative Cipher</title>
    </head>
    <body>
        
        <center>
            <h1>Multiplicative Cipher</h1><hr>
            <% 
                if(ec==1){
                    out.println("<h2>Encrypted Successfully!</h2>"+
                    "<h3>Entered text : "+pt+"</h3>"
                    +"<h3>Encrypted text : "+ct+"</h3>"
                    +"<h3>Key : "+key+"</h3>"
                            + "<a href='multiplicative.jsp'><button>Back to Home</button></a>");
                    ec=0;
                }
                
                if(de==1){
                    out.println("<h2>Decrypted Successfully!</h2>"+
                    "<h3>Entered text : "+ct+"</h3>"
                    +"<h3>Decrypted text : "+pt+"</h3>"
                    +"<h3>Key : "+key+"</h3>"
                            + "<a href='multiplicative.jsp'><button>Back to Home</button></a>");
                    de=0;
                }
//                if(bde==1){
//                    out.println("<h2>Decrypted with all combinations!</h2>"+
//                    "<h3>Entered text : "+ct+"</h3>");
//                    for(int i=1;i<26;i++){
//                        out.println("<b>"+pta[i]+"</b>");
//                    }
//                    out.println("<a href='index.jsp'><button>Back to Home</button></a>");
//                }
           %>
            <jsp:include page="footer.html"/>
    </center>
    </body>
</html>
