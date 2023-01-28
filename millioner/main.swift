//
//  main.swift
//  millioner
//
//  Created by imran on 21.01.2023.
//

import Foundation

var questions: [[Int:String]:[String:[String:Bool]]] = [[10000:"Не откладывай на завтра, что можно..."] : ["a":["Сделать сегодня":true], "b":["Сделать завтра":false], "c":["Сделать потом":false], "d":["Никогда не делать":false]],[30000:"Что говорит человек, когда замечает нечто необычное?"] : ["a":["Залетело в рот":false], "b":["Накапало в уши":false], "c":["Попало в лоб":false], "d":["Бросилось в глаза":true]],[50000:"Что помогает туристу ориентироваться в незнакомом городе?"] : ["a":["Путеводитель":true], "b":["Путеводочная звезда":false], "c":["Путепровод":false], "d":["Путекладчик":false]],[70000:"Какой наряд прославил баснописец Крылов? "] : ["a":["Ивашкин армяк":false], "b":["Машкин сарафан":false], "c":["Тришкин кафтан":true], "d":["Прошкин зипун":false]], [90000:"В гонке вы обош﻿ли человека, который был на втором месте. На каком месте, в таком случае, вы?"] : ["a":["1":false], "b":["2":true],  "c":["3":false], "d":["4":false]], [110000:"Что не бывает морским?"] : ["a":["Узел":false], "b":["Гребешок":false],  "c":["Огурец":false], "d":["Рельс":true]], [130000:"Где в Древгней Греции можно было увидеть надпись:'Здесь живут мёртые и говорят немые?'"] : ["a":["В больницах":false], "b":["На кладбищах":false],  "c":["В библиотеках":true], "d":["В тюрмах":false]],[150000:"Сколько раз в день часовая и минутная стрелка образуют прямой угол?"] : ["a":["22":false], "b":["44":true],  "c":["48":false], "d":["64":false]],[170000:"Сегодня я купил тюль. Мне надо ... отнести бабушке"] : ["a":["Её":false], "b":["Его":true],  "c":["их":false], "d":["это":false]],[190000:"Корень из 1369"] : ["a":["33":false], "b":["37":true],  "c":["43":false], "d":["47":false]]]
//[[Цена:Вопрос]:[Вариант:[Ответ:Правильность]]]
var g = 10000
var q = 0
var i = 0
var isFinish = false
var win = 0
while i < questions.count{
    if isFinish == false{
        for (voprosy,otvety) in questions{
            for (cena,vopros) in voprosy{
                if isFinish == false{
                    if cena == g{
                        print("Вопрос на \(g) сом")
                        print(vopros)
                        for (varyant,otvet) in otvety{
                            for (answer,bul) in otvet{
                                print("\(varyant):\(answer)")
                            }
                        }
                        var vashOtvet = readLine()!
                        for (varyant,otvet) in otvety{
                            if isFinish == false{
                                for (answer,bul) in otvet{
                                    if isFinish == false{
                                        if vashOtvet == varyant && bul == true{
                                            print("Верно")
                                            win += g
                                            print("Ваш счёт - \(win) сом")
                                            break
                                        }
                                        for (answer,bul) in otvet{
                                            if vashOtvet == varyant && bul != true{
                                                print("Неверно.ВЫ ПРОИГРАЛИ!")
                                                print("Ваш счёт - \(win) сом")
                                                isFinish = true
                                                break
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        g += 20000
                        i += 1
                    }
                }
            }
        }
    }
    else{
        break
    }
    if win == 1000000{
        print("Поздравляю!!! Вы стали миллионером!")
    }
}
