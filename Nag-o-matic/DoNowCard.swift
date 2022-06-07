//
//  DoNowCard.swift
//  Good Morning Monday
//
//  Created by Kate Roberts on 02/02/2022.
//

import Foundation
import SwiftUI

struct DoNowCard: View {
    let task: Task
    @State var name: User = User.Unknown
    @State var colour : Color = .yellow
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .fill(colour)
            VStack{
            Spacer()
            HStack {
                task.icon
                Text(task.task)
                    .font(.body)
                    .foregroundColor(.black)
            }
           .padding(10)
            .multilineTextAlignment(.center)
                Button("Done!"){
                    print(task.task + "done!")
                    colour = .yellow
                }.frame(width: 95, height: 28, alignment: .center).border(.gray).padding().foregroundColor(.black)
              Spacer()
            }
        }
        .frame(width: 137, height: 78)
    }
}

struct DoNowCard_Previews: PreviewProvider {
    static var previews: some View {
        DoNowCard(task: Task()).previewDevice("iPad (7th generation)")
    }
}
