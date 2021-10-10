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
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
        <title>Escoger habitación</title>
    </head>
    <body>
        <jsp:useBean id="Habitaciones" class="datos.Registro" scope="session"/>
        <h1>Aquí seleccionaras la habitación</h1>


        <div class="container">

            <form action="getterMostrar.jsp">
                <div class="row">
                    <div class="col-6">
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <input class="form-check-input" type="hidden" name="OpHabitacion" value="0"><input class="form-check-input" type="checkbox" onclick="this.previousSibling.value = 1 - this.previousSibling.value">
                            <label class="form-check-label" >Habitación 0 </label>

                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <input class="form-check-input" type="hidden" name="OpHabitacion" value="0"><input class="form-check-input" type="checkbox" onclick="this.previousSibling.value = 1 - this.previousSibling.value">
                            <label class="form-check-label" >Habitación 1 </label>

                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <input class="form-check-input" type="hidden" name="OpHabitacion" value="0"><input class="form-check-input" type="checkbox" onclick="this.previousSibling.value = 1 - this.previousSibling.value">
                            <label class="form-check-label" >Habitación 2 </label>

                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <input class="form-check-input" type="hidden" name="OpHabitacion" value="0"><input class="form-check-input" type="checkbox" onclick="this.previousSibling.value = 1 - this.previousSibling.value">
                            <label class="form-check-label" >Habitación 3 </label>

                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <input class="form-check-input" type="hidden" name="OpHabitacion" value="0"><input class="form-check-input" type="checkbox" onclick="this.previousSibling.value = 1 - this.previousSibling.value">
                            <label class="form-check-label" >Habitación 4 </label>

                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <input class="form-check-input" type="hidden" name="OpHabitacion" value="0"><input class="form-check-input" type="checkbox" onclick="this.previousSibling.value = 1 - this.previousSibling.value">
                            <label class="form-check-label" for="flexCheckDefault">Habitación 5 </label>
                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <input class="form-check-input" type="hidden" name="OpHabitacion" value="0"><input class="form-check-input" type="checkbox" onclick="this.previousSibling.value = 1 - this.previousSibling.value">
                            <label class="form-check-label" for="flexCheckDefault">Habitación 6 </label>
                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <input class="form-check-input" type="hidden" name="OpHabitacion" value="0"><input class="form-check-input" type="checkbox" onclick="this.previousSibling.value = 1 - this.previousSibling.value">
                            <label class="form-check-label" for="flexCheckDefault">Habitación 7 </label>
                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <input class="form-check-input" type="hidden" name="OpHabitacion" value="0"><input class="form-check-input" type="checkbox" onclick="this.previousSibling.value = 1 - this.previousSibling.value">
                            <label class="form-check-label" for="flexCheckDefault">Habitación 8 </label>
                        </div>
                        <div class="form-check">
                            <!-- <input class="form-check-input" name="OpHabitacion" type="hidden" value="0" > -->
                            <!-- <input class="form-check-input" name="OpHabitacion" type="checkbox" value="1" >  -->
                            <input class="form-check-input" type="hidden" name="OpHabitacion" value="0"><input class="form-check-input" type="checkbox" onclick="this.previousSibling.value = 1 - this.previousSibling.value">
                            <label class="form-check-label" for="flexCheckDefault">Habitación 9 </label>
                        </div>
                    </div>
                </div>

                <br/>
                <br/>
                
                
                <%
                   
                        String[] cuartitos;
                        cuartitos = request.getParameterValues("OpHabitacion");
                        if (cuartitos != null) {
                            for (int i = 0; i < cuartitos.length; i++) {
                                miau = Integer.parseInt(cuartitos[i]);
                                reCuarto[i] = miau;
                            }
                            guardar(reCuarto);
                        }
                        llave = !llave;
                  

                %>
                
                <jsp:setProperty name="Habitaciones" property="habitacion" value="<%=reCuarto%>"/>

                <button type="submit" class="btn btn-primary" onclick="guardar(reCuarto )" >Submit</button>


            </form>
        </div>

    </body>
</html>
