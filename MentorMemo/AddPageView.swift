//
//  AddPageView.swift
//  MentorMemo
//
//  Created by Riccardo Ciullini on 29/08/23.
//

import SwiftUI

struct AddPageView: View {
    @ObservedObject var myData = sharedData
    @State var name = ""
    @State var surname = ""
    @State var description = ""
    @State var color = Color.accentColor //default color
    @Environment(\.dismiss) private var dismiss
    
    
    var body: some View {
        NavigationStack{
            Form{
                Section("Name"){
                    TextField("Name", text: $name)
                }
                
                Section("Surname"){
                    TextField("Surname", text: $surname)
                }
                
                Section("Description"){
                    TextField("Student's description", text: $description)
                }
                
                Section{
                    ColorPicker("Favorite Color", selection: $color)
                }
            }//end Form
            .navigationTitle("New Student")
            .toolbar{
                ToolbarItem {//toolbar elements
                    Button("Add"){
                        myData.students.append(Student(name: name, surname: surname, favoriteColor: color, imageName: ""))
                        dismiss() //close the page after you add the student
                    }
                }
            }//end toolbar
        }
    }
}




struct AddPageView_Previews: PreviewProvider {
    static var previews: some View {
        AddPageView()
    }
}
