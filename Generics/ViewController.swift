//
//  ViewController.swift
//  Generics
//
//  Created by Ritsuko Iwai on 2017/12/27.
//  Copyright © 2017年 Ritsuko Iwai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    struct Stack<Element> {
        var contents = [Element]()
        mutating func push(_ content: Element) {
            contents.append(content)
        }
        mutating func pop() -> Element {
            return contents.removeLast()
        }
     }

    override func viewDidLoad() {
        super.viewDidLoad()

        var someInt = 3
        var anotherInt = 7
        swapTowInts(&someInt, &anotherInt)
        print("\(someInt), \(anotherInt)")
        var someString = "ABC"
        var anotherString = "DEF"
        swapTowValues(&someString, &anotherString)
        print("\(someString), \(anotherString)")

        var stackOfStrings = Stack<String>()
        stackOfStrings.push("un")
        stackOfStrings.push("due")
        stackOfStrings.push("trois")
        stackOfStrings.push("auatre")
        stackOfStrings.push("cinq")
        stackOfStrings.push("dix")
        print("stackOfStrings = \(stackOfStrings)")
        print("pop = \(stackOfStrings.pop())")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func swapTowInts(_ a: inout Int, _ b: inout Int) {
        let tempA = a
        a = b
        b = tempA
    }

    func swapTowValues<T>(_ a: inout T, _ b: inout T) {
        let tempValue = a
        a = b
        b = tempValue
    }

}

