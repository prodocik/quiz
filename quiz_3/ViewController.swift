
import UIKit
import GoogleMobileAds
class ViewController: UIViewController, GADBannerViewDelegate {
    @IBOutlet weak var bannerView: GADBannerView!
    
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
        
        bannerView.delegate = self
        bannerView.adUnitID = "ca-app-pub-7352354661944634/8008676402"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        
        
        let path = Bundle.main.path(forResource: "TableData", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        question = dict!.object(forKey: "mainArray") as! [[[String]]]
        
        counter = question.count
        generateQuestion(showrandom())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC:Vc2 = segue.destination as! Vc2
        destinationVC.pita = pita
        destinationVC.kapha = kapha
        destinationVC.vata = vata
    }
    
    
    func showrandom() -> Int{
        quote += 1
        if quote >= question.count {
            quote = 3
            self.performSegue(withIdentifier: "segue", sender: nil)
            pita = 0
            vata = 0
            kapha = 0
            quote = 0
        }
        return quote
    }
    
  
    
    func generateQuestion (_ questionNumber: Int) {
        counterLabel.text = String(quote + 1) + "/" + String(counter)
        QuestionLabel.text = question[questionNumber][0][0]
        Button1.setTitle(question[questionNumber ][1][0], for: UIControlState())
        Button2.setTitle(question[questionNumber ][1][1], for: UIControlState())
        Button3.setTitle(question[questionNumber ][1][2], for: UIControlState())
        Button4.setTitle(question[questionNumber ][1][3], for: UIControlState())
    }
    
    
    func generateHighScore ( _ buttonNumber: Int) {
        
        switch Int(question[quote][2][buttonNumber - 1])! {
            case 2: pita += 1
             case 1: vata += 1
             case 3: kapha += 1
            case 0: break
        default:
            break
        }
    }
    
    @IBAction func BackBtn(_ sender: AnyObject) {
        self.dismiss(animated: false, completion: nil)
    }
    
    @IBAction func Button1Action(_ sender: UIButton) {generateQuestion(showrandom()); generateHighScore(1)}
    @IBAction func Button2Action(_ sender: UIButton) {generateQuestion(showrandom()); generateHighScore(2)}
    @IBAction func Button3Action(_ sender: UIButton) {generateQuestion(showrandom()); generateHighScore(3)}
    @IBAction func Button4Action(_ sender: UIButton) {generateQuestion(showrandom()); generateHighScore(4)}
}





