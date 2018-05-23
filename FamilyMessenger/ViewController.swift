//
//  ViewController.swift
//  FamilyMessenger
//
//  Created by Jack Kranz on 22/5/18.
//  Copyright © 2018 MCJ. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var handle:AuthStateDidChangeListenerHandle?
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        handle = Auth.auth().addStateDidChangeListener { (auth, user) in }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if(checkUser()){
           // usernameField.text = Auth.auth().currentUser?.email
            login()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func checkUser()->Bool{
        return Auth.auth().currentUser != nil
    }
    
    
    @IBAction func pressGo(_ sender: Any) {
        signIn()
    }
    
    
    // Code for Signing up to firebase
    func signUp(username:String,password:String){
        Auth.auth().createUser(withEmail: username, password: password) { (authResult, error) in
            if authResult?.user != nil{
                self.login()
            }
        }
    }
    
    
    // Code for signing in to firebase. tries to sign in. if account doesnt exist calls SignUp method.
    
    func signIn(){
        
        let username = usernameField.text!
        let password = passwordField.text!
        
        Auth.auth().signIn(withEmail: username, password: password) { (user, error) in
            
            if user != nil{
                self.login()
            }
            
            if error != nil{
                
                // 17011 is a user not found error
                if error!._code == 17011{
                    self.signUp(username:username,password:password)
                }
            }
        }
    }
    
    func login(){
        
        self.performSegue(withIdentifier: "login", sender: Any?.self)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        Auth.auth().removeStateDidChangeListener(handle!)
    }
    
}

