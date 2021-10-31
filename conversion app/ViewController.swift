//
//  ViewController.swift
//  conversion app
//
//  Created by Olibo moni on 30/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var parameterTxt: UITextField!
    
    @IBOutlet weak var resultLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.systemGreen
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = UIColor.systemYellow
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(.white, for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        
        parameterTxt.inputAccessoryView = calcBtn
        
    }
    
    @objc func calculate(){
        if let Parameter = parameterTxt.text {
            if let para = Double(Parameter){
                view.endEditing(true)
                resultLbl.text = "\(Convert.getMiles(Kilometers: para))"
            }
            
        }
    }


}

