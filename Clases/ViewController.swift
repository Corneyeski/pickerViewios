//
//  ViewController.swift
//  Clases
//
//  Created by MARKT on 10/11/17.
//  Copyright © 2017 MARKT. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
    UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var boton: UIButton!
    
    @IBAction func btn(_ sender: Any) {
        
        if lbl.text == "zelda" {
            img.image = UIImage(named: "link")
        }
        if lbl.text == "pokemon" {
            img.image = UIImage(named: "pokemon")
        }
        if lbl.text == "mario" {
            img.image = UIImage(named: "mario")
        }
    }
    
    
    let juegos = ["zelda","mario","pokemon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return juegos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return juegos[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lbl.text = juegos[row]
        btn(btn((Any).self))
    }
}

