import UIKit
import Foundation

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

class AdressListViewController: UIViewController {
    
    @IBOutlet var addressTable: UITableView!
    @IBOutlet var addressButton: UIButton!
    
    var addresses = [
        Address(id: 1, date: parseDate("22.07.2019"), time: "05:30", name: "Hugo Breitling", address: "FasanenWeg 7, 88214 Ravensburg", navigationButton: <#T##UIButton#>),
        Address(id: 2, date: parseDate("23.07.2019"), time: "06:45", name: "Peter Maffay", address: "Am Dom 23, 88212 Ravensburg", navigationButton: <#T##UIButton#>),
        Address(id: 3, date: parseDate("24.07.2019"), time: "06:15", name: "Arthur Binder", address: "Petersbrücke 42, 88213 Ravensburg", navigationButton: <#T##UIButton#>)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func openAddressInGoogle(_ address: String) {
        let urlString = "https://www.google.com/maps/"
        let url = URL(string: urlString)
        
        UIApplication.shared.openURL(url!)
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        openAddressInGoogle("Hello")
        
    }

}

