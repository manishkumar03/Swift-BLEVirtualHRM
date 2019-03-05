//
//  ViewController.swift
//  BLEVirtualHRM
//
//  Created by Manish Kumar on 2019-03-05.
//  Copyright © 2019 Manish Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var blePeripheralManager: BLEPeripheralManager!

  override func viewDidLoad() {
    super.viewDidLoad()
    blePeripheralManager = BLEPeripheralManager()
  }


}

