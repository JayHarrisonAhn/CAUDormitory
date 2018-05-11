import UIKit

class Cafe:facility {
    override init() {
        super.init()
        super.name_korean = "카페"
        super.CellSegueIdentifier = "CFE"
        super.icon = UIImage(named: "info_logo_"+super.CellSegueIdentifier)!
    }
}

class CafeViewController: AdsViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet var detail: UILabel!
    
    override func viewDidLoad() {
        
    }
}
