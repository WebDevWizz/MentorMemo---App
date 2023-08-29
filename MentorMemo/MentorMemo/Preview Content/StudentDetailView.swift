//
//  StudentDetailView.swift
//  MentorMemo
//
//  Created by Riccardo Ciullini on 27/08/23.
//

//The View with the details of every student (this page will be open when you click on a student of the list on the main view)


import SwiftUI

struct StudentDetailView: View {
    
    @ObservedObject var myData = sharedData //Rif. necessario per accedere ai dati del file 'Data'
    
    var student : Student
    
    var body: some View {
        ZStack { //Metto sullo sfondo il colore preferito di ogni stud.
            
            student.favoriteColor
                .opacity(0.2)
                .ignoresSafeArea()
            
            VStack {
                //Ragiono innanzitutto sull'immagine:
                if student.imageName.isEmpty {
                    Image(systemName: "person.fill")
                        .resizable()
                        .opacity(0.4)
                        .foregroundColor(.black)
                        .aspectRatio(contentMode: .fit) //Adatta l'imm. al contenitore
                        .frame(width: 230, height: 230)
                        .clipShape(Circle())
                        .shadow(radius: 20)
                        .padding()
                }
                
                else {
                    Image(student.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 280, height: 280)
                        .clipShape(Circle())
                        .shadow(radius: 20)
                        .padding()
                }
                Text(student.name + "" + student.surname)
                    .bold()
                    .font(.title)
                    .foregroundColor(student.favoriteColor)
                    .padding(2)
                Text(student.description)
            }
        } //end ZStack
    }
}


//OSS: favoriteColor: .mint ==> colore predefinito
var defaultStudent = Student(name: "Name", surname: "Surname", favoriteColor: .mint, imageName: "LeonardoDiCaprio")





struct StudentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StudentDetailView(student: defaultStudent)
    }
}
