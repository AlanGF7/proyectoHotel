<%@page import="datos.Registro"%>
<%@page import="java.util.List"%>

<%!
    int[] reCuarto = null;
    int miau = 0;
    boolean llave = false;
    Registro registro = new Registro();

    public void guardar(int[] valor) {
        registro.setHabitacion(valor);
    }

    String Respuesta = "Ops ";

    boolean AH = false;
    String HE = "DESOCUPADA";
    boolean AH2 = false;
    String HE2 = "DESOCUPADA";
    boolean AH3 = false;
    
    boolean AH4 = false;
    String HE4 = "DESOCUPADA";
    boolean AH5 = false;
    String HE5 = "DESOCUPADA";
    boolean AH6 = false;
    String HE6 = "DESOCUPADA";
    boolean AH7 = false;
    String HE7 = "DESOCUPADA";
    boolean AH8 = false;
    String HE8 = "DESOCUPADA";
    boolean AH9 = false;
    String HE9 = "DESOCUPADA";
    boolean AH10 = false;
    String HE10 = "DESOCUPADA";

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="Recursitos/setterCSSHotel.css" rel="stylesheet"/>
        <title>Seleccionar habitación</title>
    </head>
    <body>
        <jsp:useBean id="Habitaciones" class="datos.Registro" scope="session"/>
        
        <div class="jumbotron" id="mainContainerSetter">
            
        
        <h1>Seleccione la habitación deseada</h1>
        <br>
        <hr>

        <%!            public String getCambio(boolean mia) {
                if (mia) {
                    return Respuesta = "Desocupada";
                } else {
                    return Respuesta = "Ocupada";
                }
            }
                                                        %>



        <div class="container">

            <form action="getterMostrar.jsp">
                <div class="row">
                    <div class="col-6">
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <%

                                if (!AH) {
                                    HE = "OCUPADA";
                                } else {
                                    HE = "DESOCUPADA";
                                }
                            %>
                            <input class="form-check-input" type="checkbox" name="OpHabitacion0" onclick="!AH" value="<%=HE%>">

                            <label class="form-check-label" >Habitación 1 </label>

                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <%

                                if (AH2) {
                                    HE2 = "DESOCUPADA";
                                } else {
                                    HE2 = "OCUPADA";
                                }
                            %>
                            <input class="form-check-input" type="checkbox" name="OpHabitacion1" onclick="!AH2" value="<%=HE2%>">

                            <label class="form-check-label" >Habitación 2 </label>

                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <%
                                String HE3 = "DESOCUPADA";
                                if (AH3) {
                                    HE3 = "DESOCUPADA";
                                } else {
                                    HE3 = "OCUPADA";
                                }
                            %>
                            <input class="form-check-input" type="checkbox" name="OpHabitacion2" onclick="!AH3" value="<%=HE3%>">

                            <label class="form-check-label" >Habitación 3 </label>

                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <%
                                if (AH4) {
                                    HE4 = "DESOCUPADA";
                                } else {
                                    HE4 = "OCUPADA";
                                }
                            %>
                            <input class="form-check-input" type="checkbox" name="OpHabitacion3" onclick="!AH4" value="<%=HE4%>">

                            <label class="form-check-label" >Habitación 4 </label>

                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <%
                                if (AH5) {
                                    HE5 = "DESOCUPADA";
                                } else {
                                    HE5 = "OCUPADA";
                                }
                            %>
                            <input class="form-check-input" type="checkbox" name="OpHabitacion4" onclick="!AH5" value="<%=HE5%>">

                            <label class="form-check-label" >Habitación 5 </label>

                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <%
                                if (AH6) {
                                    HE6 = "DESOCUPADA";
                                } else {
                                    HE6 = "OCUPADA";
                                }
                            %>
                            <input class="form-check-input" type="checkbox" name="OpHabitacion5" onclick="!AH6" value="<%=HE6%>">

                            <label class="form-check-label" for="flexCheckDefault">Habitación 6 </label>
                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <%
                                if (AH7) {
                                    HE7 = "DESOCUPADA";
                                } else {
                                    HE7 = "OCUPADA";
                                }
                            %>
                            <input class="form-check-input" type="checkbox" name="OpHabitacion6" onclick="!AH7" value="<%=HE7%>">

                            <label class="form-check-label" for="flexCheckDefault">Habitación 7 </label>
                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <%
                                if (AH8) {
                                    HE8 = "DESOCUPADA";
                                } else {
                                    HE8 = "OCUPADA";
                                }
                            %>
                            <input class="form-check-input" type="checkbox" name="OpHabitacion7" onclick="!AH8" value="<%=HE8%>">

                            <label class="form-check-label" for="flexCheckDefault">Habitación 8 </label>
                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <%
                                if (AH9) {
                                    HE9 = "DESOCUPADA";
                                } else {
                                    HE9 = "OCUPADA";
                                }
                            %>
                            <input class="form-check-input" type="checkbox" name="OpHabitacion8" onclick="!AH9" value="<%=HE9%>">

                            <label class="form-check-label" for="flexCheckDefault">Habitación 9 </label>
                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <%
                                if (AH10) {
                                    HE10 = "DESOCUPADA";
                                } else {
                                    HE10 = "OCUPADA";
                                }
                            %>
                            <input class="form-check-input" type="checkbox" name="OpHabitacion9" onclick="!AH10" value="<%=HE10%>">

                            <label class="form-check-label" for="flexCheckDefault">Habitación 10 </label>
                        </div>
                    </div>
                </div>

                <br/>
                <hr>
                <button type="submit" class="btn btn-success" id="btnSendSet" >¡Reservar!</button> 

            </form>
        </div>
        </div>

    </body>
</html>
