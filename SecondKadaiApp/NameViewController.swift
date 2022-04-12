//
//  NameViewController.swift
//  SecondKadaiApp
//
//  Created by 津端 俊尚 on 2022/04/12.
//

import UIKit

class NameViewController: UIViewController {

    // 2画面目のLabelを、StoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var label: UILabel!

    // 受け取るためのプロパティ（変数）を宣言しておく
    var name:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = "こんにちは、\(name)さん"
    }
}
