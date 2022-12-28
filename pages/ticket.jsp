<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Compra Tickets</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="">

        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
        
        <link rel="stylesheet" type="text/css" href="../css/styles_tickets.css">
    
    </head>

    <body>
        <header >
            <div id ="lg_nav" class="container-fluid"> <!-- Nav de compu -->
                <div class="row">
                    <div id="logo" class="col-lg-6">
                        <span class="material-symbols-outlined">rocket</span>
                        <h3>Grow</h3>
                    </div>

                    <div class="col-lg-6">
                        <nav>
                            <ul>
                                <li class="col-lg-auto"><a href="index.html">El Festival</a></li>
                                <li class="col-lg-auto"><a href="index.html#top">Músicos Estrella</a></li>
                                <li class="col-lg-auto"><a href="index.html#lugar_fecha">Lugar y Fecha</a></li>
                                <li class="col-lg-auto"><a href="index.html#participa">Toca en el festival</a></li>
                                <li class="col-lg-auto"><a href="tickets.html" class="linkTickets">Comprar tickets</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>

            <nav id="mobile_nav" class="navbar fixed-top navbar-expand-lg navbar-dark"> <!-- Nav mobile -->
                <div class="container">
                    <div id="logo" class="col-lg-6">
                        <span class="material-symbols-outlined">rocket</span>
                        <h3>Grow</h3>
                    </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="true" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="navbar-collapse flex-row-reverse collapse show" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="../index.html">El Festival</a></li>
                        <li class="nav-item"><a class="nav-link" href="../index.html#top">Musicos Estrella</a></li>
                        <li class="nav-item"><a class="nav-link" href="../index.html#lugar_fecha">Lugar y La Fecha</a></li>
                        <li class="nav-item"><a class="nav-link" href="../index.html#participa">Toca en el Festival</a></li>
                        <li class="nav-item"><a class="nav-link" href="tickets.html" class="linkTickets">Comprar Tickets</a></li>
                    </ul>
                </div>
                </div>
            </nav>
        </header>

        <section class="container" id="descuentos">
            <div class="row">
                <div class="col-8 col-lg-3">
                    <div class="card" id="card1">
                        <div class="card-body">
                            <h5 class="card-title">Estudiante</h5>
                            <p class="card-text">Tienen un descuento</p>
                            <b><h5 class="card-title">80%</h5></b>
                            <p class="aclaracion">*Presentar documentacion</p>
                        </div>
                    </div>
                </div>

                <div class="col-8 col-lg-3">
                    <div class="card" id="card2">
                        <div class="card-body">
                            <h5 class="card-title">Trainee</h5>
                            <p class="card-text">Tienen un descuento</p>
                            <b><h5 class="card-title">50%</h5></b>
                            <p class="aclaracion">*Presentar documentacion</p>
                        </div>
                    </div>
                </div>

                <div class="col-8 col-lg-3">
                    <div class="card" id="card3">
                        <div class="card-body">
                            <h5 class="card-title">Junior</h5>
                            <p class="card-text">Tienen un descuento</p>
                            <b><h5 class="card-title">15%</h5></b>
                            <p class="aclaracion">*Presentar documentacion</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section id="info_compra">
        <h2>GRACIAS POR TU COMPRA!</h2>
        
        <h4>A continuación se detallan los datos de tus tickets:</h4>
        
        <p> 
        	Nombre: <%= request.getParameter("nombre") %> <br>
        	Apellido: <%= request.getParameter("apellido") %> <br>
        	Mail: <%= request.getParameter("mail") %> </p> <br>
        	
        	<p> Cantidad de entradas: <span id="cantidadDisplay"> <%= request.getParameter("cantidad") %> </span> <br>
        	    Categoría: <span id="categoriaDisplay"> <%= request.getParameter("categoria") %> </span></p> <br><br>
      
        <div class="container-fluid">
			<p class="col-12 col-lg-12" id="alert_jsp">Total a pagar: $ <b id="total"></b></p>
			
			<div class="row">
	                        
               	<button type="button" class="btn col-12 col-lg-4" id="btnDelete" onclick="location.href='delete.jsp'"><p><b>Cancelar</b></p></button>
               	
               	<!-- Button trigger modal -->
				<button id="btnUpdate" type="button" class="btn col-12 col-lg-4" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
				  Modificar
				</button>
				
				<!-- Modal -->
				<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h1 class="modal-title fs-5" id="staticBackdropLabel">Modifica los campos deseados</h1>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				<div class="modal-body">
				       
				
					<section id="formulario" class="container-fluid"> <!-- Formulario -->
					        
		            <div class="row">
		                <div class="col-12 col-lg-12">
		                    <div class="container-fluid">
		                        <div class="row">
		                            <h3 class="col-12 col-lg-12">VENTA</h3>
		                            <h1 class="col-12 col-lg-12">VALOR DEL TICKET $200</h1>
		
									<!-- Inicio del Formulario -->
									<form class="container-fluid" action="update.jsp">
			                        <div class="row">    
			                            <div class="input-group mb-3 col-12 col-lg-12">
			                                <input type="text" name="nombre" value="<%= request.getParameter("nombre") %>" class="form-control" id="nombre" placeholder="Nombre" aria-label="Nombre" required>
			                                <input type="text" name="apellido" value="<%= request.getParameter("apellido") %>" class="form-control" id="apellido" placeholder="Apellido" aria-label="Apellido" required>
			                            </div>
			
			                            <input type="email" name="mail" value="<%= request.getParameter("mail") %>" class="form-control col-12 col-lg-12" id="mail" placeholder="Email" aria-label="Email" 
			                            aria-describedby="basic-addon1" required>
			
			                            <p class="col-6 col-lg-6 label">Cantidad:</p>
			
			                            <p class="col-6 col-lg-6 label">Categoría:</p>
			                            
			                            <div class="col-6 col-lg-6">
			                                <input type="number" name="cantidad" value="<%= request.getParameter("cantidad") %>" class="form-control col-lg-6" id="cantidad" placeholder="Cantidad" aria-label="Cantidad" required>
			                            </div>
			                            
			                            <div class="col-6 col-lg-6">
			                            <div class="input-group mb-3">
			                                    <select class="form-select" value="<%= request.getParameter("categoria") %>" name="categoria" id="categoria" required>
			                                    	<option>-- Seleccione --</option>
				                                    <option value="no">Sin categoría</option>
				                                    <option value="estudiante">Estudiante</option>
				                                    <option value="trainee">Trainee</option>
				                                    <option value="junior">Junior</option>
			                                    </select>
			                                </div>
			                            
			                            </div>
			                            
			                            <button type="submit" class="col-12 col-lg-12" id="btnUpdate2"><p><b>Modificar</b></p></button>
			                        </div>
		
									</form>
		
		                        </div>
		                    </div>
		                </div>
		            </div>
					        </section>
							      </div>
							    </div>
							  </div>
							</div>
	                       	
	                       	<button class="col-12 col-lg-4" id="btnConfirmar" onclick="location.href='tickets.html'"><p><b>Confirmar</b></p></button>
	                         
	         </div>
        </div>
        </section>

        <footer class="container-fluid">
            <ul class="row">
                <li class="col-12 col-lg-2"><a href="">Preguntas Frecuentes</a></li>
                <li class="col-12 col-lg-1"><a href="">Contactanos</a></li>
                <li class="col-12 col-lg-1"><a href="">Prensa</a></li>
                <li class="col-12 col-lg-1"><a href="">Festivales</a></li>
                <li class="col-12 col-lg-1"><a href="">Músicos</a></li>
                <li class="col-12 col-lg-2"><a href="">Terminos y Condiciones</a></li>
                <li class="col-12 col-lg-1"><a href="">Privacidad</a></li>
            </ul>
        </footer>

        <!-- JS Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" 
        crossorigin="anonymous"></script>
        
        
        <!-- Por algun motivo cuando llamaba al script edl archivo displayTotal.js no funcionaba asi que agregué el código aca -->
        <script>
        
	        const cantidad = parseInt(document.getElementById("cantidadDisplay").innerHTML)
	        const categoria = document.getElementById("categoriaDisplay").innerHTML
	        const totalDisplay=document.getElementById("total");
	
	        console.log(cantidad);
	        console.log(categoria);
	
	        const select = document.getElementById("categoria");
	        console.log(select.innerHTML);
	
	        console.log("Hola");
	
	        function valorTickets(cantidad, categoria) {
	            const valorBase = 200
	
	            var valorUnTicket = 0
	            
	            if (categoria.trim() == "estudiante") {
	                valorUnTicket = (valorBase - valorBase * 0.8)
	            } else if (categoria.trim() == "trainee") {
	                valorUnTicket = (valorBase - valorBase * 0.5)
	            } else if (categoria.trim() == "junior") {
	                valorUnTicket = (valorBase - valorBase * 0.15)
	            } else {
	                valorUnTicket = valorBase
	            }
	
	            return cantidad * valorUnTicket
	        }
	
	        totalDisplay.innerHTML = valorTickets(cantidad, categoria)
        
        </script>
        
        <script src="../js/categoria.js"></script>
        <!-- <script src="../js/categoria.js"></script>  -->
    </body>
</html>