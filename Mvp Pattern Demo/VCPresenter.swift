//
//  CVPresenter.swift
//  Mvp Pattern Demo
//
//  Created by Solayman Rana on 15/9/20.
//  Copyright © 2020 AudacityIt. All rights reserved.
//

import Foundation

protocol VCDelegate {
    func showMessage(message: String)
    func userLoginSuccessfully()
}

class VCPresenter: NSObject {
    
    var delegate: VCDelegate!
    
    func validateData(username: String, password: String){
        if username.count != 0 {
            if password.count != 0 {
                verify(username: username, password: password)
            }else{
                self.delegate.showMessage(message: "Password is empty")
            }
        }else{
            self.delegate.showMessage(message: "Username is Empty")
        }
    }
    
    
    fileprivate func verify(username: String, password: String){
        if username == "test" && password == "123456"{
            let user = User(name: "Test", email: "test@gmail.com", gender: "male")
            self.delegate.userLoginSuccessfully()
        }else{
            self.delegate.showMessage(message: "Invalid User")
        }
        
    }
}
