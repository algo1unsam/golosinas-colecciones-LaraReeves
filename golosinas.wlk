object bombon {
    var precio = 5
    var peso = 15
    const gusto = "Frutilla"
    const gluten = 0
    var pesoMordido = 0

    method precio(){return precio}
    method peso(){return peso}
    method gusto(){return gusto}
    method gluten(){return gluten}

    method mordisco() {
        pesoMordido = peso * 0.2 + 1
        peso = (peso * 0.8) - 1
        return pesoMordido
    }
}
//--------------------------------------------------

object alfajor {
    var precio = 12
    var peso = 300
    const gusto = "Chocolate"
    const gluten = 1
    var pesoMordido = 0

    method precio(){return precio}
    method peso(){return peso}
    method gusto(){return gusto}
    method gluten(){return gluten}

    method mordisco() {
        pesoMordido = peso * 0.2
        peso *= 0.8
        return pesoMordido
    }
}

//--------------------------------------------------

object caramelo {
    var precio = 1
    var peso = 5
    const gusto = "Frutilla"
    const gluten = 0
    var pesoMordido = 0

    method precio(){return precio}
    method peso(){return peso}
    method gusto(){return gusto}
    method gluten(){return gluten}

    method mordisco (){
        pesoMordido = 1
        peso -= 1
        return peso
    }
}

//--------------------------------------------------

object chupetin {
    var precio = 2
    var peso = 7
    const gusto = "Naranja"
    const gluten = 0
    var pesoMordido = 0

    method precio(){return precio}
    method peso(){return peso}
    method gusto(){return gusto}
    method gluten(){return gluten}

    method mordisco() {
        if (peso > 2){
            pesoMordido = peso * 0.1
            peso *= 0.9
        }
        return pesoMordido
    }
}

//--------------------------------------------------

object oblea {
    var precio = 5
    var peso = 250
    const gusto = "Vainilla"
    const gluten = 1
    var pesoMordido = 0

    method precio(){return precio}
    method peso(){return peso}
    method gusto(){return gusto}
    method gluten(){return gluten}

    method mordisco() {
        if (peso > 70) {
            pesoMordido = peso * 0.5
            peso *= 0.5
        } else {
            pesoMordido = peso * 0.25
            peso *= 0.75
        }
        return peso
    }
}

//--------------------------------------------------

object chocolatin {
    var precio = 0
    var peso = 0
    var pesoInicial = 0
    const gusto = "Chocolate"
    const gluten = 1
    var pesoMordido = 0

    method gusto(){return gusto}
    method gluten(){return gluten}
    method peso(){return peso}

    method pesoInicial(gramos) {
        pesoInicial = gramos
        peso = pesoInicial
        return pesoInicial
        }
    
    method precio() {
        precio = pesoInicial * 0.5
        return precio
    }

    method mordisco() {
        pesoMordido = 2
        peso -= 2
        return pesoMordido
    }
}

//--------------------------------------------------

object golosinaBaniada {
    var precio = 0
    var peso = 0
    var gusto = ""
    var gluten = 0
    var cantMordisco = 0

    method peso(golosina) {
        peso = golosina.peso() + 4
        return peso
    }

    method precio(golosina) {
        precio = golosina.precio() + 2
        return precio
    }

    method gusto(golosina) {
        gusto = golosina.gusto()
        return gusto
    }

    method gluten(golosina) {
        gluten = golosina.gluten()
    }

    method precio(){return precio}
    method peso(){return peso}
    method gusto(){return gusto}
    method gluten(){return gluten}

    method mordisco(golosina) {
        if(cantMordisco <= 2){
            peso = peso - golosina.mordisco() - 2
        } else {
            peso = peso - golosina.mordisco()
        }
        return peso
        cantMordisco += 1
    }
}

//--------------------------------------------------

object pastillaTuttiFrutti {
    var precio = 0
    var peso = 5
    var gusto = "Frutilla"
    var gluten = 0 
    var cantMordisco = -1

    method peso() {return peso}
    method gluten() {return gluten}
    method gusto() {return gusto}

    method gluten(tiene){
        gluten = tiene 
        return gluten
    }

    method precio() {
        if(gluten == 0){
            precio = 7
        } else {
            precio = 10
        }
        return precio
    }

    method sabor() {
        cantMordisco = cantMordisco + 1
        if (cantMordisco == 0) {
            gusto = "Frutilla"
        }
        if (cantMordisco == 1) {
            gusto = "Chocolate"
        }
        if (cantMordisco == 2) {
            gusto = "Naranja"
            cantMordisco = -1
        }
        return gusto
    }

    method mordisco(){
        return 0
    } 
}