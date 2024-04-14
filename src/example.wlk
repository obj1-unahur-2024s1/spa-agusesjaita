object olivia {
	var concentracion = 6
	
	method recibirMasaje() {
		concentracion = concentracion + 3
	}
	
	method discutir() {
		concentracion = concentracion - 1
	}
	
	method gradoDeConcentracion() = concentracion
	
	method banoDeVapor() {
		
	}
}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso = 55000
	
	method recibirMasaje() {
		esFeliz = true
	}
	
	method banoDeVapor() {
		peso = peso - 500
		tieneSed = true
	}
	
	method tomarAgua() {
		tieneSed = false
	}
	
	method comerFideos() {
		peso = peso + 250
		tieneSed = true
	}
	
	method correr() {
		peso = peso - 300
	}
	
	method verNoticiero() {
		esFeliz = false
	}
	
	method estaPerfecto() {
		return esFeliz  and not tieneSed and peso.between(50000, 70000)
	}
	
	method mediodiaEnCasa() {
		self.comerFideos() 
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro {
	var contractura = 0
	var grasaPiel = true
	
	method recibirMasaje() {
		contractura = 0.max(contractura - 2)
	}
	
	method banoDeVapor() {
		grasaPiel = false
	}
	
	method comerBigMac() {
		grasaPiel = true
	}
	
	method bajarAFosa() {
		grasaPiel = true
		contractura = contractura + 1
	}
	
	method jugarPaddle() {
		contractura = contractura + 3
	}
	
	method diaDeTrabajo() {
		self.bajarAFosa()
		self.comerBigMac()
		self.bajarAFosa()
	}
}

object spa {
	method atender(persona) {
		persona.recibirMasaje()
		persona.banoDeVapor()
	}
}