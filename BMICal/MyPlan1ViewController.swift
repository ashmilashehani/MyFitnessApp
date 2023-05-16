//
//  MyPlan1ViewController.swift
//  BMICal
//
//  Created by MacBook Aor on 2023-05-18.
//

import UIKit

class MyPlan1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func CCSchedule(_ sender: Any) {
        
        let storyboard = self.storyboard?.instantiateViewController(withIdentifier: "CreateCustomScheduleViewController") as! CreateCustomScheduleViewController
        self.navigationController?.pushViewController(storyboard, animated: true)
        
        
    }
    
    
    @IBAction func Watchvideo(_ sender: Any) {
        
        let storyboard = self.storyboard?.instantiateViewController(withIdentifier: "reminderViewController") as! reminderViewController
        self.navigationController?.pushViewController(storyboard, animated: true)            }
    
}
