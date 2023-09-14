import wollok.game.*

object pepita {
	var color = azul
	
	var property position = game.at(0,0)
	
	method moverseHaciaArriba(){
		self.position(position.up(1))
	}
	
	method moverseHaciaAbajo(){
		self.position(position.down(1))
	}
	
	method moverseHaciaIzquierda(){
		self.position(position.left(1))
	}
	
	method moverseHaciaDerecha(){
		self.position(position.right(1))
	}
	
	method nombre() = "Pepita, la golondrina"

	method image() = "pepitas/pepita_" + color.nombre() + ".png"
	
	

	method cambiarColorPrimario(){
		color = paleta.colorPrimarioAlAzar()		
	}
	
	method cambiarColorSecundario(){
		color = paleta.colorSecundarioAlAzar()		
	}
}

object pepito {
	method image() = "pepito.png"
	
	method position() = pepita.position().right(1)

	method nombre() = "Ing. Pepito"
}

object manolo {
	
	method position() = game.center()
	
	method image() = "manolo.png"
	
	method saludar(ave){
		game.say(self, "Hola " + ave.nombre())
	}
 }

 
 object paleta {
 	const colores = [azul, rojo, amarillo, violeta, naranja, verde]
 	
 	method coloresPrimarios() = colores.filter( {color => color.esPrimario()} ) 
 	method coloresSecundarios() = colores.filter( {color => not color.esPrimario()} )
 	
 	method colorSecundarioAlAzar() = self.coloresSecundarios().anyOne()
 	method colorPrimarioAlAzar() = self.coloresPrimarios().anyOne()
 }
 
 object azul {
 	method nombre() = "azul"
 	method esPrimario() = true
 
 }
 
  object rojo {
 	method nombre() = "rojo"
 	method esPrimario() = true
 }
 
 object amarillo {
 	method nombre() = "amarillo"
 	method esPrimario() = true
 }
 
  object verde {
 	method nombre() = "verde"
 	method esPrimario() = false
 }
 
   object violeta {
 	method nombre() = "violeta"
 	method esPrimario() = false
 }
 
object naranja {
 	method nombre() = "naranja"
 	method esPrimario() = false
 }
 
 object aviario {
 	const aves = [pepita, pepito]
 	
 	method saludoGeneral(){
 		aves.forEach( {ave => game.say(ave, "Hola soy " + ave.nombre())} )
 	}
 }