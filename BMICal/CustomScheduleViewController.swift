//
//  CustomScheduleViewController.swift
//  BMICal
//
//  Created by MacBook Aor on 2023-05-18.
//

import UIKit


class CustomScheduleViewController: UIViewController {
   
    @IBOutlet weak var pushup: UILabel!
    @IBOutlet weak var barbell: UILabel!
    @IBOutlet weak var squats: UILabel!
    @IBOutlet weak var goblet: UILabel!
    @IBOutlet weak var runs: UILabel!
    @IBOutlet weak var shoulderpress: UILabel!
    
    
    var Pushup = ""
    var Barbell = ""
    var Squats = ""
    var Goblet = ""
    var Runs = ""
    var Shoulderpress = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()


        pushup.text = "Pushup\(Pushup)"
        barbell.text = "Barbell\(Barbell)"
        squats.text = "Squats\(Squats)"
        goblet.text = "Goblet\(Goblet)"
        runs.text = "Runs\(Runs)"
        shoulderpress.text = "Shoulderpress\(Shoulderpress)"
       
    }
    
    
    @IBAction func goToProfile(_ sender: Any) {
        
        let storyboard = self.storyboard?.instantiateViewController(withIdentifier: "MyProfileViewController") as! MyProfileViewController
        self.navigationController?.pushViewController(storyboard, animated: true)    }
    
}
