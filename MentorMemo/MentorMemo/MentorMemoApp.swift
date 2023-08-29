//
//  MentorMemoApp.swift
//  MentorMemo
//
//  Created by Riccardo Ciullini on 27/08/23.
//

import SwiftUI

@main
struct MentorMemoApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                ContentView()
                    .tabItem{
                        Text("Student")
                        Image(systemName: "person.fill")
                    }
                TeamsView()
                    .tabItem{
                        Text("Teams")
                        Image(systemName: "person.3.fill")
                    }
            }
        }
    }
}
