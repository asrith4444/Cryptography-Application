<%-- 
    Document   : affineresult
    Created on : 24 Mar, 2021, 11:06:20 PM
    Author     : DELL
--%>

<%@page import="Ciphers.AffineCipher"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! 
    AffineCipher ac= new AffineCipher();
    String ct="",pt="";
    int ec=0,de=0,key1=0,key2=0,bde=0;
%>
<%
    if(request.getParameter("type").equals("encrypt")){
        pt=request.getParameter("pt");
        key1=Integer.parseInt(request.getParameter("key1"));
        key2=Integer.parseInt(request.getParameter("key2"));
        ct=ac.encrypt(pt,key1,key2);
        ec=1;
    }
    if(request.getParameter("type").equals("decrypt")){
        ct=request.getParameter("ct");
        key1=Integer.parseInt(request.getParameter("key1"));
        key2=Integer.parseInt(request.getParameter("key2"));
        pt=ac.decrypt(ct,key1,key2);
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
                    +"<h3>Key-1 : "+key1+"  && Key-2 : "+key2+"</h3>"
                            + "<a href='affine.jsp'><button>Back to Home</button></a>");
                    ec=0;
                }
                
                if(de==1){
                    out.println("<h2>Decrypted Successfully!</h2>"+
                    "<h3>Entered text : "+ct+"</h3>"
                    +"<h3>Decrypted text : "+pt+"</h3>"
                    +"<h3>Key-1 : "+key1+"  && Key-2 : "+key2+"</h3>"
                            + "<a href='affine.jsp'><button>Back to Home</button></a>");
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
