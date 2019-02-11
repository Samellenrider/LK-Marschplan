import UIKit
import Foundation

let addressListClass = AddressListClass()

class AdressListViewController: UIViewController {
    
    @IBOutlet var addressTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func openAddressInGoogle(_ address: String) {
        let urlString = "comgooglemaps://?saddr=&daddr=\(address)&directionsmode=walking"
        let url = URL(string: urlString)
        
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        openAddressInGoogle("Hello")
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func testButton(_ sender: Any) {
        openAddressInGoogle("hello")
    }
    
}

