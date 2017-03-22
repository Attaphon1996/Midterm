//
//  musicViewController.swift
//  midterm
//
//  Created by อรรถพล วงษ์วิกิจการ on 3/22/2560 BE.
//  Copyright © 2560 อรรถพล วงษ์วิกิจการ. All rights reserved.
//
import AVFoundation
import UIKit

class musicViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var table: UITableView!
    var player = AVAudioPlayer()
    @IBOutlet weak var volum: UISlider!
    var music = ""
    var data = [""]
    var x = [["Blow Your Mind","Hello, It's me I was wondering if after all these years you'd like to meet to go over everything They say that time's supposed to heal you,But I ain't done much healing,"]]
    @IBOutlet weak var cover: UIImageView!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        music  = UserDefaults.standard.object(forKey: "Music") as! String
        label.text = music
        cover.image = UIImage(named: music+".png")
        for i in x {
            if music == i[0] {
                data[0] = i[1]
            }
        }
        table.reloadData()
        let Path = Bundle.main.path(forResource : music,ofType : "mp3")
        do{
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: Path!))
        }
        catch{
            // error
        }
        // Do any additional setup after loading the view.
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
    @IBAction func play(_ sender: Any) {
        player.play()
    }
   
    @IBAction func pause(_ sender: Any) {
        player.pause()
    }
    @IBAction func stop(_ sender: Any) {
        player.stop()
    }
    @IBAction func volum(_ sender: Any) {
       
    }
    @IBAction func volumcheange(_ sender: Any) {
        player.volume = volum.value
        print(volum.value)
        print(player.volume)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewDidAppear(_ animated: Bool) {
        music  = UserDefaults.standard.object(forKey: "Music") as! String
        print(music)
    }
}
