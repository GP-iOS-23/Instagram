//
//  ViewController.swift
//  Instagram
//
//  Created by Глеб Поляков on 05.03.2024.
//

import FirebaseAuth
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()
    }
    
    private func handleNotAuthenticated(){
        //Check auth status
        if Auth.auth().currentUser == nil{
            // Show log in
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }
    
}

