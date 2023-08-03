//
//  ViewController.swift
//  IOS101-Prework
//
//  Created by Vanessa Tang on 8/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var job: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var school: UILabel!
    @IBOutlet weak var boldSwitch: UISwitch!
    
    @IBOutlet weak var redVal: UITextField!
    @IBOutlet weak var greenVal: UITextField!
    @IBOutlet weak var blueVal: UITextField!
    var bold:Bool = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let color:UIColor
        let red:CGFloat
        let green:CGFloat
        let blue:CGFloat
        if self.redVal.text != "" || self.greenVal.text != "" || self.blueVal.text != "" {
            // check if the inputted values are floats
            red = CGFloat((Float(self.redVal.text ?? "") ?? 0.0)/255.0)
            green = CGFloat((Float(self.greenVal.text ?? "") ?? 0.0)/255.0)
            blue = CGFloat((Float(self.blueVal.text ?? "") ?? 0.0)/255.0)
            color = UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        else{
            color = changeColor()
        }
        view.backgroundColor = color
    }
    func changeColor() -> UIColor{

        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    @IBAction func boldText(_ sender: Any) {
        if !bold{
            self.name.font = UIFont.boldSystemFont(ofSize: 17.0)
            self.school.font = UIFont.boldSystemFont(ofSize: 17.0)
            self.job.font = UIFont.boldSystemFont(ofSize: 17.0)
            bold = true
        }
        else{
            self.name.font = UIFont.systemFont(ofSize: 17.0)
            self.school.font = UIFont.systemFont(ofSize: 17.0)
            self.job.font = UIFont.systemFont(ofSize: 17.0)
            bold = false
        }
    }
    @IBAction func changeTextColor(_ sender: UIButton) {
        let color:UIColor
        let red:CGFloat
        let green:CGFloat
        let blue:CGFloat
        if self.redVal.text != "" || self.greenVal.text != "" || self.blueVal.text != "" {
            // check if the inputted values are floats
            red = CGFloat((Float(self.redVal.text ?? "") ?? 0.0)/255.0)
            green = CGFloat((Float(self.greenVal.text ?? "") ?? 0.0)/255.0)
            blue = CGFloat((Float(self.blueVal.text ?? "") ?? 0.0)/255.0)
            color = UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        else{
            color = changeColor()
        }
        self.name.textColor = color
        self.school.textColor = color
        self.job.textColor = color
    }
    @IBAction func reset(_ sender: UIButton) {
        view.backgroundColor = UIColor.white
        self.name.font = UIFont(name: "Helvetica Neue", size: 17.0)
        self.school.font = UIFont(name: "Helvetica Neue", size: 17.0)
        self.job.font = UIFont(name: "Helvetica Neue", size: 17.0)
        self.name.textColor = UIColor.black
        self.school.textColor = UIColor.black
        self.job.textColor = UIColor.black
        self.redVal.text = ""
        self.blueVal.text = ""
        self.greenVal.text = ""
        bold = false;
        boldSwitch.isOn = false;
    }
}

