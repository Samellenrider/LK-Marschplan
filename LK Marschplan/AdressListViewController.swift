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
    @IBOutlet var settingsButton: UIBarButtonItem!
    
    @IBOutlet var freitagButton: UIButton!
    @IBOutlet var samstagButton: UIButton!
    @IBOutlet var sonntagButton: UIButton!
    @IBOutlet var montagButton: UIButton!
    @IBOutlet var dienstagButton: UIButton!
    @IBOutlet var auswärtigerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        freitagButton.layer.cornerRadius = 10
        samstagButton.layer.cornerRadius = 10
        sonntagButton.layer.cornerRadius = 10
        montagButton.layer.cornerRadius = 10
        dienstagButton.layer.cornerRadius = 10
        auswärtigerButton.layer.cornerRadius = 10
        
        freitagButton.layer.shadowColor = UIColor.black.cgColor
        samstagButton.layer.shadowColor = UIColor.black.cgColor
        sonntagButton.layer.shadowColor = UIColor.black.cgColor
        montagButton.layer.shadowColor = UIColor.black.cgColor
        dienstagButton.layer.shadowColor = UIColor.black.cgColor
        auswärtigerButton.layer.shadowColor = UIColor.black.cgColor
        
        freitagButton.layer.shadowRadius = 10
        samstagButton.layer.shadowRadius = 10
        sonntagButton.layer.shadowRadius = 10
        montagButton.layer.shadowRadius = 10
        dienstagButton.layer.shadowRadius = 10
        auswärtigerButton.layer.shadowRadius = 10
        
        freitagButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        samstagButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        sonntagButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        montagButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        dienstagButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        auswärtigerButton.layer.shadowOffset = CGSize(width: 0, height: 3)
        
        freitagButton.layer.shadowOpacity = 1.0
        samstagButton.layer.shadowOpacity = 1.0
        sonntagButton.layer.shadowOpacity = 1.0
        montagButton.layer.shadowOpacity = 1.0
        dienstagButton.layer.shadowOpacity = 1.0
        auswärtigerButton.layer.shadowOpacity = 1.0
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

