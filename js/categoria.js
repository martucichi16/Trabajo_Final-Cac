const select = document.getElementById("categoria").innerHTML;
const categoria = document.getElementById("categoriaDisplay").innerHTML;
const btnUpdate=document.getElementById("btnUpdate");

console.log(select);

function categoriaSeleccionada(catg, html_options) {
	
	if (catg.trim() == "estudiante") {
		html_options = "<option value='no'>Sin categoría</option><option value='estudiante' selected>Estudiante</option><option value='trainee'>Trainee</option><option value='junior'>Junior</option>";
	} else if (catg.trim() == "trainee") {
		html_options = "<option value='no'>Sin categoría</option><option value='estudiante'>Estudiante</option><option value='trainee' selected>Trainee</option><option value='junior'>Junior</option>";
	} else if (catg.trim() == "junior") {
		html_options = "<option value='no'>Sin categoría</option><option value='estudiante'>Estudiante</option><option value='trainee'>Trainee</option><option value='junior' selected>Junior</option>";
	} else {
		html_options = "<option value='no' selected>Sin categoría</option><option value='estudiante'>Estudiante</option><option value='trainee'>Trainee</option><option value='junior'>Junior</option>";
	}
};

btnUpdate.addEventListener("click", categoriaSeleccionada(categoria, select));