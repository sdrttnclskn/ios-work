

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    
    @IBAction func next(_ sender: UIButton) {
        
        
    }
    
    @IBAction func load(_ sender: UIButton) {
        
        let url = NSURL(string: "http://ilke.org.tr")!
        let Request = URLRequest(url : url as URL)
        webView.loadRequest(Request)
        
        
    }
    
    @IBAction func back(_ sender: UIButton) {
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let htmlString:String! = "<br /><h1>İLKE Mobil Uygulamasına Hoşgeldiniz.Yükle Seçeneği ile Devam Edebilirisiniz📒📕📗📖</h1>"
        webView.loadHTMLString(htmlString, baseURL: nil)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

