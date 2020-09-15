//
//  ViewController.swift
//  Mvp Pattern Demo
//
//  Created by Solayman Rana on 15/9/20.
//  Copyright © 2020 AudacityIt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, VCDelegate {
    func showMessage(message: String) {
        messagelabel.isHidden = false
        messagelabel.textColor = .green
        messagelabel.text = message
    }
    
    func userLoginSuccessfully() {
        messagelabel.isHidden = false
        messagelabel.textColor = .green
        messagelabel.text = "User Logged In"
        
    }
    

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var messagelabel: UILabel!
    
    var presenter: VCPresenter!
    @IBAction func onTapSubmitButton(_ sender: Any) {
        messagelabel.isHidden = true
        self.presenter.validateData(username: txtName.text!, password: txtPassword.text!)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = VCPresenter()
        messagelabel.isHidden = true
        presenter.delegate = self
        
        // Do any additional setup after loading the view.
    }


}

