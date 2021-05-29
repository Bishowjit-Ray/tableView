//
//  fourthViewController.swift
//  Employers
//
//  Created by Bishowjit Ray on 28/3/21.
//

import UIKit

class fourthViewController: UIViewController {
    var Name = String()
    
    @IBOutlet weak var textV: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textV.text = "\(Name)"
        

        // Do any additional setup after loading the view.
    }

}
