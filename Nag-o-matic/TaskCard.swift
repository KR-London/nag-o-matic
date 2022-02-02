
import Foundation
import SwiftUI


struct Task {
    let task: String
    let icon: Image
    
    static let example = Task(task: "Wake up", icon: Image("wakeUp"))
}

struct TaskCard: View {
    let task: Task
    @State var name: User = User.Unknown
    @State var colour : Color = .yellow
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .fill(colour)
            
            HStack {
                task.icon
                Text(task.task)
                    .font(.body)
                    .foregroundColor(.black)
            }
            .padding(20)
            .multilineTextAlignment(.center)
        }
        .frame(width: 137, height: 43)
    }
}

struct TaskCard_Previews: PreviewProvider {
    static var previews: some View {
        TaskCard(task: Task.example).previewDevice("iPad (7th generation)")
    }
}

enum User: String{
    case Sam
    case Alex
    case Max
    case Unknown
}
