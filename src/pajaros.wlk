class PajarosComunes{
	var ira = 0
	var fuerza = 0
	var cantidadEnojos =0
	//PUNTO 1A
	method fuerza()= fuerza
	method ira()= ira
	
	//PUNTO 1B
	method enojarse(){fuerza = ira*2
		cantidadEnojos += 1
	}
	
	method disminuirIra(){ira -5}
}

/*class pajaroRencoroso inherits PajarosComunes{
	method enojarse(multiplicador){ fuerza= ira  * multiplicador * cantidadEnojos}
}*/

object red inherits PajarosComunes{
	override method enojarse(){fuerza= ira  * 10 * cantidadEnojos}
	//Después pensar cómo lo pasaría por parámetro el 10
	}

object bomb inherits PajarosComunes{
	var fuerzaLimite = 9000
	method fuerzaLimite(nuevaFuerza){
		fuerzaLimite = nuevaFuerza
	}
	override method enojarse(){
		super().min(fuerzaLimite)
	
	}		
}

object chuck inherits PajarosComunes{
	var velocidad  
	//Hacer la cuenta de la velocidad
	
	override method disminuirIra(){}
}

object terence inherits PajarosComunes{
	 method enojarse(multiplicador){fuerza= ira  * multiplicador * cantidadEnojos}
	// Debe utilizar el metodo enojarse()
}

object matilda inherits PajarosComunes{
	const huevos = []
	method fuerzaHuevos()= huevos.sum({huevo => huevo.fuerza()})
	override method enojarse(){
		huevos.add(new Huevo(peso = 2))
	}
		
}

class Huevo{
	var peso
	method fuerza()= peso
}

object isla{
	const pajaros = []
	var cerditosInvadidos = 0
	var homenajeados = []
	method cantidadDeVecesAOcurrir()= (cerditosInvadidos / 100).truncate(0)
	method obtenerPajarosFuertes()= pajaros.filter({pajaro => pajaro.fuerza()> 50})
	method fuerza()= self.obtenerPajarosFuertes().sum({pajaro => pajaro.fuerza()> 50})
	method sesionDeManejoDeLaIra(){
		pajaros.forEach({pajaro=> pajaro.disminuirIra()})
	}
	method invasionDeCerditos(){
		self.cantidadDeVecesAOcurrir().times(pajaros.forEach({pajaro => pajaro.enojarse()}))
		
	}
	}
	
	
	/*method homenajeados()= find
	
	method fiestaSorpresa(){
		for
	}
	
}*/
