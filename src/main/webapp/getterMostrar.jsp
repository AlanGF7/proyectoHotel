<%@page import="java.util.List"%>
<%@page import="datos.Registro"%>


<%-- Agregar delcaraciones JSP(Atributos o métodos)--%>
<%!
    Registro registro = new Registro();

    
    
%>

<%
    int i = 0;
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
        <title>Mostar habitaciones</title>
    </head>
    <body>
        <jsp:useBean id="Habitaciones" class="datos.Registro" scope="session"/>
        <h1>Aquí se muestran todas las habitaciones</h1>

        <!--jsp:getProperty name="Registro" property=""/-->
        <%
            String ocupacion[] = request.getParameterValues("OpHabitacion");
        %>

        <br>


        <div class="jumbotron">
            <br>
            <div class="container">
                <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">

                    <%                        
                        for (; i < ocupacion.length; i++) {
                            if (ocupacion[i] == "true") {
                    %>
                    <div class="col">
                        <div class="p-3 border bg-danger text-white">Habitación <%= i%></div>
                        <%
                        }else{
                        %>
                        <div class="p-3 border bg-success text-white">Habitación <%= i%></div>

                        <%
                            }
                        %>
                        </div>
                        <%
                            }
                        %>
                </div>
            </div>
        </div>



    </body>
</html>
