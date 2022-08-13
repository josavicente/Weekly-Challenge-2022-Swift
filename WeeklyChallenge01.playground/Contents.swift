/*
 * Reto #1
 * ¿ES UN ANAGRAMA?
 * Fecha publicación enunciado: 03/01/22
 * Fecha publicación resolución: 10/01/22
 * Dificultad: MEDIA
 *
 * Enunciado: Escribe una función que reciba dos palabras (String) y retorne verdadero o falso (Bool) según sean o no anagramas.
 * Un Anagrama consiste en formar una palabra reordenando TODAS las letras de otra palabra inicial.
 * NO hace falta comprobar que ambas palabras existan.
 * Dos palabras exactamente iguales no son anagrama.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func anagrama (palabraUno: String, palabraDos: String) -> Bool {
    
    let charPUno = Array(palabraUno)
    var charPDos = Array(palabraDos)
    var isAnagrama : Bool  = false
    
    if palabraUno == palabraDos || palabraUno.count != palabraDos.count {
        return isAnagrama
    }else{
        for index in 0...palabraUno.count-1{
            if let foundIndex = charPDos.firstIndex(of: charPUno[index]) {
                charPDos.remove(at: foundIndex)
                isAnagrama = true
            }else{
                isAnagrama = false
            }
        }
    }
    return isAnagrama
}

anagrama(palabraUno: "pasadena", palabraDos: "denapasa")
