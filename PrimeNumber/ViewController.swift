//
//  ViewController.swift
//  PrimeNumber
//
//  Created by D7703_17 on 2018. 3. 29..
//  Copyright © 2018년 D7703_17. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

      @IBOutlet weak var LB: UILabel!
      @IBOutlet weak var TF: UITextField!
      override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
      }

      override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
      }
      @IBAction func BTNC(_ sender: UIButton) {
            let number=Int(TF.text!)
            var isPrime = true
            
            
            if number != 1 && number != 2 {
                  for i in 2 ..< number! {
                        if number! % i == 0{
                              isPrime = true
                        }
                  }
                  if isPrime == false {
                        LB.text="Prime number"
                  } else {
                        LB.text="Not Prime number"
                  }
                  // Do any additional setup after loading the view, typically from a nib.
            }
      }
      
      @IBAction func BTNR(_ sender: UIButton) {
            TF.text=""
      }
      
}

