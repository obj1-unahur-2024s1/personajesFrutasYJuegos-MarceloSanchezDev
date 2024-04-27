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
object maria{
	var endorfina = 100
	var amuleto = amuletoRojo
	
	method energia(){
		return 2 * endorfina + amuleto.energia()
	}
	 method esFeliz() {
        return endorfina > amuleto.energia()
    }
	
}
object pepe{
	const property energia = 77
	const property esFeliz = true
}
//amuletos
object amuletoRojo{var property energia = 14 }
object amuletoAmarillo{var property energia = 5 }
object amuletoVerde{var property energia = 7}


//ciudad

object ciudad {
	var property temperatura = 20 
}