import UIKit
import Foundation

class FreitagViewController: UITableViewController {
    
    var tableData = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let path = Bundle.main.path(forResource: "Adressen", ofType: "plist")!
        let dict = NSDictionary(contentsOfFile: path)
        
        tableData = dict!.object(forKey: "Freitag") as! [String]
        
    }
    
    func openAddressInGoogle(_ address: String) {
        let urlString = "comgooglemaps://?saddr=&daddr=\(address)&directionsmode=walking"
        let url = URL(string: urlString)
        
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return tableData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) 
        
        // Configure the cell...
        cell.accessoryType = .detailDisclosureButton
        
        cell.textLabel!.text = tableData[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        openAddressInGoogle("Hössel+12")
    }

}
