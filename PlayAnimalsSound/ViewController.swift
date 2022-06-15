//
//  ViewController.swift
//  PlayAnimalsSound
//
//  Created by user on 15/06/22.
//


import UIKit
import AVFoundation




class ViewController: UIViewController {
    
    //funzione di suono
    var player : AVAudioPlayer!

    func playSound(nameOfSound : String) {
            print("debug 1")
            guard let url = Bundle.main.url(forResource: nameOfSound, withExtension: "mp3") else {
                print("debug 2 ")
                return
            }
            
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
                try AVAudioSession.sharedInstance().setActive(true)
                print("debug 3 ")
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                
                guard let player = player else { return }
                print("debug 4 ")
                player.play()
                
            } catch let error {
                print("Error was detected")
                print(error.localizedDescription)
            }
        }
    
    
    //label
    
    @IBOutlet var labelName: UILabel!
    
    @IBOutlet var labelPig: UILabel!
    @IBOutlet var labelDog: UILabel!
    
    @IBOutlet var labelCow: UILabel!
    @IBOutlet var labelMonkey: UILabel!
    
    //bottoni
    @IBAction func cowButton(_ sender: UIButton) {
        print("cowPressed")
        playSound(nameOfSound: "cowSound")
        labelName.text = "Cow"
        labelCow.text = "♡"
        labelDog.text = ""
        
        labelMonkey.text = ""
        labelPig.text = ""
 
    
    }
    @IBAction func pigButton(_ sender: UIButton) {
        print("pigPressed")
        playSound(nameOfSound: "pigSound")
        labelName.text = "Pig"
        labelPig.text = "♡"
        labelDog.text = ""
        labelCow.text = ""
        labelMonkey.text = ""
        
    }
    
    @IBAction func monkeybutton(_ sender: UIButton) {
        print("monkeyPressed")
        playSound(nameOfSound: "monkeySound")
        labelName.text = "Monkey"
        labelMonkey.text = "♡"
        labelDog.text = ""
        labelCow.text = ""
        labelPig.text = ""
    }
    
    @IBAction func dogButton(_ sender: UIButton) {
        
        print("dogPressed")
        playSound(nameOfSound: "dogSound")
        labelName.text = "Dog"
        labelDog.text = "♡"
        labelCow.text = ""
        labelMonkey.text = ""
        labelPig.text = ""

    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


}

