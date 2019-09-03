import comidas.*
import roque.*


object pepon {
	var energia = 0
	method energia() {
		return energia
	}
	method comer(cosa, cuanto) { energia += cosa.energiaPorGramo()* ( cuanto / 2 )}  
	method volar(kms) { energia -= ((kms*0.5) + 1)}    
	method haceLoQueQuieras() { self.volar(1) }  
}

// implementar el objeto entero, salvo haceLoQueQuieras que lo damos hecho
// ayuda: conviene ponerle dos atributos
object pipa {
	var kilometros = 0
	var gramos = 0
	method kmsRecorridos(){
		return kilometros
	}
	method gramosIngeridos(){
		return gramos
	}
	method comer(comida, cuanto) { gramos = gramos + cuanto }  
	method volar(kms) { kilometros = kilometros +  kms}    
	method haceLoQueQuieras() { }   // queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código
}
