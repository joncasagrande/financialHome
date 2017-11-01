//
//  ViewController.swift
//  financialHome
//
//  Created by Jonathan on 27/09/17.
//  Copyright © 2017 com.jonathan. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth

class NewCustoViewController: UIViewController {
    
    @IBOutlet weak var custoTV: UITextField!
    @IBOutlet weak var dataPicker: UIDatePicker!
    @IBOutlet weak var aondeTV: UITextField!
    @IBOutlet weak var obsTV: UITextField!
    var brunaUser : User!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addCusto(_ sender: Any) {
        let preco: Double! =  (custoTV.text! as NSString).doubleValue
        let custo = Custo(preco: preco! ,
        date: dataPicker.date,
        local: aondeTV.text!,
        obs: obsTV.text!)

        var ref: DatabaseReference!
        
        ref = Database.database().reference()
        
        //ref.child("custo").setValue([custo.date.description: custo])
        ref.child("users").child("bruna").child(custo.date.description).setValue(custo.toJson())
        clearForm()
    }
    func clearForm(){
        custoTV.text = ""
        aondeTV.text = ""
        obsTV.text = ""
    }
}


