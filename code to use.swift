//
//  code to use.swift
//  namR
//
//  Created by Sophia on 7/26/16.
//  Copyright © 2016 Sophia Wang. All rights reserved.
//

import UIKit

class code_to_use: NSObject {
    
    
    /* Code to find the location of a user from parse
    PFGeoPoint geoPointForCurrentLocationInBackground:^(PFGeoPoint *geoPoint, NSError *error) {
    if (!error) {
    NSLog(@"User is currently at %f, %f", geoPoint.latitude, geoPoint.longitude);
    
    [[PFUser currentUser] setObject:geoPoint forKey:@"currentLocation"];
    [[PFUser currentUser] saveInBackground];
    }
    }];
*/
    /* code to get stuff in the query from Parse)
    var query = new Parse.Query(MyClass);
    query.find({
    success: function(results) {
    // results is an array of Parse.Object.
    },
    
    error: function(error) {
    // error is an instance of Parse.Error.
    }
    });*/
   /**
    
    import Foundation
    //import FBSDKCoreKit
    import Parse
    import ParseUI
    
    typealias ParseLoginHelperCallback = (PFUser?, NSError?) -> Void
    
    /**
     This class implements the 'PFLogInViewControllerDelegate' protocol. After a successfull login
     it will call the callback function and provide a 'PFUser' object.
     */
    class ParseLoginHelper : NSObject {
        static let errorDomain = "com.makeschool.parseloginhelpererrordomain"
        static let usernameNotFoundErrorCode = 1
        //static let usernameNotFoundLocalizedDescription = "Could not retrieve Facebook username"
        
        let callback: ParseLoginHelperCallback
        
        init(callback: ParseLoginHelperCallback) {
            self.callback = callback
        }
    }
    
    extension ParseLoginHelper : PFLogInViewControllerDelegate {
        
        
        func logInViewController(logInController: PFLogInViewController, didLogInUser user: PFUser) {
            // Determine if this is a Facebook login
            //let isFacebookLogin = FBSDKAccessToken.currentAccessToken() != nil
            
            //if !isFacebookLogin {
            // Plain parse login, we can return user immediately
            self.callback(user, nil)
            /**else {
             // if this is a Facebook login, fetch the username from Facebook
             FBSDKGraphRequest(graphPath: "me", parameters: nil).startWithCompletionHandler {
             (connection: FBSDKGraphRequestConnection!, result: AnyObject?, error: NSError?) -> Void in
             if let error = error {
             // Facebook Error? -> hand error to callback
             self.callback(nil, error)
             }
             
             if let fbUsername = result?["name"] as? String {
             // assign Facebook name to PFUser
             user.username = fbUsername
             // store PFUser
             user.saveInBackgroundWithBlock({ (success, error) -> Void in
             if (success) {
             // updated username could be stored -> call success
             self.callback(user, error)
             } else {
             // updating username failed -> hand error to callback
             self.callback(nil, error)
             }
             })
             } else {
             // cannot retrieve username? -> create error and hand it to callback
             //            let userInfo = [NSLocalizedDescriptionKey : ParseLoginHelper.usernameNotFoundLocalizedDescription]
             //            let noUsernameError = NSError(
             //              domain: ParseLoginHelper.errorDomain,
             //              code: ParseLoginHelper.usernameNotFoundErrorCode,
             //              userInfo: userInfo
             //            )
             self.callback(nil, error)
             }
             }
             }
             }**/
            
            
            
            extension ParseLoginHelper : PFSignUpViewControllerDelegate {
                
                func signUpViewController(signUpController: PFSignUpViewController, didSignUpUser user: PFUser) {
                    self.callback(user, nil)
                }
                
            }**/
}
