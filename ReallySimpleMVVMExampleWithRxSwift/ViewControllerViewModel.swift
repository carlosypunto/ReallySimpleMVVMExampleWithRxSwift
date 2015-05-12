//
//  ViewControllerViewModel.swift
//  SimpleMVVM
//
//  Created by carlos on 12/5/15.
//  Copyright (c) 2015 Carlos García. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

typealias StringObservable = Observable<String>

class ViewControllerViewModel {
  
  var nameText: StringObservable!
  var lastnameText: StringObservable!
  
  var result: StringObservable!
  
  func configure(nameTF: UITextField, lastnameTF: UITextField) {
    nameText = nameTF.rx_text()
    lastnameText = lastnameTF.rx_text()
    result = combineLatest(nameText, lastnameText) { (name, lastname) in name + " " + lastname } >- variable
  }
  
}