import Foundation
import FirebaseDatabase

var adAppID = ""
var adUnitID = ""

func setAdInfo() {
    let ref = Database.database().reference()
    ref.child("AppInfo").observe(.childAdded, with: { (snapshot) in
        if snapshot.key=="AdAppID" {
            adAppID = snapshot.value as! String
        } else if snapshot.key=="AdUnitID" {
            adUnitID = snapshot.value as! String
        }
    })
}
