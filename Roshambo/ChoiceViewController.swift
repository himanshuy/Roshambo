//
//  ChoiceViewController.swift
//  Roshambo
//
//  Created by Himanshu Yadav on 8/22/15.
//  Copyright (c) 2015 Himanshu Yadav. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController {

    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var scissorButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    
    
    @IBAction func playRock(sender: UIButton) {
        var controller: ResultsViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        controller.userChoice = getUserChoice(sender)
        
        presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func playScissor(sender: UIButton) {
        performSegueWithIdentifier("play", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "play" {
            if let controller = segue.destinationViewController as? ResultsViewController {
                controller.userChoice = getUserChoice(sender as! UIButton)
            }
        }
    }
    
    private func getUserChoice(sender: UIButton) -> String {
        if sender == rockButton {
            return "Rock"
        }
            
        else if sender == scissorButton {
            return "Scissors"
        }
        
        else {
            return "Paper"
        }
    }
}

