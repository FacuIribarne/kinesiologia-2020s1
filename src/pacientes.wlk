import aparatos.*

class Paciente {
	var property sesion = []
	var property edad 
	var property nivelDeFortaleza
	var property nivelDeDolor 

		method puedeUsarAparato(fierro){
			return fierro.condicion(self)
		}
		
		method puedeUsarlo(fierro){
			nivelDeDolor = fierro.disminuirDolor(self)
			nivelDeFortalezaMusculo = fierro.aumentaFortaleza(self)
		}
		method puedeHacerEjercicio(){return sesion.all({fierro => self.puedeUsarAparato(fierro)})}
		
		method hacerEjercicio(){ sesion.forEach({fierro => self.puedeUsarlo(fierro)})}
}