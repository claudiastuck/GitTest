//
//  ViewController.swift
//  GitTest
//
//  Created by  on 4/11/19.
//  Copyright © 2019 Claudia's Apps. All rights reserved.
//

// Stretches: AppIcon, Animations, Background ColorChanging, Rules link, scoreboard, text color changing(maybe), git hub, reset label

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var rulesLabel: UIButton!
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var evenOddLabel: UILabel!
    @IBOutlet weak var compLabel: UILabel!
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var imageThree: UIImageView!
    @IBOutlet weak var ImageFour: UIImageView!
    @IBOutlet weak var ImageFive: UIImageView!
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var computerChoiceLabel: UILabel!
    @IBOutlet weak var evenOddTextField: UITextField!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var myCompScoreLabel: UILabel!
    @IBOutlet weak var myPlayerScoreLabel: UILabel!
    @IBOutlet weak var myResetLabel: UILabel!
    
    var labelArray = [UILabel]()
    var computerScore = 0
    var playersScore = 0
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        self.view.endEditing(true)
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
    }
    
    let computerChoiceArray = [1,2,3,4,5]
    @IBAction func OneButtonTapped(_ sender: UIButton)
    {
        addNumbers(pickedNumber: 1)
        print("one tapped")
        UIView.animate(withDuration: 1.0, animations:
            {
                self.imageOne.transform = CGAffineTransform(scaleX: 5, y: 5)
                self.imageOne.transform = CGAffineTransform.identity
                
                self.imageOne.transform = CGAffineTransform(rotationAngle: .pi)
                self.imageOne.transform = CGAffineTransform.identity
        })    }
    
    @IBAction func TwoButtonTapped(_ sender: UIButton)
    {
        addNumbers(pickedNumber: 2)
        print("two tapped")
        UIView.animate(withDuration: 1.0, animations:
            {
                self.imageTwo.transform = CGAffineTransform(scaleX: 5, y: 5)
                self.imageTwo.transform = CGAffineTransform.identity
                self.imageTwo.transform = CGAffineTransform(rotationAngle: .pi)
                self.imageTwo.transform = CGAffineTransform.identity
        })    }
    
    @IBAction func ThreeButtonTapped(_ sender: UIButton)
    {
        addNumbers(pickedNumber: 3)
        print("three tapped")
        UIView.animate(withDuration: 1.0, animations:
            {
                self.imageThree.transform = CGAffineTransform(scaleX: 5, y: 5)
                self.imageThree.transform = CGAffineTransform.identity
                
                self.imageThree.transform = CGAffineTransform(rotationAngle: .pi)
                self.imageThree.transform = CGAffineTransform.identity
        })    }
    
    @IBAction func FourButtonTapped(_ sender: UIButton)
    {
        addNumbers(pickedNumber: 4)
        print("four tapped")
        UIView.animate(withDuration: 1.0, animations:
            {
                self.ImageFour.transform = CGAffineTransform(scaleX: 5, y: 5)
                self.ImageFour.transform = CGAffineTransform.identity
                
                self.ImageFour.transform = CGAffineTransform(rotationAngle: .pi)
                self.ImageFour.transform = CGAffineTransform.identity
        })    }
    
    @IBAction func FiveButtonTapped(_ sender: UIButton)
    {
        addNumbers(pickedNumber: 5)
        print("five tapped")
        UIView.animate(withDuration: 1.0, animations:
            {
                self.ImageFive.transform = CGAffineTransform(scaleX: 5, y: 5)
                self.ImageFive.transform = CGAffineTransform.identity
                
                self.ImageFive.transform = CGAffineTransform(rotationAngle: .pi)
                self.ImageFive.transform = CGAffineTransform.identity
        })
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        imageOne.image = #imageLiteral(resourceName: "one")
        imageTwo.image = #imageLiteral(resourceName: "two")
        imageThree.image = #imageLiteral(resourceName: "three")
        ImageFour.image = #imageLiteral(resourceName: "four")
        ImageFive.image = #imageLiteral(resourceName: "five")
        labelArray = [myCompScoreLabel, myPlayerScoreLabel,playerLabel, compLabel, computerChoiceLabel, sumLabel, winnerLabel, evenOddLabel]
    }
    
   
    func addNumbers(pickedNumber : Int)
    {
        myResetLabel.text = ""
        func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
        {
            self.view.endEditing(true)
        }
        let computerChoice = computerChoiceArray.randomElement()
        computerChoiceLabel.text = "The computer chose \(computerChoice!)"
        let sum = computerChoice! + pickedNumber
        
        if sum % 2 == 0
            //even sum
        {
            view.backgroundColor = #colorLiteral(red: 0.998844564, green: 0.6903983131, blue: 0.8053640233, alpha: 1)
            sumLabel.text = "The sum of the numbers is even!"
            for label in labelArray
            {
                label.textColor = .black
            }
            rulesLabel.setTitleColor(.blue, for: .normal)
        }
        
        else
            //odd sum
        {
            view.backgroundColor = #colorLiteral(red: 0.05153562722, green: 0.7515059213, blue: 1, alpha: 1)
            sumLabel.text = "The sum of the numbers is odd!"
            for label in labelArray
            {
                label.textColor = .white
            }
            rulesLabel.setTitleColor(.red, for: .normal)
        
        }
        
        if evenOddTextField.text == "even"
        {
            if sum % 2 == 0
            {
                winnerLabel.text = "You Win! 😃"
                playerWins()
                
            }
            else
            {
                winnerLabel.text = "You Lose 😢"
                compWins()
            }
        }
        if evenOddTextField.text == "odd"
        {
            if sum % 2 == 0
            {
                winnerLabel.text = "You Lose 😢"
                compWins()
            }
            else
            {
                winnerLabel.text = "You Win! 😃"
                playerWins()
            }
            
        }
        
        if myPlayerScoreLabel.text == "10"
        {
            myPlayerScoreLabel.text = "0"
            myCompScoreLabel.text = "0"
            playersScore = 0
            computerScore = 0
            myResetLabel.text = "You have won this round. Now the game has been reset."
        }
        else if myCompScoreLabel.text == "10"
        {
            myPlayerScoreLabel.text = "0"
            myCompScoreLabel.text = "0"
            playersScore = 0
            computerScore = 0
            myResetLabel.text = "You have lost this round.  Now the game has been reset."
        }
    }
    

    
    func compWins()
    {
        computerScore = computerScore + 1
        myCompScoreLabel.text = "\(computerScore)"
        UIView.animate(withDuration: 1.0, animations: {
            self.myCompScoreLabel.transform = CGAffineTransform(scaleX: 5, y: 5)
            self.myCompScoreLabel.transform = CGAffineTransform.identity
            
            self.myCompScoreLabel.transform = CGAffineTransform(rotationAngle: .pi)
            self.myCompScoreLabel.transform = CGAffineTransform.identity
        })
    }
    
    func playerWins()
    {
        playersScore = playersScore + 1
        myPlayerScoreLabel.text = "\(playersScore)"
        UIView.animate(withDuration: 1.0, animations: {
            self.myPlayerScoreLabel.transform = CGAffineTransform(scaleX: 5, y: 5)
            self.myPlayerScoreLabel.transform = CGAffineTransform.identity
            
            self.myPlayerScoreLabel.transform = CGAffineTransform(rotationAngle: .pi)
            self.myPlayerScoreLabel.transform = CGAffineTransform.identity
        })
    }
    
    @IBAction func rulesTapped(_ sender: UIButton)
    {
        guard let url = URL(string: "http://healthy.uwaterloo.ca/museum/VirtualExhibits/Brueghel/odds.html") else { return }
        UIApplication.shared.open(url)
    }
    
    func textFieldReturn(_ textField: UITextField) -> Bool
    {
        self.view.endEditing(true)
        return true
    }
    
}
