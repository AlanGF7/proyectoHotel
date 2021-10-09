<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*"%>
<%@page import="datos.Registro"%>

<%
    int[] espera = new int[9];
    Registro regis = new Registro();
    espera = regis.getHabitacion();

%>

<%    String[] books;
    books = request.getParameterValues("OpHabitacion");
    int i = 0;
    int op = 0;
    int M2 = 0;
    int[] mi = new int[books.length];

    boolean salida = false;
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


        <%

            if (books != null) {
                for (; i < books.length; i++) {
                    op = Integer.parseInt(books[i]);
                    mi[i] = op;
                    //  out.println("<b> Si: " + books[i] + "<b>");
                    out.print("<br>");
                    if (op == 0) {
                        out.print("APAGADO: " + books[i] + ", Numero: " + i);
                    } else {
                        out.print("PRENDIDO: " + books[i] + ", Numero: " + i);
                    }

                }
            }

            if (espera != null) {
                for (int p = 0; p < espera.length; p++) {
                    M2 = espera[p];
                    out.print("<br>");
                    if (M2 == 0) {
                        out.print("Num encendio: " + espera[p] + ", Numero: " + p);
                    } else {
                        out.print("Num Apagado: " + espera[p] + ", Numero: " + p);
                    }

                }
            }
        %>

        <br>
        <br>

        <div class="container">
            <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
                <%                    for (int j = 0; j < mi.length; j++) {

                        if (mi[j] == 1) {
                %>

                <div class="col">
                    <div class="p-3 fw-normal bg-danger">Habitación <%= j%></div>
                </div>

                <%
                } else {
                %>
                <div class="col">
                    <div class="p-3 fw-normal bg-success">Habitación <%= j%></div>
                </div>                

                <%
                        }
                    }
                %>

            </div>

            <a class="btn btn-success" href="index.html" role="button">Regresar a inicio</a>
            <a class="btn btn-warning" href="setterApartar.jsp" role="button" onclick="!salida">Regresar a la selección</a>
            <%
                if (salida) {
                    mi.equals(0);
                    salida = !salida;
                }
            %>
        </div>

    </body>
</html>
