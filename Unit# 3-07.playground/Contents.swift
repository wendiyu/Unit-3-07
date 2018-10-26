

// Created on: October-25-2018
// Created by: Wendi Yu
// Created for: ICS3U
// This program is the UIKit solution for calculate factorial
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var counter = 0
    var answer = 1
    
    let questionLable = UILabel()
    let checkNumberLable = UILabel()
    let numberTextField = UITextField()
    let answerLable = UILabel()
    let answerButton = UIButton()
    
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        questionLable.text = "Enter the positive integer between 1 and 20 and we will calculate the factorial for you"
        view.addSubview(questionLable)
        questionLable.translatesAutoresizingMaskIntoConstraints = false
        questionLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        numberTextField.borderStyle = UITextBorderStyle.roundedRect
        numberTextField.placeholder = "Enter a positive integer between 1 and 20 "
        view.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        numberTextField.topAnchor.constraint(equalTo: questionLable.bottomAnchor, constant: 5).isActive = true
        numberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerButton.setTitle("Calculate", for: .normal)
        answerButton.setTitleColor(.blue, for: .normal)
        answerButton.addTarget(self, action: #selector(calculateFactorial), for: .touchUpInside)
        view.addSubview(answerButton)
        answerButton.translatesAutoresizingMaskIntoConstraints = false
        answerButton.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 10).isActive = true
        answerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLable.text = nil
        view.addSubview(answerLable)
        answerLable.translatesAutoresizingMaskIntoConstraints = false
        answerLable.topAnchor.constraint(equalTo: answerButton.bottomAnchor, constant: 20).isActive = true
        answerLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func calculateFactorial() {
        // show answers 
        let numberEnter : Int =  Int(numberTextField.text!)!
        
        for counter in (1 ... numberEnter).reversed() {
            answer = answer * counter
            answerLable.text = ("The answer is: \(answer)")
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
