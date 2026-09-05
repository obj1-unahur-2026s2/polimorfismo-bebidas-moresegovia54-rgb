object tito{
   var peso = 70
   var bebidaConsumida = terere
   var dosis = 10
   
   //method bebidaConsumida() = bebidaConsumida
   method peso() = peso
   
   method cambiarPeso(nuevoPeso){
    peso = nuevoPeso
   }
   
   method consumir(cantidad,bebida){
    bebidaConsumida = bebida
    dosis = cantidad 
   }

   method velocidad(){
    return bebidaConsumida.rendimientoOtorgado(dosis,self)
    * 490 / peso
   }
}

object pepe{
  var peso = 80
  var bebidaConsumida = whisky
   var dosis = 10
   var edad = 30
   
   //method bebidaConsumida() = bebidaConsumida
   method peso() = peso
   
   method cambiarPeso(nuevoPeso){
    peso = nuevoPeso
   }

   method cumplirAnios(){
    edad = edad + 1
   }
   
   method consumir(cantidad,bebida){
    bebidaConsumida = bebida
    dosis = cantidad 
   }

   method velocidad(){
    return bebidaConsumida.rendimientoOtorgado(dosis,self)
    * 490 / peso - if (edad > 30) 10 else 0
   }
}

object whisky {
  method rendimientoOtorgado(dosisWhisky, unDeportista){
    return 0.9 ** dosisWhisky
  }
}

object terere{
  method rendimientoOtorgado(dosisTerere, unDeportista){
    return 1.max(0.1 * dosisTerere)
  }
}

object cianuro{
  method rendimientoOtorgado(dosisCianuro, unDeportista){
    // return if (tito.peso() > 70) tito.peso() * 0.01 + dosisCianuro else 0
    if (unDeportista.peso() > 70)
    {
      return unDeportista.peso() * 0.01 + dosisCianuro
    }
     return 0
  }
}