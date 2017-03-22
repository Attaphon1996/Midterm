//
//  FirstViewController.swift
//  midterm
//
//  Created by อรรถพล วงษ์วิกิจการ on 3/22/2560 BE.
//  Copyright © 2560 อรรถพล วงษ์วิกิจการ. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var label: UILabel!
    var data = ["Hello","Come to me","Cold water","Where Them Girls At","Blow Your Mind","Love on Me","Thinking About You","Keep it Mello","One Night Only","The Heart Wants What It Wants"]
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (data.count)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = String(data[indexPath.row])
        
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UserDefaults.standard.set(data[indexPath.row], forKey: "Music")
        label.text = UserDefaults.standard.object(forKey: "Music") as! String?
    }

}

