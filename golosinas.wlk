object bombon {
    var precio = 5
    var peso = 15
    const gusto = "Frutilla"
    const gluten = 0

    method mordisco() {
        peso = (peso * 0.8) - 1
        return peso
    }
}
//--------------------------------------------------

object alfajor {
    var precio = 12
    var peso = 300
    const gusto = "Chocolate"
    const gluten = 1

    method mordisco() {
        peso *= 0.8
        return peso 
    }
}

//--------------------------------------------------

object caramelo {
    var precio = 1
    var peso = 5
    const gusto = "Frutilla"
    const gluten = 0

    method mordisco (){
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

    method mordisco() {
        if (peso > 2){
            peso *= 0.9
        }
        return peso
    }
}

//--------------------------------------------------

object oblea {
    var precio = 5
    var peso = 250
    const gusto = "Vainilla"
    const gluten = 1

    method mordisco() {
        if (peso > 70) {
            peso *= 0.5
        } else {
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

    method peso(gramos) {
        peso = gramos
        pesoInicial = gramos
        return pesoInicial
        }
    
    method precio() {
        precio = pesoInicial * 0.5
        return precio
    }

    method mordisco() {
        peso -= 2
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

    method mordisco(golosina) {
        cantMordisco+=1
        if(cantMordisco <= 2){
            peso = peso - golosina.mordisco() - 2
        } else {
            peso = peso - golosina.mordisco()
        }
        return peso
    }
}

//--------------------------------------------------

object pastillaTuttiFrutti {
    var precio = 0
    var peso = 5
    var gusto = ""
    var gluten = 0 
    var cantMordisco = 0

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

    method mordisco() {
        cantMordisco+=1
        if (cantMordisco==1) {
            gusto = "Frutilla"
        } 
        if (cantMordisco == 2) {
            gusto = "Chocolate"
        }
        if (cantMordisco == 3) {
            gusto = "Naranja"
            cantMordisco = 0
        }
        return gusto
    }
}