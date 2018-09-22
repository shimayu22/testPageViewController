//
//  RootViewController.swift
//  testPageViewController
//
//  Created by Yutaka Shimada on 2018/09/22.
//  Copyright © 2018年 shimayu. All rights reserved.
//

import UIKit

class RootViewController: UIViewController,ChangeLabelDelegate {
    
    @IBOutlet weak var jpLabel: UILabel!
    var message:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jpLabel.text = "1月"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cvcSegue"{
            let nextViewController = segue.destination as! ContainerViewController
            nextViewController.delegate = self
        }
    }
    
    func changeLabelText(index:Int) {
        let jpMonthString:String = String(index) + "月"
        jpLabel.text = jpMonthString
        //self.message = string
        //print(self.message ?? "")
    }
    
}



