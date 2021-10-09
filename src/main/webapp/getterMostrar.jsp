<%@page import="java.util.*"%>
<%@page import="datos.Registro"%>


<%-- Agregar delcaraciones JSP(Atributos o métodos)--%>


<%
    String[] books;
    books = request.getParameterValues("OpHabitacion");
    int i = 0;
    int op = 0;
    int[] mi = new int[10];


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
        <%            //String ocupacion[] = request.getParameterValues("OpHabitacion");
            /* Map Mapita = request.getParameterMap();
            Set s = Mapita.entrySet();
            Iterator it = s.iterator();

            while (it.hasNext()) {

                Map.Entry<String, String[]> entry = (Map.Entry<String, String[]>) it.next();

                String key = entry.getKey();

                String[] value = entry.getValue();

                

            }*/
            if (books != null) {
                for (; i < books.length; i++) {
                    op = Integer.parseInt(books[i]);
                    out.println("<b> Si: " + books[i] + "<b>");
                }
            }


        %>

        <br>
        <br>

        <div class="container">
            <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
                <%                    
                    for (; i < books.length; i++) {
                        if (books[i] != null) {
                              op = Integer.parseInt(books[i]);
                            }
                        
                    }
                    for (int j = 0; j <= 9; j++) {
                      
                        if (op == j) {
                %>

                <div class="col">
                    <div class="p-3  bg-danger">Habitación <%= j%></div>
                </div>

                <%

                } else {

                %>
                <div class="col">
                    <div class="p-3  bg-success">Habitación <%= j%></div>
                </div>                

                <%
                        }
                    }


                %>

            </div>
        </div>

    </body>
</html>
