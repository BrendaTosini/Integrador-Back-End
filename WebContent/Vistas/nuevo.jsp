<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agregar Socio</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet"> 
<link href="css/style.css" rel="stylesheet" type="text/css"> 
</head>
<body class="bodyn">
<br>
<br>
<br>

<h1 class="tituloa">Agregar Socio</h1>


<div  class="container">
		<div class="row"  >
				
			<form class="p-5" action="SociosController?accion=insert" method="post">
			
			<div class="mb-3">
				<input type="hidden" class="form-control" id="id" name="id" >
			</div>
			
			<div class="mb-3">
				<label for="nombre" class="form-label">Nombre</label>
				<input type="text" class="form-control" id="nombre" name="nombre">
			</div>
			
			<div class="mb-3">
				<label for="apellido" class="form-label">Apellido</label>
				<input type="text" class="form-control" id="apellido" name="apellido">
			</div>
			
			<div class="mb-3">
				<label for="DNI" class="form-label">DNI</label>
				<input type="number" class="form-control" id="dni" name="dni">
			</div>
			
			
			<div class="mb-3">
				<label for="Mail" class="form-label">Mail</label>
				<input type="text" class="form-control" id="mail" name="mail">
			</div>
			
			
			<button class="btn btn-primary" type="submit">Agregar</button>
			
			
			
			
			
			
			</form>
		
		
		</div>
</div>






</body>
</html>