//
//  ViewController.swift
//  farborakel.xcodeproj
//
//  Created by Michael Hornung on 18.10.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hintergund: UIButton!
    
    @IBOutlet weak var farbekreis: UIButton!
    
    @IBOutlet weak var kreis: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        kreis.layer.cornerRadius = 100
    }
    
    @IBAction func changeBackground(_ sender: Any) {
        self.view.backgroundColor = randomcolor()
        
        
    }
    
    @IBAction func changeKreis(_ sender: Any) {
        kreis.backgroundColor = randomcolor()
    }
    func randomcolor() -> UIColor{
            let red: CGFloat = CGFloat(drand48())
            let green: CGFloat = CGFloat(drand48())
            let blue: CGFloat = CGFloat(drand48())
            return UIColor(red:red, green:green, blue:blue, alpha: 1.0)
        }



}

