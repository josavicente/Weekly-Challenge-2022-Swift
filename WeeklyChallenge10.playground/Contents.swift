import Foundation
/*
 * Reto #10
 * EXPRESIONES EQUILIBRADAS
 * Fecha publicación enunciado: 07/03/22
 * Fecha publicación resolución: 14/03/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea un programa que comprueba si los paréntesis, llaves y corchetes de una expresión están equilibrados.
 * - Equilibrado significa que estos delimitadores se abren y cieran en orden y de forma correcta.
 * - Paréntesis, llaves y corchetes son igual de prioritarios. No hay uno más importante que otro.
 * - Expresión balanceada: { [ a * ( c + d ) ] - 5 }
 * - Expresión no balanceada: { a * ( c + d ) ] - 5 }
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */



let symbols : [String:String] = ["{":"}", "(":")", "[":"]"]


func isBalanced(exp: String) -> Bool {
    
    let simbolos : [String:String] = ["{":"}", "(":")", "[":"]"]
   // Apilamos aperturas, desapilamos cierres. Al acabar la pila debe estar vacía
    var pila : [String] = []
    
    for char in exp {
        let simbolo = char.description
        let contiene = simbolos.keys.contains(simbolo)
        
        if contiene || simbolos.values.contains(simbolo) {
            if contiene {
                pila.append(simbolo)
            } else if pila.isEmpty || simbolo != simbolos[pila.popLast() ?? ""]{
                return false
            }
        }
    }
    
    return pila.isEmpty
}

let balanceada = "{ [ a * ( c + d ) ] - 5 }"
let noBalanceada = "{ a * ( c + d ) ] - 5 }"

isBalanced(exp: balanceada)
isBalanced(exp: noBalanceada)
