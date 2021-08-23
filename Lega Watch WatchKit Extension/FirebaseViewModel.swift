//
//  FirebaseVIewModel.swift
//  Lega
//
//  Created by Ardyansyah Wijaya on 05/08/21.
//

import Foundation
import FirebaseDatabase
import FirebaseMessaging
import SwiftUI

class FirebaseViewModel: ObservableObject {

//    @ObservedObject var data: DeviceIotViewModel = DeviceIotViewModel()
    @Published var result: Int?

    // funsgi manggil data firebase
    func makeFirebaseCall(id: Int) {
        var firePath = ""
        if id == 0 {
            firePath = "indah-1"
        } else {
            firePath = "ardy-1"
        }
        // data.usId kalau kosong maka error di bagian bawah karena data tidak ditemukan
        // makanya butuh optional value seperti ardy-1
        let ref = Database.database().reference(withPath: firePath)
        // data.senId juga tidak boleh kosong karena itu path firebase buat baca data gasValue
        let sensorRef = ref.child("sensor-1").child("gasValue")
        sensorRef.queryLimited(toLast: 1).observe(.value) { (snapshot) in
            let value = snapshot.value as? NSDictionary
            print(value ?? 0)
            let dictvalue = value?.swiftDictionary
            let key = dictvalue?.values.first
            // value nya harus cari cara biar bisa ambil unique id nya
            let output = key as? Int
            // kalau firebase gasValue kosong sama sekali bakalan error
            // minimal ada 1 data nya
            // diganti jdi optional value biar ga crash
            print(output ?? 0)
            self.result = output ?? 0
        }
        
    }

//    let token: [String: AnyObject] = [Messaging.messaging().fcmToken!: Messaging.messaging().fcmToken as AnyObject]
//    func postToken(Token: [String: AnyObject]) {
//        print("FCM Token: \(Token)")
//        // kalau data.usId isi nya tidak sesuai atau ngasal maka dia akan buat path baru dan masukan token disana
//        let ref = Database.database().reference(withPath: "indah-1")
//        ref.child("fcmToken").child(Messaging.messaging().fcmToken!).setValue(Token)
//    }
    
    
    // Get Smoke PPM Number for view
    var smokeNumber: Int {
        let smokeNumber = self.result ?? 0
        return smokeNumber
    }

    
    var healthStatus: String {
//        let smokePercentage = Int(smokePercentageText) ?? 0
        let smokePercentage = self.result ?? 0
        
        switch smokePercentage {
            case 0...750:
                return NSLocalizedString("Healthy", comment: "tanda")
            default:
                return NSLocalizedString("Danger!", comment: "tanda")

        }
    }
    
    var isHealthy: Bool {
        let smokeNumber = self.result ?? 0
        if smokeNumber < 751 {
            return true
        } else {
            return false
        }
    }
}

extension NSDictionary {
  
  var swiftDictionary: [String : AnyObject] {
    var swiftDictionary: [String : AnyObject] = [:]
    let keys = self.allKeys.compactMap { $0 as? String }
    for key in keys {
      let keyValue = self.value(forKey: key) as AnyObject
      swiftDictionary[key] = keyValue
    }
    return swiftDictionary
  }
}
