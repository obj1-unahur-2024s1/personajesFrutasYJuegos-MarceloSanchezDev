//frutas
object manzana{
	var property estaRoja = false
	var property energia = if(estaRoja)14 else 7
	method madurar(){
		estaRoja = true
	}
}
object mandarina{
	var property gramos = 60
	var property energia = (gramos / 10) * 2
	method madurar(){
		gramos -= gramos * 0.10
	}
}
object banana {
	var property energia = 5
	method madurar(){
		return "Nada"
	}
}