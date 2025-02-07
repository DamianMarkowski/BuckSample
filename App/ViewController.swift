import UIKit
import ASwiftModule

class ViewController: UIViewController {

  let value = "ViewName"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView()
        view.frame = self.view.frame
        view.backgroundColor = .white
        self.view = view
        
        let label = UILabel()
        label.text = localizedString("Hello, world", "Text on main view controller")
        self.view.addSubview(label)
        label.sizeToFit()
        label.center = self.view.center
    }
    
}
