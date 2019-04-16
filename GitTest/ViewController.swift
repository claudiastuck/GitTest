//
//  ViewController.swift
//  GitTest
//
//  Created by  on 4/11/19.
//  Copyright © 2019 Claudia's Apps. All rights reserved.
//

import UIKit

// so what i did today was add animations to each button when it's pressed to get larger and spin
// I also added a rules link to take it to a website
// so far we have 3 stretches and haven't even started the real project !!!!!
// actually i think it's four : AppIcon, animations, rules link, and I think for using git hub
// only one more to get a 100, and if we keep it so the colors change we will be able to have the 5 !! :)

class ViewController: UIViewController
{
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var imageThree: UIImageView!
    @IBOutlet weak var ImageFour: UIImageView!
    @IBOutlet weak var ImageFive: UIImageView!
    
    let computerChoiceArray = [1,2,3,4,5]
    //i'm not sure how many numbers or what numbers you put in here but i just started with these
    
    // I put the buttons behind the images so when you tap on the image the button will then work
    // I am going to try to add animations today based on my RPS ones for the buttons
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
    //if you know an easier way to do any of this just get rid of what i did because i don't care
    //just do it however you want
    
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
        let computerChoice = computerChoiceArray.randomElement()
        let sum = computerChoice! + pickedNumber
        
        if sum % 2 == 0
            //even sum
        {
            view.backgroundColor = UIColor.red
        }
        
        else
            //odd sum
        {
            view.backgroundColor = UIColor.green
        }
        //the background color was just to see if it worked but we'll change it to be something else that says the winner
       
      
    }

    @IBAction func rulesTapped(_ sender: UIButton)
    {
        guard let url = URL(string: "http://healthy.uwaterloo.ca/museum/VirtualExhibits/Brueghel/odds.html") else { return }
        UIApplication.shared.open(url)

    }
    
}


// we are going to make the game odds and evens
// the way it works is two people one can be a person and one can be a computer
// put out and number of fingers you want
// if they add up to odd one person wins if they add up to even the other ones win
// kind of similar to rock paper scissors we can do easy stretches and animations like I did on my RPS and we'll get an amazing grade
