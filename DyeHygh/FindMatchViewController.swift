//
//  ViewController.swift
//  DyeHygh
//
//  Created by Matt Jasaitis on 4/14/17.
//  Copyright © 2017 Jasaitis. All rights reserved.
//

import UIKit

class FindMatchViewController: UIViewController {

    //need to make these queues
    var tablePlayers : Queue = Queue()
    var nonTablePlayers : Queue = Queue()
    var table : Bool = true
    var player : Player = Player()
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var tableSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBAction func didPressFindMatch(_ sender: Any) {
        player.name = nameText.text!
        player.doesHaveTable = tableSwitch.isOn
        if (player.doesHaveTable) {
            tablePlayers.enqueue(player: player)
        }
        else {
            nonTablePlayers.enqueue(player: player)
        }
    }
    
    
    

}

