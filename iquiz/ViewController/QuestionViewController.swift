//
//  QuestionViewController.swift
//  iquiz
//
//  Created by Jefferson Machado on 12/12/25.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var points = 0
    var questionNumber = 0
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let correctlyAnswer = questions[questionNumber].correctlyAnswer == sender.tag
        
        if correctlyAnswer {
            points += 1
            sender.backgroundColor = UIColor.greenBackgroudColor
        }else{
            sender.backgroundColor = UIColor.redBackgroundColor
            
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(configQuestion), userInfo: nil, repeats: false)
        }else{
            nextScreen()
        }
    }
    
    func nextScreen(){
        performSegue(withIdentifier: "goTofinalScreen", sender: nil)
    }
    
    
    
    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBOutlet var buttonsConfig: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        initialConfig()
        configQuestion()
    }
    
    
    func initialConfig(){
        navigationItem.hidesBackButton = true
        questionTitleLabel.numberOfLines = 0
        questionTitleLabel.textAlignment = .center
        
        
        
    }
    
    @objc func configQuestion(){
        questionTitleLabel.text = questions[questionNumber].title
        if questionNumber < questions.count{
            for button in buttonsConfig{
                let buttonTitle = questions[questionNumber].answers[button.tag]
                button.setTitle(buttonTitle, for: .normal)
                button.backgroundColor = UIColor.defaultBackgroundColor
            }
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let finalScreenVC = segue.destination as? FinalScreenViewController
        else {return}
        
        finalScreenVC.points = points
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
