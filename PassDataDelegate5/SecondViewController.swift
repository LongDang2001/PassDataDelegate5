//
//  SecondViewController.swift
//  PassDataDelegate5
//
//  Created by admin on 2/14/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

protocol passDataDelegate {
    func passData(data1: String, data2: String, data3: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var textFieldSecond1: UITextField!
    @IBOutlet weak var textFieldSecond2: UITextField!
    @IBOutlet weak var textFieldSecond3: UITextField!
    var delegate: passDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func backToView() {
        self.delegate?.passData(data1: textFieldSecond1.text ?? "", data2: textFieldSecond2.text ?? "", data3: textFieldSecond3.text ?? "")
        dismiss(animated: true, completion: nil)
    }
}
