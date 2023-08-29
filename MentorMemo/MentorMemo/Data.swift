//
//  Data.swift
//  MentorMemo
//
//  Created by Riccardo Ciullini on 27/08/23.
//

//A simple file with all the informations about the students and the teams

import SwiftUI

class SharedData : ObservableObject {
    @Published var students = [
        Student(name: "Brad", surname: "Pitt", favoriteColor: Color.yellow, imageName: "BradPitt", description: "Hello, I'm Brad!"),
        Student(name: "Leonardo", surname: "DiCaprio", favoriteColor: Color.blue, imageName: "LeonardoDiCaprio", description: "Hello, I'm Leo!"),
        Student(name: "Margot", surname: "Robbie", favoriteColor: Color.pink, imageName: "MargotRobbie", description: "Hi Barbie!"),
        Student(name: "Florence", surname: "Pugh", favoriteColor: Color.black, imageName: "FlorencePugh")
    ]
    
    @Published var teams = [
        Team(name: "Blue", image: "blue", students: [
            Student(name: "Ryan", surname: "Gosling", favoriteColor: Color.green),
            Student(name: "Matthew", surname: "McConaughey", favoriteColor: Color.red),
            Student(name: "Gal", surname: "Gadot", favoriteColor: Color.brown),
            Student(name: "Amy", surname: "Adams", favoriteColor: Color.white)
        ]),
        
        Team(name: "Orange", image: "orange", students: [
            Student(name: "Pamela", surname: "Anderson", favoriteColor: Color.yellow),
            Student(name: "Sebastian", surname: "Stan", favoriteColor: Color.gray),
            Student(name: "Jennifer", surname: "Connelly", favoriteColor: Color.blue),
            Student(name: "Al", surname: "Pacino", favoriteColor: Color.brown)
        ]),
        
        Team(name: "Pink", image: "pink", students: [
            Student(name: "Zendaya", surname: "Coleman", favoriteColor: Color.blue),
            Student(name: "Sydney", surname: "Sweeney", favoriteColor: Color.yellow),
            Student(name: "Alexa", surname: "Demie", favoriteColor: Color.black),
            Student(name: "Lily", surname: "Depp", favoriteColor: Color.purple)
        ]),
        
        Team(name: "Red", image: "red", students: [
            Student(name: "Chris", surname: "Evans", favoriteColor: Color.blue),
            Student(name: "Tom", surname: "Holland", favoriteColor: Color.red),
            Student(name: "Robert", surname: "Downey Jr.", favoriteColor: Color.red),
            Student(name: "Chris", surname: "Hemsworth", favoriteColor: Color.yellow)
        ])
    ]
}

var sharedData = SharedData() //Riferimento ai dati
