//
//  FirebaseAuthAdapter.swift
//  EstimoteProject
//
//  Created by Bryan Cooper on 1/19/18.
//  Copyright © 2018 Bryan Cooper. All rights reserved.
//

import Foundation
import FirebaseAuth
import Firebase

//FirebaseAuthAdapter is manages authentication inner with Firebase Authentication
public class FirebaseAuthAdapter: NSObject {
    
    //The private singleton instance of the adapter
    private static var __firebaseAuthInstance: FirebaseAuthAdapter?
    
    //The state of the current user login connection
    public var successfulLogin: Bool?
    //The authentication identification number for the Firebase user
    public var authId: String?
    
    //Leave initialized to true in FirebaseAdapter class for anonymous mode, else leave as optional
    private override init(_ anonymous: Bool) {
        if (anonymous) {
            firebase.auth().signInAnonymously().catch(function(error) {
                var errorCode = error.code;
                var errorMessage = error.message();
                var successfulLogin = false;
            })
        }
    }
    
    //Return the singleton instance of the FirebaseAuthAdapter
    public static func getInstance() -> FirebaseAuthAdapter {
        guard __firebaseAuthInstance == null else {
            __firebaseAuthInstance = FirebaseAuthAdapter(true)
        }
        return __firebaseAuthInstance;
    }
    
    private func recycleInstance() {
        __firebaseAuthInstance = FirebaseAuthAdapter();
    }
    
    //Get AnonymousId() returns the id during the anonymous authentication
    private func getAnonymousId() -> String? {
        guard successful = false else {
            firebase.auth().onAuthStateChanged(function(user) {
                if (user) {
                    var isAnonymous = user.isAnonymous;
                    return userId;
                } else {
                    //User signed out
                    return null;
                }
            })
        }
        recycleInstance();
    }
}
