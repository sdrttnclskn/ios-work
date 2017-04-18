
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoTitleLabel: UILabel!
    @IBAction func NewImageButton(_ sender: UIButton) {
        
        let url = URL.init(string:"\(Constant.Flickr.APIBaseURL)?\(Constant.FlickersParameterKeys.Method)=\(Constant.FlickersParameterValues.Method)&\(Constant.FlickersParameterKeys.APIKey)=\(Constant.FlickersParameterValues.APIKey)&\(Constant.FlickersParameterKeys.USERId)=\(Constant.FlickersParameterValues.USERId)&\(Constant.FlickersParameterKeys.Extras)=\(Constant.FlickersParameterValues.Extras)&\(Constant.FlickersParameterKeys.Format)=\(Constant.FlickersParameterValues.Format)&\(Constant.FlickersParameterKeys.Nojsoncallback)=\(Constant.FlickersParameterValues.Nojsoncallback)&\(Constant.FlickersParameterKeys.AuoToken)=\(Constant.FlickersParameterValues.AuoToken)&\(Constant.FlickersParameterKeys.APISgi)=\(Constant.FlickersParameterValues.APISgi)")!
        
        
        print(url)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

