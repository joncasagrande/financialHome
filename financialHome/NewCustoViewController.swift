//
//  ViewController.swift
//  financialHome
//
//  Created by Jonathan on 27/09/17.
//  Copyright © 2017 com.jonathan. All rights reserved.
//

import UIKit
import Firebase
class NewCustoViewController: UIViewController {
    
    @IBOutlet weak var custoTV: UITextField!
    @IBOutlet weak var dataPicker: UIDatePicker!
    @IBOutlet weak var aondeTV: UITextField!
    @IBOutlet weak var obsTV: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addCusto(_ sender: Any) {
        let custo = Custo(preco: (custoTV.text as! NSString).doubleValue,
        date: dataPicker.date,
        local: aondeTV.text!,
        obs: obsTV.text!)

        
        
    }
    
}


