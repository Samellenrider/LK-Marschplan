import UIKit
import Foundation

//let addressListClass = AddressListClass()

var addressButton: UIButton!

struct Address {
    
    var id: Int
    var date: Date
    var time: String
    var name: String
    var address: String
    var navigationButton: UIButton
    
}

fileprivate func parseDate(_ str: String) -> Date {
    
    let dateformatter = DateFormatter()
    dateformatter.dateFormat = "dd-MM-yyyy"
    return dateformatter.date(from: str)!
}

var addresses: Array = [
    Address(id: 1, date: parseDate("22.07.2019"), time: "05:30", name: "Hugo Breitling", address: "Schützenstraße+7+Ravensburg", navigationButton: addressButton),
    Address(id: 2, date: parseDate("23.07.2019"), time: "06:45", name: "Peter Maffay", address: "Federburg+Straße+23+Ravensburg", navigationButton: addressButton),
    Address(id: 3, date: parseDate("24.07.2019"), time: "06:15", name: "Arthur Binder", address: "Marienplatz+3+Ravensburg", navigationButton: addressButton)
]


class AdressListViewController: UIViewController {
    
//    var firstAdress: String?
    
    @IBOutlet var addressTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        debugPrint(addresses[0].address)
        
    }
    
    func openAddressInGoogle(_ address: String) {
        let urlString = "comgooglemaps://?saddr=&daddr=\(address)&directionsmode=walking"
        let url = URL(string: urlString)
        
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    
//    @IBAction func buttonPressed(_ sender: Any) {
//
//        openAddressInGoogle("Marienplatz+3+Ravensburg")
//    }
    
    
    
    
    
    @IBAction func testButton(_ sender: Any) {
        print(addresses)
        
        let firstAdress =  addresses.first?.address
        
        openAddressInGoogle(firstAdress!)
    }
    
    
    
}

