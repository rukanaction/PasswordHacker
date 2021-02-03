//
//  ViewController.swift
//  PasswordHacker
//
//  Created by Ruka Saito on 2021/02/03.
//

import UIKit

class ViewController: UIViewController {
    //結果表示用ラベル
    @IBOutlet var resultLabel1: UILabel!      //右から1番目
    @IBOutlet var resultLabel2: UILabel!      //右から2番目
    @IBOutlet var resultLabel3: UILabel!      //右から3番目
    @IBOutlet var resultLabel4: UILabel!      //右から4番目
    
    //カウント表示用ラベル
    @IBOutlet var countLabel: UILabel!
    
    //秘密のパスワード
    var password: Int = 0214

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func start(){
//        if password == 0000{          //パスワードが0000だったら
//            print("正解は0000です！")
//        }else if password == 0001{          //パスワードが0001だったら
//            print("正解は0001です！")
//        }else if password == 0002{          //パスワードが0002だったら
//            print("正解は0002です！")
//        }else if password == 0003{          //パスワードが0003だったら
//            print("正解は0003です！")
//        }else if password == 0004{          //パスワードが0004だったら
//            print("正解は0004です！")
//        }else if password == 0005{          //パスワードが0005だったら
//            print("正解は0005です！")
//        }
        
        for i in 0...9999{
            //解析中の数字を表示する
            countLabel.text = String(i)
            
            //処理を0.0005秒、待機する。
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            
            //passwordがiと一致したら
            if i == password{
                //passwordの桁ごとの数字を入れる配列
                var digits = [Int]()
                
                for _ in 0...3{
                    digits.append(password % 10)
                    password = password / 10
                }
                
                resultLabel1.text = String(digits[0])
                resultLabel2.text = String(digits[1])
                resultLabel3.text = String(digits[2])
                resultLabel4.text = String(digits[3])
            }
            //print("正解は"+String(i)+"です！")でも大丈夫！
        }
        
    }
    
    @IBAction func reset(){
        //passwordを0214に再設定する
        password = 0214
        
        //countLabelの表示を元に戻す
        countLabel.text = "「START」ボタンを押して解析開始"
        
        //ラベルの表示をすべて0に戻す
        resultLabel1.text = "0"
        resultLabel2.text = "0"
        resultLabel3.text = "0"
        resultLabel4.text = "0"
    }

}

