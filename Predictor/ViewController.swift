//
//  ViewController.swift
//  Predictor
//
//  Created by 侯天阔 on 2023/4/1.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var outputTextField: UITextView!
    
    @IBOutlet weak var button: UIButton!
        
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 2 // 点击计数器
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 初始化按钮的状态
        button.isEnabled = false
        
        countLabel.text = "剩余次数：\(count)"
        inputTextField.contentMode = .top
        // 监听文本框的输入变化
        inputTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)

    }
    
    // 监听文本框的输入变化
    @objc func textFieldDidChange(_ textField: UITextField) {
        if let text = textField.text {
            // 如果输入文本框中的字符数超过 2 个，就启用按钮
            button.isEnabled = text.count > 0
        } else {
            button.isEnabled = false
        }
    }
    
    // 处理按钮的点击事件
    @IBAction func buttonClicked(_ sender: Any) {
        if count > 0 {
            if let text = inputTextField.text {
                if text.count < 3 {
                    // 如果输入文本框中的字符数不超过 2 个，就在输出文本框中显示 "请向我直接袒露你的心声"
                    outputTextField.text = "请向我直接袒露你的心声"
                } else {
                    // 否则，在 ["你好", "hello", "halo"] 中随机选一个文本，显示在输出文本框中
                    let texts = ["你需要跨越河流才能到达那里",
                                 "在黑暗中，只有勇者才能看到路",
                                 "你需要找到失落的碎片，才能完成你的任务",
                                 "你需要学会放弃一些东西，才能获得更好的结果",
                                 "行动胜于空谈",
                                 "机会只留给那些有准备的人",
                                 "你必须先破坏，然后再建造",
                                 "不要停留在舒适区",
                                 "坚持不懈，直到成功",
                                 "当你失败时，不要失去勇气",
                                 "最好的方式是去行动，而不是等待",
                                 "只要你愿意，就能够实现梦想",
                                 "不要害怕失败，它是成功的必经之路",
                                 "追求卓越，而不是平庸",
                                 "成功需要坚韧不拔的毅力",
                                 "机会总是留给那些有准备的人",
                                 "没有行动，就没有结果",
                                 "不要害怕失败，它是成功的前奏",
                                 "小心！",
                                 "危险！",
                                 "警惕！",
                                 "注意！",
                                 "慎重！",
                                 "留意！",
                                 "提防！",
                                 "谨慎！",
                                 "随时准备！",
                                 "准备行动！",
                                 "做好准备！",
                                 "态度要认真！",
                                 "必须慎重考虑！",
                                 "必须谨慎行事！",
                                 "要谨慎处理！",
                                 "千万别大意！",
                                 "必须小心处理！",
                                 "必须谨慎选择！",
                                 "必须慎重对待！"
                    ]
                    let randomIndex = Int.random(in: 0..<texts.count)
                    outputTextField.text = texts[randomIndex]
                    count -= 1
                    countLabel.text = "剩余次数：\(count)"
                    }
                }
        }else{
            outputTextField.text = "真正的智慧并不在于知道所有的答案，而在于知道该如何去思考。\n 你已经获得了指引，请下次再来吧"
        }
        }
    }

