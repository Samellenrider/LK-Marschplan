import UIKit

struct Address {
    
    var id: Int
    var date: Date
    var time: String
    var name: String
    var adress: String
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
        Address(id: 1, date: parseDate("22.07.2019"), time: "05:30", name: "Hugo Breitling", adress: "FasanenWeg 7, 88214 Ravensburg", navigationButton: <#T##UIButton#>),
        Address(id: 2, date: parseDate("23.07.2019"), time: "06:45", name: "Peter Maffay", adress: "Am Dom 23, 88212 Ravensburg", navigationButton: <#T##UIButton#>),
        Address(id: 3, date: parseDate("24.07.2019"), time: "06:15", name: "Arthur Binder", adress: "Petersbrücke 42, 88213 Ravensburg", navigationButton: <#T##UIButton#>)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

