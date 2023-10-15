//
//  ViewController.swift
//  SwiftCpluPlus
//
//  Created by Angelos Staboulis on 14/10/23.
//

import UIKit

class ViewController: UIViewController {
    var numbers = Numbers()
    var outputReal:UnsafeMutablePointer<Int32>!
    var buffer:UnsafeBufferPointer<Int32>!
    var bufferString:UnsafeBufferPointer<UnsafeMutablePointer<CChar>?>!
    func addNumbersFromC(){
        debugPrint("result=",numbers.addNumbers(30, 140))
    }
    func getStringFromC(){
        let newString = String(cString: numbers.getString())
        debugPrint("name=",newString)
    }
    func getArrayOfIntsFromC(){
        outputReal = UnsafeMutablePointer<Int32>.allocate(capacity: 10)
        outputReal = numbers.getArrayOfInt()
        buffer = UnsafeBufferPointer(start:outputReal, count: 10)
        let newArray = Array(buffer)
        debugPrint("array=",newArray)
        outputReal.deallocate()
    }
    func getArrayOfStringsFromC(){
        
        let outputString = numbers.getArrayOfStrings()
       
        bufferString = UnsafeBufferPointer(start:outputString, count: 4)
        let bufferArray = Array(bufferString)
        for item in bufferArray{
            debugPrint(String(cString: item!))
           
        }
        free(outputString)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addNumbersFromC()
        getStringFromC()
        getArrayOfIntsFromC()
        getArrayOfStringsFromC()
    }
    

}

