//
//  ViewController.swift
//  GitTest
//
//  Created by  on 4/11/19.
//  Copyright © 2019 Claudia's Apps. All rights reserved.
//

// Stretches: AppIcon, Animations, Background ColorChanging, Rules link,


// i'm pretty sure the problem was that you had the labels and the new variables callled the same thing but i'm not completely sure
// he wasn't sure and i might have messed it up more so sorry
// we'll figure it out but it looks good and we're pretty much there



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
    
    @IBOutlet weak var compScore: UILabel!
    @IBOutlet weak var playerScore: UILabel!
    
  
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
        
        if winnerLabel.text == "You Lose 😥"
        {
            computerScore = Int(compScore.text!)! + 1
            compScore.text = "\(computerScore)"
        }
        else if winnerLabel.text == "You win! 😃"
        {
            playersScore = Int(playerScore.text!)! + 1
            playerScore.text = "\(playersScore)"
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
