//
//  IntentHandler.swift
//  Prompt
//
//  Created by Kate Roberts on 02/02/2022.
//

import Intents
import Nag_o_matic


class IntentHandler: INExtension {
    
    
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        
        return self
    }
    
}

extension IntentHandler: INSetTaskAttributeIntentHandling {

    /// Coach as "Alice had breakfast - mark as done Nag-o-matic"
        ///Resolve
        ///
    func resolveTargetTask(for intent: INSetTaskAttributeIntent) async -> INTaskResolutionResult {
        var result :  INTaskResolutionResult
        
        if let task = intent.taskTitle{
            // parse the name away from the rest
            // check if it is on the tasklist
            
          
            let tasks = taskList().alexTasksText
            
            if tasks.contains(task.description){
                result = INTaskResolutionResult.success(with: intent.targetTask!)
            }
        }
        
        result  = INTaskResolutionResult.disambiguation(with: [intent.targetTask!])
        
        return result
    }
        ///Is task on the list?
        ///
        ///disambiguation the last three uncompleted tasks
    
        ///Confirm
        ///
        /// Is that task on the list?
        /// is this where disambiguation comes
    
    
        /// Handle
        /// mark task as done
    
    func handle(intent: INSetTaskAttributeIntent, completion: @escaping (INSetTaskAttributeIntentResponse) -> Void) {
        let response = INSetTaskAttributeIntentResponse(code: .success, userActivity: nil)
        
        response.modifiedTask = INTask(title: INSpeakableString(spokenPhrase: "Breakfast"), status: .unknown, taskType: .completable, spatialEventTrigger: .none, temporalEventTrigger: .none, createdDateComponents: .none, modifiedDateComponents: .none, identifier: nil)
        completion(response)
    }
    
}
