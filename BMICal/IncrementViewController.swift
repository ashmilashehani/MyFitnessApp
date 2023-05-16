//
//  IncrementViewController.swift
//  BMICal
//
//  Created by MacBook Aor on 2023-05-19.
//

import UIKit

class IncrementViewController: UIViewController {
    
    
    @IBOutlet weak var fullName: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var selectColorButton: UIButton!
    
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet var colorButtons :[UIButton]!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func showButtonVisiblility(){
        colorButtons.forEach{ button in
            button.isHidden = !button.isHidden
            self.view.layoutIfNeeded()
        }
    }
    

    @IBAction func selecoColorAction(_ sender: Any) {
        showButtonVisiblility()
        
    }
    
    @IBAction func ccolorButtonAction(_ sender: UIButton){
        showButtonVisiblility()
        switch sender.currentTitle{
        case "Orange":
            selectColorButton.backgroundColor = .systemOrange
            selectColorButton.setTitle("Orange", for: .normal)
            colorView.backgroundColor = .systemOrange
         
        case "Green":
            selectColorButton.backgroundColor = .systemOrange
            selectColorButton.setTitle("Green", for: .normal)
            colorView.backgroundColor = .systemGreen
            
            
        case "Purple":
            selectColorButton.backgroundColor = .systemOrange
            selectColorButton.setTitle("Purple", for: .normal)
            colorView.backgroundColor = .systemPurple
        
            
        
        default:
            colorView.backgroundColor = .white
        }
        }
    
    
    @IBAction func go(_ sender: Any) {
        let storyboard = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(storyboard, animated: true)    }
    
    }
    
    


