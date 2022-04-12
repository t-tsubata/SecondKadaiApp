//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 津端 俊尚 on 2022/04/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    // 文字列保存用の変数
    var textFieldString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let nameViewController:NameViewController = segue.destination as! NameViewController
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        // TextFieldから文字を取得
        textFieldString = name.text!
        nameViewController.name = textFieldString
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // 他の画面から segue を使って戻ってきた時に呼ばれる
    }
}

