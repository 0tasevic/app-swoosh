//
//  LegueVCViewController.swift
//  app-swoosh
//
//  Created by Milos Otasevic on 15/12/2018.
//  Copyright © 2018 Milos Otasevic. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    @IBOutlet var nextBn: BorderButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onManTapped(_ sender: Any) {
        selectLeague(legue: "man")
    }
    @IBAction func onWomanTapped(_ sender: Any) {
        selectLeague(legue: "woman")
        
    }
    @IBAction func onCdTapped(_ sender: Any) {
        selectLeague(legue: "coed")
        
    }
    
    func selectLeague(legue: String){
        player.desiredLeague = legue
        nextBn.isEnabled = true;
    }
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCseque", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC  = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }

}
