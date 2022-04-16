//
//  ViewController.swift
//  KOV
//
//  Created by Md Saddam Hossain on 16/4/22.
//

import UIKit

class Student: NSObject{
    
    var name: String
    @objc dynamic var phnNumber: String
    
    init(name: String, phnNumber: String){
        self.name = name
        self.phnNumber = phnNumber
    }
}

class ViewController: UIViewController {
    
    var myObserver: NSKeyValueObservation?
    var val: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
       addObserver()
    }
    func addObserver(){
        
        let ob = Student(name: "AAA", phnNumber: "123")
        print(ob.phnNumber)
        //KVC
        ob.value(forKey: "phnNumber")
        //KVO
        myObserver = ob.observe(\.phnNumber, options: [.new,.old]) { (Student,value) in
            print(value.oldValue ?? "No Value")
            print(value.newValue ?? "No value")
            self.updateUI()
        }
        
       // myObserver!.invalidate()
        ob.phnNumber = "212"
        ob.phnNumber = "12334"
        
    }
    
    func updateUI(){
        print("change Value")
    }
}

