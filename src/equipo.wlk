import personajes.*
object equipo {
	//completar
	var property jugadorDerecho
	var property jugadorIzquierdo 
	var property directorTecnico
	
	method asignarJugadorDerecho(jugador){
		self.jugadorDerecho(jugador)
	}
	method asignarJugadorIzquierdo(jugador){
		self.jugadorIzquierdo(jugador)
	}
	method intercambiarJugadores(jugadorDer,jugadorIzq){
		self.jugadorIzquierdo(jugadorDer)
		self.jugadorDerecho(jugadorIzq)
	}
	method asignarDT(director){
		self.directorTecnico(director)
	}
	method cambiarDT(director){
		if (directorTecnico.energia() < director.energia()){
			 self.directorTecnico(director)
		}
	}
	method promedioDeFelicidadDelEquipo(){
		return (jugadorDerecho.energia() + jugadorIzquierdo.energia() + directorTecnico.energia()) /3
	}
	method estaElEquipoFeliz(){
		return jugadorDerecho.esFeliz() && jugadorIzquierdo.esFeliz() && directorTecnico.esFeliz()
	}
}
