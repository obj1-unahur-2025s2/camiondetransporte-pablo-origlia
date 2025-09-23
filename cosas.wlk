object knightRider {
  method peso() = 500
  
  method peligrosidad() = 10
}

object bumblebee {
  var esAuto = true
  
  method peso() = 800
  
  method transformar() {
    esAuto = not esAuto
  }
  
  method peligrosidad() = if (esAuto) 15 else 30
}

object paqueteDeLadrillos {
  var cantidad = 0
  
  method cantidadDeLadillos(unaCantidad) {
    cantidad = unaCantidad
  }
  
  method peso() = 2 * cantidad
  
  method peligrosidad() = 2
}

object arenaAGranel {
  var peso = 0
  
  method peso(unPeso) {
    peso = unPeso
  }
  
  method peso() = peso
  
  method peligrosidad() = 1
}

object bateriaAntieaerea {
  var tieneMisiles = false
  
  method cargar() {
    tieneMisiles = true
  }
  
  method descargar() {
    tieneMisiles = false
  }
  
  method peso() = 200 + if (tieneMisiles) 100 else 0
  
  method peligrosidad() = if (tieneMisiles) 100 else 0
}

object contenedorPortuario {
  const contenido = []
  
  method peso() = 100 + contenido.sum({ a => a.peso() })
  
  method tieneContenido() = not contenido.isEmpty()
  
  method peligrosidad() = contenido.max({ a => a.peligrosidad() }).peligrosidad()
}

object residuoRadioactivo {
  var property peso = 0
  
  method peligrosidad() = 200
}

object embalajeDeSeguridad {
  var property cosa = null
  
  method peso() = cosa.peso()
  
  method peligrosidad() = cosa.peligrosidad() / 2
}