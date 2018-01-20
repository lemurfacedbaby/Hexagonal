//
//  FirebaseAdapter.swift
//  EstimoteProject
//
//  Created by Bryan Cooper on 1/19/18.
//  Copyright © 2018 Bryan Cooper. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuthAdapter

//The
class FirebaseRealtimeAdapter: NSObject  {
    
    public var userId: String
    public var authenticationManager: FirebaseAuthAdapter? = FirebaseAuthAdapter()
    
    public override init() {
        FirebaseApp.configure()
        if (authenticationManager) {
            userId = authenticationManager?.getAnonymousId()
        }
    }
}
