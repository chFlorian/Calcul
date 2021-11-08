//
//  ContentView.swift
//  Calcul
//
//  Created by florian schweizer on 05.11.21.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    @State var leftValue: Double
    @State var rightValue: Double
    @State var op: String
    
    init() {
        if let valueLeft = UserDefaults(suiteName: "group.calcul")?.double(forKey: "leftValue") {
            leftValue = valueLeft
        } else {
            leftValue = 0
        }
        
        if let valueRight = UserDefaults(suiteName: "group.calcul")?.double(forKey: "rightValue") {
            rightValue = valueRight
        } else {
            rightValue = 0
        }
        
        if let opValue = UserDefaults(suiteName: "group.calcul")?.string(forKey: "currentOperator") {
            op = opValue
        } else {
            op = ""
        }
    }
    
    var body: some View {
        Text(leftValue, format: .number)
            .onOpenURL(perform: handle(_:))
    }
    
    private func handle(_ url: URL) {
        if let value = UserDefaults(suiteName: "group.calcul")?.double(forKey: "leftValue") {
            leftValue = value
        }
        
        if let value = UserDefaults(suiteName: "group.calcul")?.double(forKey: "rightValue") {
            rightValue = value
        }
        
        if let opValue = UserDefaults(suiteName: "group.calcul")?.string(forKey: "currentOperator") {
            op = opValue
        }
        
        print(url.lastPathComponent)
        
        switch url.lastPathComponent {
            case "c":
                setLeft(0)
                setRight(0)
                setOperator("")
                
            case "plusminus":
                setLeft(-leftValue)
                setOperator("")
                
            case "percent", "multiply", "plus", "minus", "divide":
                setOperator(url.lastPathComponent)
                
            case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
                if !op.isEmpty {
                    rightValue *= 10
                    rightValue += Double(url.lastPathComponent) ?? 0
                    setRight(rightValue)
                } else {
                    leftValue *= 10
                    leftValue += Double(url.lastPathComponent) ?? 0
                    setLeft(leftValue)
                }
                
            case "equal":
                switch op {
                    case "percent":
                        setLeft((leftValue / 100) * rightValue)
                        
                    case "multiply":
                        setLeft(leftValue * rightValue)
                        
                    case "plus":
                        setLeft(leftValue + rightValue)
                    
                    case "minus":
                        setLeft(leftValue - rightValue)
                    
                    case "divide":
                        setLeft(leftValue / rightValue)
                    
                    default:
                        break
                }
                
                setOperator("")
                setRight(0)
                
            default:
                break
        }
        
        WidgetCenter.shared.reloadAllTimelines()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            exit(0)
        }
    }
    
    private func setOperator(_ newValue: String) {
        UserDefaults(suiteName: "group.calcul")?.set(newValue, forKey: "currentOperator")
    }
    
    private func setLeft(_ newValue: Double) {
        UserDefaults(suiteName: "group.calcul")?.set(newValue, forKey: "leftValue")
    }
    
    private func setRight(_ newValue: Double) {
        UserDefaults(suiteName: "group.calcul")?.set(newValue, forKey: "rightValue")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
