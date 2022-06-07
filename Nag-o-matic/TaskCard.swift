
import Foundation
import SwiftUI


public class Task : ObservableObject{
    var task: String = ""
    var icon: Image
    var completed : Bool = false
    
    init(task: String, icon: Image, completed: Bool...){
        self.task = task
        self.icon = icon
        self.completed = completed.first ?? false
    }
    
    init(){
        task = "Wake up"
        icon = Image("wakeUp")
        completed = false
    }

}

public class Tasks : ObservableObject{
    var tasks : [Task]
    
    init(tasks : [Task]){
        self.tasks = tasks
    }
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
        TaskCard(task: Task()).previewDevice("iPad (7th generation)")
    }
}

enum User: String{
    case Sam
    case Alex
    case Max
    case Unknown
}
