//
//  ViewController.swift
//  new calculator
//
//  Created by Anas on 10/09/2019.
//  Copyright © 2019 SURB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flip=0
    var c=""
    var num1:String="0"
    var num2:String="0"
    var operation="+"
    @IBOutlet weak var label1: UILabel!
    
    
    @IBAction func backspace(_ sender: UIButton) {
        
        c=String(c.dropLast())
        label1.text=c
    }
    @IBAction func numbers_pressed(_ sender: UIButton) {
        num1="0"
        num2="0"
        let a:String=sender.currentTitle!
        c=c+a
        label1.text=c
        flip=0
    }
    
    @IBAction func evaluate(_ sender: UIButton) {
        
        for i in c{
            
            let d=String(i)
            if i == "+" || i == "*" || i == "-" || i == "÷"{
                operation=String(i)
                flip=1
                continue
            }
            if flip==0{
                num1+=d
            }
            else{
                num2+=d
            }
            
        }
        if operation=="+"{
            label1.text =  String(Float(num1)!+Float(num2)!)
            num1=String(Float(num1)!+Float(num2)!)
        }
        else if operation=="-"{
            label1.text = String(Int(num1)!-Int(num2)!)
            num1=String(Float(num1)!-Float(num2)!)
        }
        else if operation=="*"{
            label1.text = String(Float(num1)!*Float(num2)!)
            num1=String(Float(num1)!*Float(num2)!)
        }
        else if operation=="÷"{
            label1.text = String(Float(num1)!/Float(num2)!)
            num1=String(Float(num1)!/Float(num2)!)
        }
//        else{
//            label1.text = String(Int(num1)! % Int(num2)!)
//            num1=String(Int(num1)! % Int(num2)!)
//        }
//
        flip=0
        c=num1
        num1="0"
    }
    
    @IBAction func clear(_ sender: UIButton) {
        num1="0"
        num2="0"
        flip=0
        c=""
        label1.text=""
    }
    

}

