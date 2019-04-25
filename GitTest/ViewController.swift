//
//  ViewController.swift
//  GitTest
//
//  Created by  on 4/11/19.
//  Copyright © 2019 Claudia's Apps. All rights reserved.
//

// Stretches: AppIcon, Animations, Background ColorChanging, Rules link,


// ok as of now it runs but it just doesn't work.  I'm not sure tho today in class i will try some new things but i might work on the stretches for the assignment notebook too
// if i can't figure it out i will talk to mr walter tomorrow about it he might be subbing my second block cause my teacher won't be her tomorrow and he's subbed for us before





import UIKit


class ViewController: UIViewController
{
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
    
    
    var computerScore = 0
    var playersScore = 0
    
    // well anyway pretty much so sorry i couldn't really fix it, i promise it'll be done tomorrow. If he's my sub second block i'm going to see if he'll let me come up and have him fix it then
    // atleast i'll talk to him about it, if he doesn't let me do it then
    
   
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
      
        UIView.animate(withDuration: 1.0, animations: {
            
            self.imageOne.transform = CGAffineTransform(scaleX: 5, y: 5)
            self.imageOne.transform = CGAffineTransform.identity
            
            self.imageOne.transform = CGAffineTransform(rotationAngle: .pi)
            self.imageOne.transform = CGAffineTransform.identity
            
        })
    }
    
    
    
    @IBAction func TwoButtonTapped(_ sender: UIButton)
   
    {
        
        addNumbers(pickedNumber: 2)
        
        print("two tapped")
        
        UIView.animate(withDuration: 1.0, animations: {
            self.imageTwo.transform = CGAffineTransform(scaleX: 5, y: 5)
            self.imageTwo.transform = CGAffineTransform.identity
            
            self.imageTwo.transform = CGAffineTransform(rotationAngle: .pi)
            self.imageTwo.transform = CGAffineTransform.identity
        })
        
    }
    
    @IBAction func ThreeButtonTapped(_ sender: UIButton)
    {
        addNumbers(pickedNumber: 3)
        print("three tapped")
        
        UIView.animate(withDuration: 1.0, animations: {
            self.imageThree.transform = CGAffineTransform(scaleX: 5, y: 5)
            self.imageThree.transform = CGAffineTransform.identity
            
            self.imageThree.transform = CGAffineTransform(rotationAngle: .pi)
            self.imageThree.transform = CGAffineTransform.identity
        
        })
    }
    
    @IBAction func FourButtonTapped(_ sender: UIButton)
    {
        
        addNumbers(pickedNumber: 4)
        print("four tapped")
        
        UIView.animate(withDuration: 1.0, animations: {
            self.ImageFour.transform = CGAffineTransform(scaleX: 5, y: 5)
            self.ImageFour.transform = CGAffineTransform.identity
            
            self.ImageFour.transform = CGAffineTransform(rotationAngle: .pi)
            self.ImageFour.transform = CGAffineTransform.identity
        })
    }
    
    @IBAction func FiveButtonTapped(_ sender: UIButton)
    {
        addNumbers(pickedNumber: 5)
        print("five tapped")
        
        UIView.animate(withDuration: 1.0, animations: {
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
    }
    
   
    func addNumbers(pickedNumber : Int)
    {
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
            view.backgroundColor = UIColor.magenta
            sumLabel.text = "The sum of the numbers is even!"
        }
        
        else
            //odd sum
        {
            view.backgroundColor = UIColor.blue
            sumLabel.text = "The sum of the numbers is odd!"
        }
        
        
        if evenOddTextField.text == "even"
        {
            if sum % 2 == 0
            {
                winnerLabel.text = "You Win! 😃"
            }
            else
            {
                winnerLabel.text = "You Lose 😢"
            }
        }
        if evenOddTextField.text == "odd"
        {
            if sum % 2 == 0
            {
                winnerLabel.text = "You Lose 😢"
            }
            else
            {
                winnerLabel.text = "You Win! 😃"
            }
        }
        
//        if myResultLabel.text == "You won."
//        {
//            userScore = userScore + 1
//            myPointsLabel.text = "\(userScore)"
//        }
//
//        else if myResultLabel.text == "You lost."
//        {
//            compScore = compScore + 1
//            computerPointsLabel.text = "\(compScore)"
//        }
        
        // this is the code from my last project that worked,  not sure whats happening but it's better because now it's saying that the var is an int, which is good
        // the thing is it isn't failing, it will still run, it's just  the scoreboard isn't working at all
//
        if winnerLabel.text == "You Lose 😥"
        {
            computerScore = computerScore + 1
           myCompScoreLabel.text = "\(computerScore)"
        }
        else if winnerLabel.text == "You win! 😃"
        {
            playersScore = playersScore + 1
            myPlayerScoreLabel.text = "\(playersScore)"
        }

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
