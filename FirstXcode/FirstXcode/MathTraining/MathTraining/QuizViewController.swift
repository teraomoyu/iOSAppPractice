//
//  QuizViewController.swift
//  MathTraining
//
//  Created by Moyu Terao on 2021/07/08.
//

import UIKit

class QuizViewController: UIViewController {
    
    let total = 10 //問題数
    var correct = 0 //正解数
    var questionIndex = 0 //問題番号
    var answerIndex = 0 //正解の番号
    
    @IBOutlet var leftNumberLabel:UILabel!
    @IBOutlet var centerNumberLabel:UILabel!
    @IBOutlet var rightNumberLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setQuiestions()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultVC = segue.destination as? ResultViewController{
            resultVC.result = Double(correct) / Double(total) * 100.0
        }
    }
    
    @IBAction func tapped(sender: UIButton) {
        if sender.tag - 1 == answerIndex {
            correct += 1
        }
        
        questionIndex += 1
        if questionIndex >= total{
            performSegue(withIdentifier: "QuizToResult", sender: nil)
        }else{
            setQuiestions()
        }
    }
    
    func setQuiestions() {
        let leftNum = Int(arc4random_uniform(10))
        var centerNum = Int(arc4random_uniform(10))
        
        answerIndex = Int(arc4random_uniform(4))
        
        switch answerIndex {
        case 0:
            rightNumberLabel.text = "\(leftNum + centerNum)"
        case 1:
            rightNumberLabel.text = "\(leftNum - centerNum)"
        case 2:
            rightNumberLabel.text = "\(leftNum * centerNum)"
        default:
            if centerNum == 0{
                centerNum = 1
            }
            rightNumberLabel.text = "\(leftNum / centerNum)"
        }
        
        leftNumberLabel.text = "\(leftNum)"
        centerNumberLabel.text = "\(centerNum)"
    }

}
