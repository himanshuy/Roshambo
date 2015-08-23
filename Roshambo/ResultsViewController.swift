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
    }

}
