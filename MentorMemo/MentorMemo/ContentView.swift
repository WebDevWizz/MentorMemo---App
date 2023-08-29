//
//  ContentView.swift
//  MentorMemo
//
//  Created by Riccardo Ciullini on 27/08/23.
//

import SwiftUI

struct View1: View{
    var body: some View{
        Text("View 1")
    }
}

struct View2: View{
    var body: some View{
        Text("View 2")
    }
}


struct ContentView: View {
    @ObservedObject var myData = sharedData
    @State var ShowAddPage = false //token for adding a student
    @State var search = ""
    
    //Research code
    var filteredStudents: [Student]{
        if search .isEmpty {
            return myData.students
        }
        else {
            return myData.students.filter{
                student in
                student.name.localizedCaseInsensitiveContains(search)
            }
        }
    }//end
    
    
    
    var body: some View {
        NavigationStack{
            VStack{
                List{
                    ForEach(filteredStudents) { index in
                        NavigationLink(destination: StudentDetailView(student: index)){
                            //Set properties
                            HStack{
                                //person symbol
                                Image("person")
                                    .foregroundColor(index.favoriteColor).font(.system(size: 20))
                                
                                Text(index.name).bold()
                                Text(index.surname).foregroundColor(.gray)
                            }//end HSTACK
                        }//end NavLink
                    }//end ForEach
                    .onDelete{ student in myData.students.remove(atOffsets: student)}
                }//end List
            }//end VStack
            .navigationTitle("Students")
            .sheet(isPresented: $ShowAddPage){
                AddPageView()
            }
            .scrollDisabled(false)
            .toolbar{
                ToolbarItem(placement: .automatic){
                    Button("+"){
                        ShowAddPage = true
                    }.font(.system(size:30))
                }
            }
        }//end NavigationStack
        .searchable(text: $search, prompt: "Search")
    }//end body
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
