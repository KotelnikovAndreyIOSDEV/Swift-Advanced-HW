
import Foundation

/*
 
Задача 1

 История:

 Вы разрабатываете спутник для полета на Европу (спутник Юпитера). В вашей команде два ученых по космодинамике. Вы даете каждому из них задачу расcчитать количество топлива для достижения спутником цели.

Данные, которые они получают — это вес спутника и длина полета. Они должны вам предоставить свои алгоритмы расчета расхода топлива (это ваши замыкания). А вы по готовности алгоритмов делаете обработку данных и сравниваете результат (это ваша функция).

Алгоритм выполнения

Написать функцию с входящим параметром — замыкание (тип указан выше). Функция должна выводить в консоль результат выполнения замыкания.
Написать два замыкания (тип указан выше). Внутри должна быть математическая операция (на ваш выбор) над входящими значениями.
Вызвать функцию для первого замыкания и потом для второго замыкания.
Выполнить задание, не сокращая синтаксис языка.
 
 */


func calculateFuelConsumption ( weight kg: Double, length km: Double, _ calculate : (Double, Double) ->  Double ) -> Double {
        let result = calculate(kg, km)
        print("результат - \(result) м³")
        return result
        
    }
// первое замыкание
    let formulaOne = {( weight: Double, length: Double ) -> Double in
        return (weight * length) / 20    }
   
// второе замыкание
    let formulaTwo = {( weight: Double, length: Double ) -> Double in
        return (weight * length) / 30
    }
    

calculateFuelConsumption(weight: 400, length: 400, formulaOne)
calculateFuelConsumption(weight: 200, length: 200, formulaTwo)


/*

 Задача 2

 История:
 
 В вашем конструкторском бюро случилось ЧП и все компьютеры вышли из строя, но последние алгоритмы вы помните. Вы намерены добраться до ближайшего компьютера в соседнем селе и восстановить из своей памяти нужные данные. Ваша задача запомнить максимально краткую форму записи алгоритмов, чтобы все не смешалось в голове.

 Алгоритм выполнения
 
 Представить задание 1 в сокращенном виде (см. пункт лекции “Сокращения для замыканий”).
 
 */


// первое замыкание
    
let abbreviatedFormulOne: (Double, Double) -> Double = { ($0 * $1) / 20 }


// второе замыкание
let abbreviatedFormulaTwo: (Double, Double) -> Double = { ($0 * $1) / 30 }

calculateFuelConsumption(weight: 400, length: 400, abbreviatedFormulOne)
calculateFuelConsumption(weight: 200, length: 200, abbreviatedFormulaTwo)
