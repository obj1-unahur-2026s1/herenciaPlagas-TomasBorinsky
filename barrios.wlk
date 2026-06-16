class Barrio{
    const lista=[]

    method agregarUnaCosaAUnBarrio(unaCosa){
        lista.add(unaCosa)
    }

    method eliminarUnaCosaDelBarrio(unaCosa){
        lista.remove(unaCosa)
    }

    method elBarrioEsCopado(){
        return self.cantidadDeElementosBuenos() > lista.size() / 2
    }

    method cantidadDeElementosBuenos(){
        return lista.count({e=>e.esBueno()})
    }

    method elBarrioEsAtacadoPor(unaPlaga){
        lista.forEach({c => unaPlaga.atacar(c)})
    }
}