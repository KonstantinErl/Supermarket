import UIKit

class ViewController: UIViewController {
    
    var itogo = 0
    
    var chernogolovkaTotal = 0
    var dobryiTotal = 0
    var frutonyanyaTotal = 0
    
    let chernogolovkaPrice: Int = 100
    let dobryiPrice: Int = 70
    let frutonyanyaPrice: Int = 30


    @IBOutlet weak var chernogolovkaButton: UIButton!
    @IBOutlet weak var dobryiButton: UIButton!
    @IBOutlet weak var frutonyanyaButton: UIButton!
    @IBOutlet weak var sbrosButton: UIButton!
    
    @IBOutlet weak var vyvodLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        summWatter()
    }
   
    @IBAction func chernogolovkaButtonAction(_ sender: Any) {
        chernogolovka()
        summWatter()
    }
    
    @IBAction func dobryiButtonAction(_ sender: Any) {
        dobryi()
        summWatter()
    }
    
    @IBAction func frutonyanyaButtonAction(_ sender: Any) {
        frutonyanya()
        summWatter()
    }
    @IBAction func sbrosButtonActon(_ sender: Any) {
        summWatter()
        sbrositVse()
    }
    
    
    //MARK: - FUNCTIONS
    
    func chernogolovka() {
        chernogolovkaTotal += chernogolovkaPrice
        itogo = chernogolovkaTotal + dobryiTotal + frutonyanyaTotal
    }
    func dobryi() {
        dobryiTotal += dobryiPrice
        
        itogo = dobryiTotal + frutonyanyaTotal + chernogolovkaTotal
    }
    func frutonyanya() {
        frutonyanyaTotal += frutonyanyaPrice
        
        itogo = frutonyanyaTotal + dobryiTotal + chernogolovkaTotal
    }
    func sbrositVse() {
        itogo = 0
        chernogolovkaTotal = 0
        dobryiTotal = 0
        frutonyanyaTotal = 0
    }
    func summWatter() {
        vyvodLabel.text = "Сумма покупки - \(itogo) \n\n черноголовка - \(chernogolovkaTotal) \n добрый - \(dobryiTotal) \n фрутоняня - \(frutonyanyaTotal)"
    }
}

