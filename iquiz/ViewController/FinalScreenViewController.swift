//
//  FinalScreenViewController.swift
//  iquiz
//
//  Created by Jefferson Machado on 14/12/25.
//

import UIKit

class FinalScreenViewController: UIViewController {
    
    
    var points: Int?
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var percentualLabel: UILabel!
    
    
    @IBOutlet weak var reestartButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        configLayout()
        configPage()
        
    }
    
    func configLayout(){
        navigationItem.hidesBackButton = true
        
    }
    
    
    func configPage(){
        guard let score = points else {return}
        
        resultLabel.text = "Você Acertou \(score) de \(questions.count) questões"
        
        let percent = (score * 100) / questions.count
        
        percentualLabel.text = "Percentual total: \(percent)%"
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
