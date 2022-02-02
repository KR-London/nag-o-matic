//
//  IntentHandler.swift
//  Prompt
//
//  Created by Kate Roberts on 02/02/2022.
//

import Intents

class IntentHandler: INExtension, INSetTaskAttributeIntentHandling {
    func handle(intent: INSetTaskAttributeIntent, completion: @escaping (INSetTaskAttributeIntentResponse) -> Void) {
        let response = INSetTaskAttributeIntentResponse(code: .success, userActivity: nil)
        
        response.modifiedTask = INTask(title: INSpeakableString(spokenPhrase: "Breakfast"), status: .unknown, taskType: .completable, spatialEventTrigger: .none, temporalEventTrigger: .none, createdDateComponents: .none, modifiedDateComponents: .none, identifier: nil)
        completion(response)
    }
    
    
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        
        return self
    }
    
}
