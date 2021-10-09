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
                            <input class="form-check-input" name="OpHabitacion" type="checkbox" value="" >
                            <label class="form-check-label" >Habitación 1 </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" name="OpHabitacion" type="checkbox" value="" >
                            <label class="form-check-label" >Habitación 2 </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" name="OpHabitacion" type="checkbox" value="" checked>
                            <label class="form-check-label" >Habitación 3 </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" name="OpHabitacion" type="checkbox" value="" unchecked>
                            <label class="form-check-label" >Habitación 4 </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" name="OpHabitacion" type="checkbox" value="" >
                            <label class="form-check-label" >Habitación 5 </label>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="hab6">
                            <label class="form-check-label" for="flexCheckDefault">Habitación 6 </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="hab7">
                            <label class="form-check-label" for="flexCheckDefault">Habitación 7 </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="hab8">
                            <label class="form-check-label" for="flexCheckDefault">Habitación 8 </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="hab9">
                            <label class="form-check-label" for="flexCheckDefault">Habitación 9 </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="hab10">
                            <label class="form-check-label" for="flexCheckDefault">Habitación 10 </label>
                        </div>
                    </div>
                </div>

                <br/>
                <br/>

            
                

                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>

    </body>
</html>
