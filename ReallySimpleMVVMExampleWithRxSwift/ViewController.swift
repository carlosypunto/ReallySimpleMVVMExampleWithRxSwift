//
//  ViewController.swift
//  SimpleMVVM
//
//  Created by carlos on 12/5/15.
//  Copyright (c) 2015 Carlos García. All rights reserved.
//

import UIKit
import RxCocoa

class ViewController: UIViewController {
  
  @IBOutlet weak var nameTextfield: UITextField!
  @IBOutlet weak var lastnameTextfield: UITextField!
  @IBOutlet weak var resultLabel: UILabel!
  
  var viewModel: ViewControllerViewModel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    viewModel = ViewControllerViewModel()
    viewModel.configure(nameTextfield, lastnameTF: lastnameTextfield)
    resultLabel.rx_subscribeTextTo(viewModel.result)
  }

}

