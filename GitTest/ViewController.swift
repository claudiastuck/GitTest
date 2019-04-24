//
//  ViewController.swift
//  GitTest
//
//  Created by  on 4/11/19.
//  Copyright © 2019 Claudia's Apps. All rights reserved.
//

import UIKit


// actually i think it's four : AppIcon, animations, rules link, and I think for using git hub
// only one more to get a 100, and if we keep it so the colors change we will be able to have the 5 !! :)


// i used a textfield and then the player enters their score into that
// if the text there matches the sum then there's a label at the bottom that will say that you won or you lost
// i think that we're pretty much done




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
