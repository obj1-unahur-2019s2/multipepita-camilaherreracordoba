import comidas.*

/*
 * Agregar
 * - los objetos que representan a los posibles destinos
 * - la capacidad de Pepita de visitar un destino, modificando su energía.
 */
 
object pepita {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method volar(kms) { energia -= kms + 10 }
	method visitar(lugar) { energia += lugar.energiaPorVisita() }
	
}

object patagonia {
	method energiaPorVisita() { return 30 }
}

object sierrasCordobesas {
	method energiaPorVisita() { return 70 }
}

object marDelPlata {
	var energia
	var temporada
	method laTemporadaEsAlta() {
		temporada = false
	}
	method laTemporadaEsBaja() {
		temporada = true
	}
	method energiaPorVisita() {
		if ( temporada )  {
			energia = 80
		}
		else {
			energia = -20
		}
		return energia }
}
//arreglar todo usando self	
	
	
	
	
	/*method indicarTemporada(temporadaActual){
		temporada = temporadaActual
	}
	
	method energiaPorVisita() {
		if (temporada == "baja"){
			energia = 80
		}
		else (temporada == "alta"){
			energia = -20
		}
		return energia }
}*/