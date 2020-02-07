//
//  ViewController.swift
//  Lixi
//
//  Created by User on 2/7/20.
//  Copyright © 2020 hung. All rights reserved.
//
import UIKit


//B1: Chọn thư viện file âm thanh
import AVFoundation



class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var openButton: UIButton!
    
    var n: Int = 0
    
    
    // B2: khai bao kieu 1 bien kieu AVAudioPlayer
       var soundPlayer: AVAudioPlayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = " "
        //B4: gọi hàm âm thanh đã tạo
        playSound()
    }

    @IBAction func moLiXi(_ sender: Any) {
        numberLabel.text = String(moLiXiRandom())
        
    }
    func moLiXiRandom() -> Int{
        
        var lixiRandom: [Int] = [10000, 20000, 50000, 100000, 200000, 500000]
        let m = lixiRandom.randomElement() ?? 0
        
        if n == m{
            moLiXiRandom()
        }
        n = m
        return m
        
    }
    
    
    //B3:copy hàm file âm thanh 
    func playSound(){
        let path = Bundle.main.path(forResource: "hpny.mp3", ofType: nil)!
        
        let url = URL(fileURLWithPath: path)
        do {
            soundPlayer = try AVAudioPlayer(contentsOf: url)
            soundPlayer?.play()
            soundPlayer?.numberOfLoops = -1
            
        } catch {
            print("loi")
        }
    }}

