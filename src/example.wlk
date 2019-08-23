object alfajorDeDulceDeLeche {
	const precio = 100
	
	method precio() {
		return precio
	}
	method esRico() {
		return true
	}
	
}


object bombonDeFruta{
	var peso = 120
	
	method precio() {
		return peso * 0.987	
	}
}

object juan {
	
	var producto = alfajorDeDulceDeLeche
	
	method vendeBarato(){
		return producto.precio() < 100 
	}
	method cambiarAlfajor(nuevoProducto){
		producto = nuevoProducto
	}
	method queVendes(){ return producto}
} 

object maria {
	
	var productoContaminado = bombonDeFruta
	
	method decomisaA(vendedor){
		return vendedor.queVendes() == productoContaminado
	}
}


object remera {
	var recargo = 0
	
	method precio(){ return 200 + recargo}
	
	method recargar(valor){
		recargo = recargo + valor
	}
}
