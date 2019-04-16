//
//  ViewController.swift
//  GitTest
//
//  Created by  on 4/11/19.
//  Copyright © 2019 Claudia's Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var imageThree: UIImageView!
    @IBOutlet weak var ImageFour: UIImageView!
    @IBOutlet weak var ImageFive: UIImageView!
    
    let computerChoiceArray = [1,2,3,4,5]
    //i'm not sure how many numbers or what numbers you put in here but i just started with these
    
    @IBAction func OneButtonTapped(_ sender: UIButton)
    {
        addNumbers(pickedNumber: 1)
    }
    
    @IBAction func TwoButtonTapped(_ sender: UIButton)
    {
        addNumbers(pickedNumber: 2)
    }
    
    @IBAction func ThreeButtonTapped(_ sender: UIButton)
    {
        addNumbers(pickedNumber: 3)
    }
    
    @IBAction func FourButtonTapped(_ sender: UIButton)
    {
        addNumbers(pickedNumber: 4)
    }
    
    @IBAction func FiveButtonTapped(_ sender: UIButton)
    {
        addNumbers(pickedNumber: 5)
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
    
    
}


// we are going to make the game odds and evens
// the way it works is two people one can be a person and one can be a computer
// put out and number of fingers you want
// if they add up to odd one person wins if they add up to even the other ones win
// kind of similar to rock paper scissors we can do easy stretches and animations like I did on my RPS and we'll get an amazing grade
