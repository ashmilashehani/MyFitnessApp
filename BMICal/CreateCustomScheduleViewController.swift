//
//  CreateCustomScheduleViewController.swift
//  BMICal
//
//  Created by MacBook Aor on 2023-05-18.
//

import UIKit

class CreateCustomScheduleViewController: UIViewController {
    
    private let floatingButton : UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        button.layer.shadowRadius = 10
        button.layer.shadowOpacity = 0.3
        
        // corner radius
       // button.layer.masksToBounds = true
        button.layer.cornerRadius = 30
        button.backgroundColor = .systemPink
        
        let image = UIImage(systemName: "plus", withConfiguration: UIImage.SymbolConfiguration(pointSize: 32, weight: .medium))
        
        button.setImage(image, for: .normal)
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    @IBOutlet weak var pushup: UITextField!
    @IBOutlet weak var barbell: UITextField!
    @IBOutlet weak var squats: UITextField!
    @IBOutlet weak var goblet: UITextField!
    @IBOutlet weak var runs: UITextField!
    @IBOutlet weak var shoulderpress: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(floatingButton)
        floatingButton.addTarget(self, action: #selector( didTapButton), for: .touchUpInside )
        // Do any additional setup after loading the view.
        
        
       
        
        
        
        
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        floatingButton.frame = CGRect(
            x: view.frame.size.width - 70,
            y: view.frame.size.height - 200,
                   width: 60,
                   height: 60)
    }
    
    
    @IBAction func save(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier:"CustomScheduleViewController") as! CustomScheduleViewController
      
        vc.Pushup = pushup.text!
        vc.Barbell = barbell.text!
        vc.Squats = squats.text!
        vc.Goblet = goblet.text!
        vc.Runs = runs.text!
        vc.Shoulderpress = shoulderpress.text!
       
        
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    
    
  //  @IBAction func btnTapped(_ sender: Any) {

    //    let vc = self.storyboard?.instantiateViewController(withIdentifier:"CustomScheduleViewController") as! CustomScheduleViewController
      
    //    vc.Pushup = pushup.text!
     //   vc.Barbell = barbell.text!
     //   vc.Squats = squats.text!
      //  vc.Goblet = goblet.text!
    //    vc.Runs = runs.text!
      //  vc.Shoulderpress = shoulderpress.text!
       
        
     //   self.navigationController?.pushViewController(vc, //animated: true)
   // }
    
    @objc private func didTapButton(){
        let alert = UIAlertController(title:"Let's make your schedule",
            message:"Add your choise",
                                  preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        present(alert, animated: true)
    }
    
}
    
 
