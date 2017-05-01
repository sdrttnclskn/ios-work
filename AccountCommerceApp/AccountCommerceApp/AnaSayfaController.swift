
import UIKit

class AnaSayfaController: UIViewController{
    
    //UITableViewDataSource ,UITableViewDelegate -- tableView kullanımı
    
    @IBOutlet weak var lbKullanıcı: UILabel!
    @IBOutlet weak var switchTekCekim: UISwitch!
    @IBOutlet weak var switchTaksit: UISwitch!
    @IBOutlet weak var tvSonuc: UITextView!
    @IBOutlet weak var tfTaksitSayısı: UITextField!
    @IBOutlet weak var btnTaksitlendirme: UIButton!
 
    var KullanıcıAdı:String = ""
    var taksit : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        tvSonuc.isHidden = true
        tfTaksitSayısı.isHidden = true
        btnTaksitlendirme.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        lbKullanıcı.text = "Hoşgeldiniz \(KullanıcıAdı)"
    }
    
      @IBAction func TekCekim(_ sender:Any){
        if (switchTekCekim.isOn){
            tfTaksitSayısı.isHidden = true
            tvSonuc.isHidden = true
            btnTaksitlendirme.isHidden = true
            switchTaksit.isOn = false
        }else{
            switchTaksit.isOn = true

        }
    }
    
    @IBAction func Taksit(_ sender:Any){
      
        if (switchTaksit.isOn){
        tfTaksitSayısı.isHidden = false
        btnTaksitlendirme.isHidden = false
        switchTekCekim.isOn = false
        }else{
        switchTekCekim.isOn = true
        }
    }
    
    @IBAction func btnTaksitlendir(_ sender: UIButton) {
        tvSonuc.isHidden = false
        let sayi = Int(tfTaksitSayısı.text!)
        for i in 1...sayi! {
            taksit = taksit +  "\(i).Taksit" + "\n"
        }
        tvSonuc.text = taksit
        taksit = ""
    }


   /* var satırlar = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return satırlar.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
       let cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "myCell")
        cell.textLabel?.text = satırlar[indexPath.row]
        return cell
    }  */
 
    
    }

    

