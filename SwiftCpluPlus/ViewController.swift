//
//  ViewController.swift
//  SwiftCpluPlus
//
//  Created by Angelos Staboulis on 14/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var numbers = Numbers()
        debugPrint("result=",numbers.addNumbers(30, 140))
        let newString = String(cString: numbers.getString())
        debugPrint("name=",newString)
        
        var outputReal = UnsafeMutablePointer<Int32>.allocate(capacity: 10)
        outputReal = numbers.getArrayOfInt()
        let buffer = UnsafeBufferPointer(start:outputReal, count: 10)
        let newArray = Array(buffer)
        debugPrint("array=",newArray)
        var outputString = UnsafeMutablePointer<CChar>.allocate(capacity: 4)
        var outputStringArray = numbers.getArrayOfStrings()!
        let bufferString = UnsafeBufferPointer(start:outputStringArray, count: 4)
        let bufferArray = Array(bufferString)
        for item in bufferArray{
            debugPrint(String(cString: item!))
        }

    }


}

