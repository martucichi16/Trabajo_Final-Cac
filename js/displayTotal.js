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