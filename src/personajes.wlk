/** First Wollok example */
import frutas.*
import juegos.*
object martin {
	var property energia = 100
	var actividadesFisicasEnElDia = 0
	var tienehambre = true
	const property esFeliz = energia > 80 || (actividadesFisicasEnElDia >= 2 && not tienehambre)
	var despensa 
	method tomarAgua(){
		tienehambre = false
	}
	method hacerCompras(fruta){
		despensa = fruta
	}
	method alimentarse(){
		if(despensa != null){
		energia += despensa.energia()	
		despensa = null	
		tienehambre = false
		}
		else{
		self.tomarAgua()
		}
	}
	method hacerDeporte(deporte, tiempo){
		tienehambre = true
		deporte.minutos(tiempo)
		energia -= deporte.energiaConsumida()
		actividadesFisicasEnElDia += 1
	}
	method dormir(){
		energia += energia * 0.5
		if(despensa != null){despensa.madurar()}
	}
}


//ciudad

object ciudad {
	var property temperatura = 20 
}