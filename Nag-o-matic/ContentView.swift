//
//  ContentView.swift
//  Nag-o-matic
//
//  Created by Kate Roberts on 02/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack{
            Text("Good Morning Monday!").font(.largeTitle).bold().frame(width: 500, height: 106, alignment: .leading)
            Spacer()
            HStack{
                Text("").foregroundColor(.black).font(.title).frame(width: 149, height: 60, alignment: .top)
                Text("Alex").foregroundColor(.black).font(.title).frame(width: 149, height: 60, alignment: .top)
                Text("Sam").foregroundColor(.black).font(.title).frame(width: 149, height: 60, alignment: .top)
                Text("Max").foregroundColor(.black).font(.title).frame(width: 149, height: 60, alignment: .top)
            }
            HStack{
                VStack{
                    Text("7:00").foregroundColor(.gray).font(.title).frame(width: 149, height: 60, alignment: .top)
                    Text("7:10").foregroundColor(.gray).font(.title).frame(width: 149, height: 60, alignment: .top)
                    Text("7:20").foregroundColor(.gray).font(.title).frame(width: 149, height: 60, alignment: .top)
                    Text("7:30").foregroundColor(.gray).font(.title).frame(width: 149, height: 60, alignment: .top)
                    Text("7:40").foregroundColor(.gray).font(.title).frame(width: 149, height: 60, alignment: .top)
                    Text("7:50").foregroundColor(.gray).font(.title).frame(width: 149, height: 60, alignment: .top)
                    Text("8:00").foregroundColor(.gray).font(.title).frame(width: 149, height: 60, alignment: .top)
                    Text("8:10").foregroundColor(.gray).font(.title).frame(width: 149, height: 60, alignment: .top)
                    Text("8:20").foregroundColor(.gray).font(.title).frame(width: 149, height: 60, alignment: .top)
                    Text("8:30").foregroundColor(.gray).font(.title).frame(width: 149, height: 60, alignment: .top)
                }
                VStack{
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                        // TaskCard(task: Task.example).padding(8.5)
                }
                VStack{
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                        // TaskCard(task: Task.example).padding(8.5)
                }
                VStack{
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                    TaskCard(task: Task.example).padding(8.5)
                        //  TaskCard(task: Task.example).padding(8.5)
                }
            }
                // Divider().padding()
            Spacer()
            ZStack {
                Rectangle().fill(Color.white).frame(width: 900, height: 150, alignment: .center).shadow(color: .gray, radius: 10, x: 0, y: 0)
                HStack{
                    Text("Do Now").foregroundColor(.gray).font(.title).frame(width: 149, height: 60, alignment: .center)
                    DoNowCard(task: Task.example).padding(8.5)
                    DoNowCard(task: Task.example).padding(8.5)
                    DoNowCard(task: Task.example).padding(8.5)
                }
            }
            Spacer()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPad (7th generation)")
    }
}
