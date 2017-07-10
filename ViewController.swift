//
//  ViewController.swift
//  Is It Prime
//
//  Created by Ojas Kale on 7/6/17.
//  Copyright © 2017 Ojas Kale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberField: UITextField!
    @IBOutlet var ansPrime: UILabel!
    @IBAction func checkPrime(_ sender: Any) {
        var flag = true
        if let userInputString = numberField.text{
            let inputNum = Int(userInputString)
            
            if let num = inputNum{
                
                if(num == 0){ flag = false }
                if(num == 1){ flag = false }
                if(num%2 == 0){ flag = false}
                let n = Int(sqrt((Double(num))))
                
                for i in 3...n{
                    
                    if num % i == 0 {
                        flag = false
                    }
                }
                
                
                
                if flag{
                    ansPrime.text = "Prime Number"
                }else{
                    ansPrime.text = "Not a Prime Number"
                }
            }else{
                ansPrime.text = "Please enter a valid Number"
            }
        }
        
       
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

