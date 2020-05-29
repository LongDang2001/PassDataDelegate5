//
//  ViewController.swift
//  PassDataDelegate5
//
//  Created by admin on 2/14/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldView1: UITextField!
    @IBOutlet weak var textFieldView2: UITextField!
    @IBOutlet weak var textFieldView3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewConTroller = segue.destination as? SecondViewController
        secondViewConTroller?.delegate = self
    }
}

extension ViewController: passDataDelegate {
    func passData(data1: String, data2: String, data3: String) {
        textFieldView1.text = data1
        textFieldView2.text = data2
        textFieldView3.text = data3
    }
}


