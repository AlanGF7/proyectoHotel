<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*"%>
<%@page import="datos.Registro"%>

<%
    int[] espera = new int[9];
    Registro regis = new Registro();
    espera = regis.getHabitacion();

%>

<%    //String[] books;
    //books = request.getParameterValues("OpHabitacion");
    int i = 0;
    int op = 0;
    int M2 = 0;
    //int[] mi = new int[books.length];

    boolean salida = false;
%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="Recursitos/getterCSSHotel.css" rel="stylesheet"/>
        <title>Habitaciones</title>
    </head>
    <body>
        <jsp:useBean id="Habitaciones" class="datos.Registro" scope="session"/>
        <div class="jumbotron" id="mainContainerGetter">
        <h1>Aquí se muestran todas las habitaciones</h1>
        <hr>
        <%
            String hab0 = "";
            String hab1 = "";
            String hab2 = "";
            String hab3 = "";
            String hab4 = "";
            String hab5 = "";
            String hab6 = "";
            String hab7 = "";
            String hab8 = "";
            String hab9 = "";
        %>
            
           
        <%
            if (request.getParameter("OpHabitacion0") == null) {
                hab0 = "DESOCUPADA";
            } else {
                hab0 = request.getParameter("OpHabitacion0");
            }
            if (request.getParameter("OpHabitacion1") == null) {
                hab1 = "DESOCUPADA";
            } else {
                hab1 = request.getParameter("OpHabitacion1");
            }
            if (request.getParameter("OpHabitacion2") == null) {
                hab2 = "DESOCUPADA";
            } else {
                hab2 = request.getParameter("OpHabitacion2");
            }
            if (request.getParameter("OpHabitacion3") == null) {
                hab3 = "DESOCUPADA";
            } else {
                hab3 = request.getParameter("OpHabitacion3");
            }
            if (request.getParameter("OpHabitacion4") == null) {
                hab4 = "DESOCUPADA";
            } else {
                hab4 = request.getParameter("OpHabitacion4");
            }
            if (request.getParameter("OpHabitacion5") == null) {
                hab5 = "DESOCUPADA";
            } else {
                hab5 = request.getParameter("OpHabitacion5");
            }
            if (request.getParameter("OpHabitacion6") == null) {
                hab6 = "DESOCUPADA";
            } else {
                hab6 = request.getParameter("OpHabitacion6");
            }
            if (request.getParameter("OpHabitacion7") == null) {
                hab7 = "DESOCUPADA";
            } else {
                hab7 = request.getParameter("OpHabitacion7");
            }
            if (request.getParameter("OpHabitacion8") == null) {
                hab8 = "DESOCUPADA";
            } else {
                hab8 = request.getParameter("OpHabitacion8");
            }
            if (request.getParameter("OpHabitacion9") == null) {
                hab9 = "DESOCUPADA";
            } else {
                hab9 = request.getParameter("OpHabitacion9");
            }

        %>

        <%            if (hab0 == "DESOCUPADA") {
        %>

        <%
        } else {
        %>
        <jsp:setProperty name="Habitaciones" property="cuarto0" value="<%=hab0%>"/>
        <jsp:setProperty name="Habitaciones" property="cuarto1" value="<%=hab1%>"/>
        <jsp:setProperty name="Habitaciones" property="cuarto2" value="<%=hab2%>"/>
        <jsp:setProperty name="Habitaciones" property="cuarto3" value="<%=hab3%>"/>
        <jsp:setProperty name="Habitaciones" property="cuarto4" value="<%=hab4%>"/>
        <jsp:setProperty name="Habitaciones" property="cuarto5" value="<%=hab5%>"/>
        <jsp:setProperty name="Habitaciones" property="cuarto6" value="<%=hab6%>"/>
        <jsp:setProperty name="Habitaciones" property="cuarto7" value="<%=hab7%>"/>
        <jsp:setProperty name="Habitaciones" property="cuarto8" value="<%=hab8%>"/>
        <jsp:setProperty name="Habitaciones" property="cuarto9" value="<%=hab9%>"/>

        <%
            }

        %>

        <div class="container">
            <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">

                <div class="col">
                    <div class="p-3 fw-normal">
                        <%                            
                            if (request.getParameter("OpHabitacion0") != null || hab0 != "DESOCUPADA") {
                        %>

                        <div class="col">
                            <div class="p-3 fw-normal bg-danger"  id="divHabitaciones" name="divHabitaciones">
                                <h1>01</h1><hr style="color: black; height: 3px;"> <jsp:getProperty name="Habitaciones" property="cuarto0"/>  
                            </div>
                        </div>

                        <%
                        } else {
                        %>
                        <div class="col">
                            <div class="p-3 fw-normal bg-success"  id="divHabitaciones" name="divHabitaciones">
                                <h1>01</h1><hr style="color: whitesmoke; height: 3px;"> <jsp:getProperty name="Habitaciones" property="cuarto0"/>
                            </div>
                        </div>                

                        <%
                            }
                        %>

                    </div>
                </div> 

                <div class="col">
                    <div class="p-3 fw-normal">
                        <%
                            if (request.getParameter("OpHabitacion1") != null) {
                        %>

                        <div class="col">
                            <div class="p-3 fw-normal bg-danger" id="divHabitaciones" name="divHabitaciones">
                                <h1>02</h1><hr style="color: black; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto1"/>  
                            </div>
                        </div>

                        <%
                        } else {
                        %>
                        <div class="col">
                            <div class="p-3 fw-normal bg-success" id="divHabitaciones" name="divHabitaciones">
                                <h1>02</h1><hr style="color: whitesmoke; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto1"/>
                            </div>
                        </div>                

                        <%
                            }
                        %>

                    </div>
                </div> 

                <div class="col">
                    <div class="p-3 fw-normal">
                        <%
                            if (request.getParameter("OpHabitacion2") != null) {
                        %>

                        <div class="col">
                            <div class="p-3 fw-normal bg-danger" id="divHabitaciones" name="divHabitaciones">
                                <h1>03</h1><hr style="color: black; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto2"/>  
                            </div>
                        </div>

                        <%
                        } else {
                        %>
                        <div class="col">
                            <div class="p-3 fw-normal bg-success" id="divHabitaciones" name="divHabitaciones">
                                <h1>03</h1><hr style="color: whitesmoke; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto2"/>
                            </div>
                        </div>                

                        <%
                            }
                        %>

                    </div>
                </div> 

                <div class="col">
                    <div class="p-3 fw-normal">
                        <%
                            if (request.getParameter("OpHabitacion3") != null) {
                        %>

                        <div class="col">
                            <div class="p-3 fw-normal bg-danger" id="divHabitaciones" name="divHabitaciones">
                                <h1>04</h1><hr style="color: black; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto3"/>  
                            </div>
                        </div>

                        <%
                        } else {
                        %>
                        <div class="col">
                            <div class="p-3 fw-normal bg-success" id="divHabitaciones" name="divHabitaciones">
                                <h1>04</h1><hr style="color: whitesmoke; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto3"/>
                            </div>
                        </div>                

                        <%
                            }
                        %>

                    </div>
                </div> 

                <div class="col">
                    <div class="p-3 fw-normal">
                        <%
                            if (request.getParameter("OpHabitacion4") != null) {
                        %>

                        <div class="col">
                            <div class="p-3 fw-normal bg-danger" id="divHabitaciones" name="divHabitaciones">
                                <h1>05</h1><hr style="color: black; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto4"/>  
                            </div>
                        </div>

                        <%
                        } else {
                        %>
                        <div class="col">
                            <div class="p-3 fw-normal bg-success" id="divHabitaciones" name="divHabitaciones">
                                <h1>05</h1><hr style="color: whitesmoke; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto4"/>
                            </div>
                        </div>                

                        <%
                            }
                        %>

                    </div>
                </div> 

                <div class="col">
                    <div class="p-3 fw-normal">
                        <%
                            if (request.getParameter("OpHabitacion5") != null) {
                        %>

                        <div class="col">
                            <div class="p-3 fw-normal bg-danger" id="divHabitaciones" name="divHabitaciones">
                                <h1>06</h1><hr style="color: black; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto5"/>  
                            </div>
                        </div>

                        <%
                        } else {
                        %>
                        <div class="col">
                            <div class="p-3 fw-normal bg-success" id="divHabitaciones" name="divHabitaciones">
                                <h1>06</h1><hr style="color: whitesmoke; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto5"/>
                            </div>
                        </div>                

                        <%
                            }
                        %>

                    </div>
                </div> 

                <div class="col">
                    <div class="p-3 fw-normal">
                        <%
                            if (request.getParameter("OpHabitacion6") != null) {
                        %>

                        <div class="col">
                            <div class="p-3 fw-normal bg-danger" id="divHabitaciones" name="divHabitaciones">
                                <h1>07</h1><hr style="color: black; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto6"/>  
                            </div>
                        </div>

                        <%
                        } else {
                        %>
                        <div class="col">
                            <div class="p-3 fw-normal bg-success" id="divHabitaciones" name="divHabitaciones">
                                <h1>07</h1><hr style="color: whitesmoke; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto6"/>
                            </div>
                        </div>                

                        <%
                            }
                        %>

                    </div>
                </div> 

                <div class="col">
                    <div class="p-3 fw-normal">
                        <%
                            if (request.getParameter("OpHabitacion7") != null) {
                        %>

                        <div class="col">
                            <div class="p-3 fw-normal bg-danger" id="divHabitaciones" name="divHabitaciones">
                                <h1>08</h1><hr style="color: black; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto7"/>  
                            </div>
                        </div>

                        <%
                        } else {
                        %>
                        <div class="col">
                            <div class="p-3 fw-normal bg-success" id="divHabitaciones" name="divHabitaciones">
                                <h1>08</h1><hr style="color: whitesmoke; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto7"/>
                            </div>
                        </div>                

                        <%
                            }
                        %>

                    </div>
                </div> 

                <div class="col">
                    <div class="p-3 fw-normal">
                        <%
                            if (request.getParameter("OpHabitacion8") != null) {
                        %>

                        <div class="col">
                            <div class="p-3 fw-normal bg-danger" id="divHabitaciones" name="divHabitaciones">
                                <h1>09</h1><hr style="color: black; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto8"/>  
                            </div>
                        </div>

                        <%
                        } else {
                        %>
                        <div class="col">
                            <div class="p-3 fw-normal bg-success" id="divHabitaciones" name="divHabitaciones">
                                <h1>09</h1><hr style="color: whitesmoke; height: 3px;">  <jsp:getProperty name="Habitaciones" property="cuarto8"/>
                            </div>
                        </div>                

                        <%
                            }
                        %>

                    </div>
                </div> 

                <div class="col">
                    <div class="p-3 fw-normal">
                        <%
                            if (request.getParameter("OpHabitacion9") != null) {
                        %>

                        <div class="col">
                            <div class="p-3 fw-normal bg-danger" id="divHabitaciones" name="divHabitaciones">
                                <h1>10</h1><hr style="color: black; height: 3px;"> <jsp:getProperty name="Habitaciones" property="cuarto9"/>  
                            </div>
                        </div>

                        <%
                        } else {
                        %>
                        <div class="col">
                            <div class="p-3 fw-normal bg-success" id="divHabitaciones" name="divHabitaciones">
                                <h1>10</h1><hr style="color: whitesmoke; height: 3px;"> <jsp:getProperty name="Habitaciones" property="cuarto9"/>
                            </div>
                        </div>                

                        <%
                            }
                        %>

                    </div>
                </div> 





            </div>

            <div class="jumbotron">
                <a href="index.html">
                    <button class="btn btn-info" id="btnBackInicio" name="btnBackInicio">Regresar al inicio</button>
                </a>
            </div>
            
            
            <%                if (salida) {
          
                    salida = !salida;
                }
            %>
        </div>
        </div>

    </body>
</html>
