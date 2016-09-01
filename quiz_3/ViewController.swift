

import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var HighScoreLabel: UILabel!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    var quote = -1
    var highScore = 0
    
    let question = [[["01. Как поймать суслика"],["Руками", "Клеткой","Суслик сам поймаетс","Это не реально" ],["0","1","4", "6"]],[["02. Где у рукожопа голова?"],["Там где нет мозгов", "В раковине","Там где должны быть руки","На месте" ],["4","2","1", "0"]],[["03. Что, Где и Когда?"],["Ниче, нигде и никогда", "Что-то где-то когда-то","Не в курсах","Дратути" ],["3","1","6", "0"]],[["04. Куда дели Билли Боба"],["Он ушел", "Где-то по середине лета","Прости прощай!","Штэ?" ],["2","2","1", "4"]]]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        HighScoreLabel.hidden = true
        generateQuestion(showrandom())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    func showrandom() -> Int{
        
        quote += 1
        if quote >= question.count {
            quote = 3
            Button1.hidden = true
            Button2.hidden = true
            Button3.hidden = true
            Button4.hidden = true
            QuestionLabel.hidden = true
            HighScoreLabel.hidden = false
        }
        
        return quote
        
    }
    
    func generateQuestion (questionNumber: Int) {
        

        QuestionLabel.text = question[questionNumber][0][0]
        Button1.setTitle(question[questionNumber ][1][0], forState: .Normal)
        Button2.setTitle(question[questionNumber ][1][1], forState: .Normal)
        Button3.setTitle(question[questionNumber ][1][2], forState: .Normal)
        Button4.setTitle(question[questionNumber ][1][3], forState: .Normal)

    }
    
    
    func generateHighScore ( buttonNumber: Int) -> Int {
       highScore += Int(question[quote][2][buttonNumber - 1]) ?? 0
        HighScoreLabel.text = String(highScore)
        return highScore
    }
    
    @IBAction func Button1Action(sender: UIButton) {generateQuestion(showrandom()); generateHighScore(1)}
    @IBAction func Button2Action(sender: UIButton) {generateQuestion(showrandom());generateHighScore(2)}
    @IBAction func Button3Action(sender: UIButton) {generateQuestion(showrandom());generateHighScore(3)}
    @IBAction func Button4Action(sender: UIButton) {generateQuestion(showrandom());generateHighScore(4)}
    
}





