//
//  ViewController.swift
//  GestureRecognizaitonApp
//
//  Created by Burak Karataş on 11.10.2020.
//

import UIKit

var isTony = true

class ViewController: UIViewController {
    
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        Image.isUserInteractionEnabled = true
        let GestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ChangePic))
        
        Image.addGestureRecognizer(GestureRecognizer)
    }
    
    @objc func ChangePic() {
        
        if isTony == true {
            Image.image = UIImage(named: "Thor")
            Name.text = "Chris Hemsworth"
            isTony = false
        }else{
            Image.image = UIImage(named: "Tony")
            Name.text = "Tony Stark"
            isTony = true
        }
    }


}

