//
//  ViewController.swift
//  task_20_elizbar
//
//  Created by alta on 8/9/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datePick: UIDatePicker!
    
    @IBOutlet weak var indiBut: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func indicatorBut(_ sender: Any) {
        self.indiBut.isEnabled = false
        DispatchQueue.global(qos: .background).async {
            for i in 1...1000{
                if self.checkforprime(number: i) == true {
                    print(i)
                }
            }
                        DispatchQueue.main.async {
                self.indiBut.isEnabled = true
            }
        }
    }
    func checkforprime(number: Int) -> Bool{
        var indicator = 0
        for i in 1..<number{
            if number % i == 0{
                indicator += 1
            }
                
        }
        if indicator < 2 {
            return true
        } else {
            return false
        }
    }
}
    


