//
//  TeamsView.swift
//  MentorMemo
//
//  Created by Riccardo Ciullini on 29/08/23.
//

import SwiftUI

struct TeamsView: View {
    @ObservedObject var myData = sharedData
    var body: some View {
        NavigationStack{
            ScrollView(){
                VStack(){
                    ForEach(myData.teams) {
                        //voglio stampare il
                        team in
                        ZStack(alignment: .bottomLeading){
                            Image(team.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(height: 200) //da' alle card un layout in orizzontale di 200
                            
                            //metto ogni sfondo in una card
                            Rectangle().fill(LinearGradient(colors: [.clear, .black.opacity(0.6)], startPoint: .top, endPoint: .bottom))
                            
                            VStack(alignment: .leading) {
                                Text(team.name)
                                    .font(.title)
                                    .bold()
                                
                                //Stampo ora i nomi degli studenti che formano il team
                                ForEach(myData.students){
                                    student in
                                    Text(student.name + "" + student.surname)
                                }
                            }//end VStack
                            .foregroundColor(Color.white) //cambio colore dei nomi e cognomi
                            .padding()
                        }//end ZStack
                        .cornerRadius(15)
                        .padding(.horizontal)
                    }
                }
            }//end Scroll
            .navigationBarTitle("Teams")
        }//end Nav
    }//end body
}








struct TeamsView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsView()
    }
}
