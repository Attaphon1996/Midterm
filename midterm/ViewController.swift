//
//  ViewController.swift
//  midterm
//
//  Created by อรรถพล วงษ์วิกิจการ on 3/22/2560 BE.
//  Copyright © 2560 อรรถพล วงษ์วิกิจการ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var con: UIButton!

    @IBOutlet weak var log: UIButton!
    @IBOutlet weak var ranpas: UILabel!
    @IBOutlet weak var pas: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        ranpas.text = 	String(Int(arc4random_uniform(10000)))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(_ sender: Any) {
        if pas.text == ranpas.text 	{
            con.isHidden = false
            log.isHidden = true
            UserDefaults.standard.set(ranpas, forKey: "Login")
        }
        else {
            ranpas.text = 	String(Int(arc4random_uniform(10000)))
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
