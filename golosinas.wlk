object bombon inherits Name (precio 5) {
    var property peso = 15
    var property sabor = 'Frutilla'
    var property gluten = false

    method mordisco () {
        if (peso != 0) {
            peso = (peso * 0.8) - 1
            return peso
            }
        else return 'No hay mas bombon'
    }
}

object alfajor {
    var property precio = 12
    var property peso = 300
    var property sabor = 'Chocolate'
    var property gluten = true

    method mordisco () {
        if (peso != 0) {
            peso = (peso * 0.8)
            return peso
            }
        else return 'No hay mas alfajor'
    }
}

object caramelo {
    var property precio = 1
    var property peso = 5
    var property sabor = 'Frutilla'
    var property gluten = false

    method mordisco () {
        if (peso != 0) {
            peso -= 1
            return peso
            }
        else return 'No hay mas caramelo'
    }
}

object chupetin {
    var property precio = 2
    var property peso = 7
    var property sabor = 'Naranja'
    var property gluten = false

    method mordisco () {
        if (peso != 1) {
            peso = (peso * 0.9)
            return peso
            }
        else return peso
    }
}

object oblea {
    var property precio = 5
    var property peso = 250
    var property sabor = 'Vainilla'
    var property gluten = true

    method mordisco () {
        if (peso > 70) {
            peso = (peso / 2)
            return peso
            }
        else if (peso < 0) return 'No hay mas oblea'
        else {
            peso = (peso / 4)
            return peso
        }
    }
}

object chocolatin {
    var property precio = ''
    var pesoInicial = ''
    var primerPeso = ''
    var property sabor = 'Chocolate'
    var property gluten = true

    method peso (valor) {
        pesoInicial = valor
        primerPeso = valor
        precio = 0.50 * valor
        return primerPeso
    }

    method mordisco () {
        if (primerPeso != 0) {
            primerPeso -= 2
            return primerPeso
            }
        else return 'No hay mas chocolatin'
    }
}

object golosinaBan {
    var eleccion = ''
    var precio = ''
    var bano = 4
    var peso = ''
    var sabor = ''
    var gluten = ''

    method golosinaBase (nombre) {
        eleccion = nombre
        peso = nombre.peso() + bano
        precio = nombre.precio() + 2
        sabor = nombre.sabor()
        gluten = nombre.gluten()
    }

    method mordisco () {
        eleccion.mordisco()
        if (bano != 0) {
            bano -= 2
            return bano
            }
        return ''
    }
}

object tutti {
    var precio = ''
    var property peso = 5
    var sabor = 'Frutilla'
    var gluten = ''

    method tieneGluten (valor) {
        gluten = valor
        if (gluten) {precio = 10} else {precio = 7}
        
    }

    method mordisco () {
        if (sabor == 'Frutilla') {
            sabor = 'chocolate'
            return sabor
        } else if (sabor == 'chocolate') {
            sabor = 'naranja'
            return sabor
        } else {
        sabor = 'frutilla'
        return sabor
        }
    }
}

class Name {
    var precio
}