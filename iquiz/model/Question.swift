//
//  Question.swift
//  iquiz
//
//  Created by Jefferson Machado on 14/12/25.
//

import Foundation

struct Question {
    var title: String
    var answers: [String]
    var correctlyAnswer: Int
}

let questions: [Question] = [
    Question(
        title: "Quem construiu a arca segundo a Bíblia?",
        answers: ["Moisés", "Noé", "Abraão"],
        correctlyAnswer: 1
    ),
    Question(
        title: "Quantos dias e noites choveu no dilúvio?",
        answers: ["7 dias", "40 dias e 40 noites", "100 dias"],
        correctlyAnswer: 1
    ),
    Question (
        title: "Quem foi engolido por um grande peixe?",
        answers: ["Jonas", "Pedro", "Elias"],
        correctlyAnswer: 0
    ),
    Question(
        title: "Onde nasceu Jesus?",
        answers: ["Jerusalém", "Nazaré", "Belém"],
        correctlyAnswer: 2
    ),
    Question(
        title: "Quem abriu o Mar Vermelho?",
        answers: ["Josué", "Moisés", "Arão"],
        correctlyAnswer: 1
    ),
    Question  (
        title: "Quantos mandamentos Deus deu a Moisés?",
        answers: ["7", "12", "10"],
        correctlyAnswer: 2
    ),
    Question(
        title: "Quem derrotou o gigante Golias?",
        answers: ["Saul", "Sansão", "Davi"],
        correctlyAnswer: 2
    ),
    Question(
        title: "Qual foi o primeiro milagre de Jesus?",
        answers: ["Multiplicação dos pães", "Cura de um cego", "Transformar água em vinho"],
        correctlyAnswer: 2
    ),
    Question (
        title: "Quem foi vendido como escravo por seus irmãos?",
        answers: ["José", "Jacó", "Isaque"],
        correctlyAnswer: 0
    ),
    Question(
        title: "Qual discípulo negou Jesus três vezes?",
        answers: ["João", "Pedro", "Tomé"],
        correctlyAnswer: 1
    )]
