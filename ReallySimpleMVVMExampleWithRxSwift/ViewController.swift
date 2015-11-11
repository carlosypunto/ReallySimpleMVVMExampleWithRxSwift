//
//  ViewController.swift
//  SimpleMVVM
//
//  Created by carlos on 12/5/15.
//  Copyright (c) 2015 Carlos García. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var lastnameTextfield: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var viewModel: ViewControllerViewModel!
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewControllerViewModel(
            nameText: nameTextfield.rx_text.asObservable(),
            lastnameText: lastnameTextfield.rx_text.asObservable())
        
        viewModel.result.bindTo(resultLabel.rx_text).addDisposableTo(disposeBag)
    }
    
}

