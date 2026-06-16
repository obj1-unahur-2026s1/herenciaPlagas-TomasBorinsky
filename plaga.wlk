class Plaga{
    var poblacion

    method puedeTransmitirEnfermedades(){
        return poblacion>=10 && self.condicionAdicional()
    }

    method condicionAdicional()
    method nivelDeDaño()
    method atacar(unObjeto){
        unObjeto.recibirAtaque(self)
        poblacion=poblacion*1.10
    }
}

class Cucaracha inherits Plaga{
    var pesoPromedio
    override method condicionAdicional(){
        pesoPromedio>=10
    }

    override method nivelDeDaño(){
        return poblacion/2
    }

    override method atacar(unObjeto){
        super(unObjeto)
        pesoPromedio+=2
    }
}

class Pulga inherits Plaga{
    override method nivelDeDaño(){
        return poblacion*2
    }

    override method condicionAdicional(){
        return true
    }
}

class Garrapata inherits Pulga{
    override method atacar(unObjeto){
        super(unObjeto)
        poblacion=poblacion*1.20
    }
}

class Mosquito inherits Plaga{
    override method nivelDeDaño(){
        return poblacion
    }

    override method condicionAdicional(){
        return poblacion%3==0
    }
}