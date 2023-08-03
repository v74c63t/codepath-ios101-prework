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
    
    @IBAction func changeTextStyle(_ sender: UIButton) {
        self.name.font = UIFont.boldSystemFont(ofSize: 17.0)
        self.school.font = UIFont.boldSystemFont(ofSize: 17.0)
        self.job.font = UIFont.boldSystemFont(ofSize: 17.0)
    }
    @IBAction func reset(_ sender: UIButton) {
        view.backgroundColor = UIColor.white
        self.name.font = UIFont(name: "Helvetica Neue", size: 17.0)
        self.school.font = UIFont(name: "Helvetica Neue", size: 17.0)
        self.job.font = UIFont(name: "Helvetica Neue", size: 17.0)
    }
}

