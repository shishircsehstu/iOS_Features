//
//  RetainCycle.swift
//  MyPractiseApp
//
//  Created by Md Saddam Hossain on 31/10/21.
//

import Foundation
import UIKit

class Person{
    
    var personName: String
    var personPhn: Phone?
    
    init(name: String, personPhn: Phone?){
        self.personName = name
        self.personPhn = personPhn
    }
    deinit{
        
        print("Person deinit ")
    }
}

class Phone{
    
    var phoneName: String
    var phnOwner: Person?
    
    init(name: String, phnOwner: Person?){
        self.phoneName = name
        self.phnOwner = phnOwner
    }
    deinit{
        
        print("Phone deinit ")
    }
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        var saddam: Person?
        var phone: Phone?
        
         saddam = Person(name: "Saddam", personPhn: nil)
         phone = Phone(name: "iPhone", phnOwner: nil)
        
        
        saddam?.personPhn = phone
        phone?.phnOwner = saddam
        
        // It's called retain cycle
       
    }


}

