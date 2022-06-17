# PlayAnimalsSound
PlayAnimalsSound!


Instructions
Simply click an animal button to activate a sound

![Schermata 2022-06-15 alle 16 50 28](https://user-images.githubusercontent.com/106954791/173858500-a131c04c-9a05-46f5-9f03-52c69a0fa2ca.png)


You need to change the device orientation to : landscape right

by clicking an animal the screen would display theyr name qnd a little heart

![Schermata 2022-06-15 alle 16 50 34](https://user-images.githubusercontent.com/106954791/173858250-f00606db-976a-4438-bf1c-d3e9d8d078c7.png)


how to use sounds
'''
       
       //funzione di suono
      
      var player : AVAudioPlayer!
    func playSound(nameOfSound : String) {
         
            guard let url = Bundle.main.url(forResource: nameOfSound, withExtension: "mp3") else {
         
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
        
        //use this to play the sound
        playSound(nameOfSound: "Sound")
'''
