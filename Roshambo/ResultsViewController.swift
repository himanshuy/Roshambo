//
//  ResultsViewController.swift
//  
//
//  Created by Himanshu Yadav on 8/23/15.
//
//

import UIKit

class ResultsViewController: UIViewController {

    // Mark: Outlets
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultText: UILabel!
    
    // Mark: Choices
    var userChoice: String!
    var opponentChoice: String!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let choices = ["Rock", "Paper", "Scissors"]
        let randomIndex = Int(arc4random() % 3)
        opponentChoice = choices[randomIndex]
        
        displayUI()
    }
    
    
    private func displayUI() {
        var imageName: String
        var text: String
        var youWon: Bool = false
        let matchup = "\(userChoice) vs. \(opponentChoice)"
        
        if userChoice == opponentChoice {
            resultImage.image = UIImage(named: "tie")
            resultText.text = "It's a tie!"
            return
        }
        
        switch(userChoice) {
            case "Rock":
                youWon = opponentChoice == "Scissors"
            case "Paper":
                youWon = opponentChoice == "Rock"
            default:
                youWon = opponentChoice == "Paper"
        }
        
        if youWon {
            text = "You Won! \(matchup)"
            imageName = "\(userChoice) - \(opponentChoice)".lowercaseString
        } else {
            text = "You Lost! \(matchup)"
            imageName = "\(opponentChoice) - \(userChoice)".lowercaseString
        }
        resultImage.image = UIImage(named: imageName)
        resultText.text = text
    }
    
    
    @IBAction func playAgain(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
