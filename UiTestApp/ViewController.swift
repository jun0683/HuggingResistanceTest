//
//  ViewController.swift
//  UiTestApp
//
//  Created by 김홍준 on 19/12/2018.
//  Copyright © 2018 hjkim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setlabel(label: label1)
        setlabel(label: label2)
    }
    
    func setlabel(label:UILabel) {
        let hug = label.contentHuggingPriority(for: NSLayoutConstraint.Axis.horizontal)
        let regi = label.contentCompressionResistancePriority(for: NSLayoutConstraint.Axis.horizontal)
        label.text = "hug \((hug).rawValue) regi \((regi).rawValue)"
    }

    @IBAction func label1hugup(_ sender: Any) {
        let hug = label1.contentHuggingPriority(for: NSLayoutConstraint.Axis.horizontal)
        label1.setContentHuggingPriority(hug + 1, for: NSLayoutConstraint.Axis.horizontal)
        setlabel(label: label1)
    }
    @IBAction func label1hugdown(_ sender: Any) {
        let hug = label1.contentHuggingPriority(for: NSLayoutConstraint.Axis.horizontal)
        label1.setContentHuggingPriority(hug - 1, for: NSLayoutConstraint.Axis.horizontal)
        setlabel(label: label1)
    }
    @IBAction func label1regiup(_ sender: Any) {
        let regi = label1.contentCompressionResistancePriority(for: NSLayoutConstraint.Axis.horizontal)
        label1.setContentCompressionResistancePriority(regi + 1, for: NSLayoutConstraint.Axis.horizontal)
        setlabel(label: label1)
    }
    @IBAction func label1regidown(_ sender: Any) {
        let regi = label1.contentCompressionResistancePriority(for: NSLayoutConstraint.Axis.horizontal)
        label1.setContentCompressionResistancePriority(regi - 1, for: NSLayoutConstraint.Axis.horizontal)
        setlabel(label: label1)
    }
    
    @IBAction func label2hugup(_ sender: Any) {
        let hug = label2.contentHuggingPriority(for: NSLayoutConstraint.Axis.horizontal)
        label2.setContentHuggingPriority(hug + 1, for: NSLayoutConstraint.Axis.horizontal)
        setlabel(label: label2)
    }
    @IBAction func label2hugdown(_ sender: Any) {
        let hug = label2.contentHuggingPriority(for: NSLayoutConstraint.Axis.horizontal)
        label2.setContentHuggingPriority(hug - 1, for: NSLayoutConstraint.Axis.horizontal)
        setlabel(label: label2)
    }
    @IBAction func label2regiup(_ sender: Any) {
        let regi = label2.contentCompressionResistancePriority(for: NSLayoutConstraint.Axis.horizontal)
        label2.setContentCompressionResistancePriority(regi + 1, for: NSLayoutConstraint.Axis.horizontal)
        setlabel(label: label2)
    }
    @IBAction func label2regidown(_ sender: Any) {
        let regi = label2.contentCompressionResistancePriority(for: NSLayoutConstraint.Axis.horizontal)
        label2.setContentCompressionResistancePriority(regi - 1, for: NSLayoutConstraint.Axis.horizontal)
        setlabel(label: label2)
    }
    
}

