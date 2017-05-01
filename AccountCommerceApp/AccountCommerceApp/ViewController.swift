
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfKullanıcıAdı: UITextField!
    @IBOutlet weak var tfSifre: UITextField!
    @IBOutlet weak var switchBeniHatırla: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnGiris(_ sender: Any) {
        
        if (tfKullanıcıAdı.text == "admin" && tfSifre.text == "123465")
        {
            self.performSegue(withIdentifier: "segue", sender: nil)
        }else{
        
            let alert = UIAlertController.init(title: "Uyarı", message: "Kullanıcı Adı veya Şifre hatalı", preferredStyle:UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction.init(title: "Tamam", style:UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue"{
    
            let dest = segue.destination as! AnaSayfaController
            dest.KullanıcıAdı = tfKullanıcıAdı.text
        }
    }

}

