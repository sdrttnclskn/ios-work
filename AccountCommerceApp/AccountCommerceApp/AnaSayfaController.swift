import Foundation
import UIKit

class AnaSayfaController: UIViewController {
    
    
    @IBOutlet weak var lbKullanıcı: UILabel!
    @IBOutlet weak var switchTekCekim: UISwitch!
    @IBOutlet weak var switchTaksit: UISwitch!
    @IBOutlet weak var tfTaksitSayısı: UITextField!
    @IBOutlet weak var tvtTaksitSonucu:UITableView!
    @IBOutlet weak var btnTaksitlendirme: UIButton!
    
    
    var KullanıcıAdı:String?
    var Switch : Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
   



    
    @IBAction  func TekCekim(_ sender:Any){
        if (switchTekCekim.isOn){
            self.tfTaksitSayısı.isHidden = false
            self.tvtTaksitSonucu.isHidden = false
            self.btnTaksitlendirme.isHidden = false
        }else{
        
        
        }
        
    
    }
    
    func Taksit(){
     
        tfTaksitSayısı.isHidden = true
        tvtTaksitSonucu.isHidden = true
        btnTaksitlendirme.isHidden = true
        Switch = true
    
    }
    
    
    @IBAction func btnTaksitlendir(_ sender: UIButton) {
   
    }

    
}
