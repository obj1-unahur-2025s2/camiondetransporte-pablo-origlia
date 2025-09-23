object camion {
  const carga = []
  
  method cargar(algo) {
    carga.add(algo)
  }
  
  method cargarVariasCosas(listaCosas) {
    carga.addAll(listaCosas)
  }
  
  method descargar(algo) {
    carga.remove(algo)
  }
  
  method peso() = 1000 + carga.sum({ a => a.peso() })
  
  method pesosPares() = carga.all({ a => a.peso().even() })
  
  method hayAlgoDePeso(unPeso) = carga.any({ a => a.peso() == unPeso })
  
  method loPrimeroConPeligrosidad(nivelDePeligrosidad) = carga.find({ a => a.peligrosidad() == nivelDePeligrosidad })
  
  method cargaConPeligrosidadSuperiorA(nivelDePeligrosidad) = carga.filter(
    { a => a.peligrosidad() > nivelDePeligrosidad }
  )
  
  method contieneAlgoConPesoEntre(maximo, minimo) = carga.any({ a => a.peso().between(minimo, maximo) })
  
  method cosaMasPesada() = carga.max({ a => a.peso() })
  
  method estaExcedido() = self.peso() > 2500
  
  method puedeCircular(nivelDePeligrosidad) = (not self.estaExcedido()) and self.cargaConPeligrosidadSuperiorA(
    nivelDePeligrosidad
  ).isEmpty()
}