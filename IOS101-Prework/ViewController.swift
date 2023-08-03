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
    var bold:Bool = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
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
        let randomColor = changeColor()
        self.name.textColor = randomColor
        self.school.textColor = randomColor
        self.job.textColor = randomColor
    }
    @IBAction func reset(_ sender: UIButton) {
        view.backgroundColor = UIColor.white
        self.name.font = UIFont(name: "Helvetica Neue", size: 17.0)
        self.school.font = UIFont(name: "Helvetica Neue", size: 17.0)
        self.job.font = UIFont(name: "Helvetica Neue", size: 17.0)
        self.name.textColor = UIColor.black
        self.school.textColor = UIColor.black
        self.job.textColor = UIColor.black
        bold = false;
        boldSwitch.isOn = false;
    }
}

