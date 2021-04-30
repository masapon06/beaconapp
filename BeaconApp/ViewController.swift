//
//  ViewController.swift
//  BeaconApp
//
//  Created by 菅野雅史 on 2021/04/30.
//

import UIKit

import CoreLocation

class ViewController: UIViewController {
   
    // CoreLocation
    var locationManager : CLLocationManager!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // ロケーションマネージャーオブジェクトを作成
        self.locationManager = CLLocationManager();

        // 位置情報の認証ステータスを取得
        let status = CLLocationManager.authorizationStatus()
       
        // 位置情報の認証が許可されていない場合は認証ダイアログを表示
        if (status != CLAuthorizationStatus.authorizedWhenInUse) {
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
    
}
