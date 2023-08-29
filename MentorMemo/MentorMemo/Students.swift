//
//  Students.swift
//  MentorMemo
//
//  Created by Riccardo Ciullini on 27/08/23.
//

//A file with the STRUCTS for a Student and for a Group

import SwiftUI

//Student struct
struct Student : Identifiable {
    var id = UUID()
    var name : String
    var surname : String
    var favoriteColor : Color
    var imageName : String = "No image available"
    var description : String = "No description available"
}

//Team struct
struct Team : Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var students : [Student]
}
