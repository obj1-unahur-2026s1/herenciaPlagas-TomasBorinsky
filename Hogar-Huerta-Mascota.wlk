class Hogar{
    var mugre
    const confort

    method esBueno(){
        return confort/2>=mugre
    }

    method recibirAtaque(unaPlaga){
        mugre+=unaPlaga.nivelDeDaño()
    }
}

class Huerta{
    var capacidadDeProduccion
    const nivel = nivelDeProduccion.nivel()

    method esBueno(){
        return capacidadDeProduccion>nivel
    }

    method recibirAtaque(unaPlaga){
        capacidadDeProduccion-=(unaPlaga.nivelDeDaño()*0.10)
        if (unaPlaga.puedeTransmitirEnfermedades()){
            capacidadDeProduccion-=10
        }
    }
}

class Mascota{
    var salud

    method esBueno(){
        return salud>250
    }

    method recibirAtaque(unaPlaga){
        if (unaPlaga.puedeTransmitirEnfermedades()){
            salud-=unaPlaga.nivelDeDaño()
        }
    }
}

object nivelDeProduccion{
    method nivel(){
        return 50
    }
}