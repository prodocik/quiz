
import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var QuestionLabel: UILabel!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    var quote = -1
    var counter = 0
    var question = [[[String]]]()
    var pita:Float = 0
    var kapha:Float = 0
    var vata:Float = 0
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("TableData", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        question = dict!.objectForKey("mainArray") as! [[[String]]]
        
        counter = question.count
        generateQuestion(showrandom())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationVC:Vc2 = segue.destinationViewController as! Vc2
        destinationVC.pita = pita
        destinationVC.kapha = kapha
        destinationVC.vata = vata
    }
    
    
    func showrandom() -> Int{
        quote += 1
        if quote >= question.count {
            quote = 3
            self.performSegueWithIdentifier("segue", sender: nil)
            pita = 0
            vata = 0
            kapha = 0
            quote = 0
        }
        return quote
    }
    
  
    
    func generateQuestion (questionNumber: Int) {
        counterLabel.text = String(quote + 1) + "/" + String(counter)
        QuestionLabel.text = question[questionNumber][0][0]
        Button1.setTitle(question[questionNumber ][1][0], forState: .Normal)
        Button2.setTitle(question[questionNumber ][1][1], forState: .Normal)
        Button3.setTitle(question[questionNumber ][1][2], forState: .Normal)
        Button4.setTitle(question[questionNumber ][1][3], forState: .Normal)
    }
    
    
    func generateHighScore ( buttonNumber: Int) -> (Float, Float, Float) {
        
        switch Int(question[quote][2][buttonNumber - 1])! {
            case 2: pita += 1
             case 1: vata += 1
             case 3: kapha += 1
            case 0: break
        default:
            break
        }
        return (pita, vata, kapha)
    }
    
    
    @IBAction func Button1Action(sender: UIButton) {generateQuestion(showrandom()); generateHighScore(1)}
    @IBAction func Button2Action(sender: UIButton) {generateQuestion(showrandom());generateHighScore(2)}
    @IBAction func Button3Action(sender: UIButton) {generateQuestion(showrandom());generateHighScore(3)}
    @IBAction func Button4Action(sender: UIButton) {generateQuestion(showrandom());generateHighScore(4)}
}





