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
    
    let nameText: StringObservable
    let lastnameText: StringObservable
    let result: StringObservable!
    
    init(nameText: StringObservable, lastnameText: StringObservable) {
        self.nameText = nameText
        self.lastnameText = lastnameText
        result = combineLatest(nameText, lastnameText) { (name, lastname) in name + " " + lastname }
    }
    
}