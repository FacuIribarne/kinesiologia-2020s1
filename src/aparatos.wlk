import pacientes.*

class Fierros {
	var property subirMusculo
	
	method disminuirDolor(persona) = 0
	method permisoDeUso(persona){ return true }
}
class Magneto inherits Fierros {
	override method disminuirDolor(persona){ return persona.nivelDeDolor() / 1.10}
}
class Bicicleta inherits Fierros {
	override method disminuirDolor(persona){ return persona.nivelDeDolor() - 4 }
	
	override method permisoDeUso(persona) { return persona.edad() > 8 }
	
	override method subirMusculo(persona) { return persona.nivelDeFortaleza() + 3
	}
}

class Minitramp inherits Fierros {
	override method permisoDeUso(persona) {return persona.nivelDeDolor() < 20 }	
	override method subirMusculo(persona){return persona.nivelDeFortaleza() * 1.10 }
	}
	