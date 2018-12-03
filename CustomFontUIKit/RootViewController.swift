//
//  RootViewController.swift
//  CustomFontUIKit
//
//  Created by Alex Nagy on 03/12/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import UIKit
import TinyConstraints

struct Fonts {
    static let komikaTitle = "KomikaTitle"
}

class RootViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Custom Font"
        label.font = UIFont(name: Fonts.komikaTitle, size: 32)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        view.addSubview(label)
        label.centerInSuperview()
        logAllFonts()
    }

    func logAllFonts() {
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Font Family: [\(family)] - Names: [\(names)]")
        }
    }

}

