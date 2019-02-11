import UIKit
import Foundation

class AdressListViewController: UIViewController {
    
    @IBOutlet var addressTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func openAddressInGoogle(_ address: String) {
        let urlString = "comgooglemaps://?saddr=&daddr=\(address)&directionsmode=walking"
        let url = URL(string: urlString)
        
        UIApplication.shared.openURL(url!)
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        openAddressInGoogle("Hello")
        
    }
    
    @IBAction func testButton(_ sender: Any) {
        openAddressInGoogle("hello")
    }
    
}

