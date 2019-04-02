//
//  MainViewController.swift
//  PowerupiOS
//
//  Created by Diamonique Danner on 4/1/19.
//  Copyright © 2019 Danner Opp., LLC. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase




class MainViewController: UIViewController {
    var ref: DatabaseReference!
    
    
    @IBAction func logOut(_ sender: Any) {
       try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }
    
    @IBAction func addUser(_ sender: Any) {
       let userID = Auth.auth().currentUser?.uid
        self.ref.child("users").child(userID!).child("testing").setValue("works")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        ref = Database.database().reference()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
