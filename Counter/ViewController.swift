//
//  ViewController.swift
//  Counter
//
//  Created by ducmanh on 2023/05/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    var count = Int()
    var countLabelText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 0
        // Do any additional setup after loading the view.
    }

    @IBAction func plusPushed(_ sender: Any) {
        count = count + 1
        countLabelText = "\(count)"
        countLabel.text = countLabelText
        if count >= 0 && count < 10 {
            countLabel.textColor = UIColor.black
        } else if count >= 10 && count < 20 {
            countLabel.textColor = UIColor.green
        } else if count >= 20 && count < 30 {
            countLabel.textColor = UIColor.yellow
        } else {
            countLabel.textColor = UIColor.red
            
        }
        
    }
    
    @IBAction func minusPushed(_ sender: Any) {
        if count > 0 {
        count = count - 1
        }
        countLabelText = "\(count)"
        countLabel.text = countLabelText

    }
    
    @IBAction func resetPushed(_ sender: Any) {
        count = 0
        countLabelText = "\(count)"
        countLabel.text = countLabelText
        countLabel.textColor = UIColor.blue
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

