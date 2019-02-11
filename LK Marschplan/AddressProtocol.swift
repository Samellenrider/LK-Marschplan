import UIKit
import Foundation

class AddressList {

  struct Address {
    
      var id: Int
      var date: Date
      var time: String
      var name: String
      var address: String
      var navigationButton: UIButton
    
  }

  var addressButton: UIButton!

  func parseDate(_ str: String) -> Date {
    
      let dateformatter = DateFormatter()
      dateformatter.dateFormat = "dd-MM-yyyy"
      return dateformatter.date(from: str)!
  }

  var addresses = [
      Address(id: 1, date: parseDate("22.07.2019"), time: "05:30", name: "Hugo Breitling", address: "Schützenstraße+7+Ravensburg", navigationButton: addressButton),
      Address(id: 2, date: parseDate("23.07.2019"), time: "06:45", name: "Peter Maffay", address: "Federburg+Straße+23+Ravensburg", navigationButton: addressButton),
      Address(id: 3, date: parseDate("24.07.2019"), time: "06:15", name: "Arthur Binder", address: "Marienplatz+3+Ravensburg", navigationButton: addressButton)
  ]

}
