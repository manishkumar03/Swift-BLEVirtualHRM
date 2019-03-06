//
//  ViewController.swift
//  BLEVirtualHRM
//
//  Created by Manish Kumar on 2019-03-05.
//  Copyright © 2019 Manish Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BLEPeripheralManagerDelegate {

  @IBOutlet weak var peripheralStatus: UILabel!
  var blePeripheralManager: BLEPeripheralManager!

  override func viewDidLoad() {
    super.viewDidLoad()
    blePeripheralManager = BLEPeripheralManager()
    blePeripheralManager.delegate = self
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    self.peripheralStatus.text = "Now sending heart rate: ___"
  }
  
  func BLEPeripheralManagerDidSendValue(_ heartRateBPM: UInt8) {
    DispatchQueue.main.async {
      print("Sending heart rate: \(heartRateBPM.description)")
      self.peripheralStatus.text = "Now sending heart rate: \(heartRateBPM.description)"
    }
  }
  
}

