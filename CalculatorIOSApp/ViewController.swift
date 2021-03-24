//
//  ViewController.swift
//  CalculatorIOSApp
//
//  Created by Rustam Keneev on 3/22/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var numberOnScreen: Double = 0
    private var previousNumber: Double = 0
    private var performingMath = false
    private var operation  = 0
    
    private let buttonWidth = 0.25
    private let buttonHeight = 0.25
    
    lazy var label : UILabel = {
       let view = UILabel()
        view.text = String()
        return view
    }()
    
    lazy var numbersContainer: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        view.layer.borderWidth = 2
        view.layer.backgroundColor = UIColor.gray.cgColor
        return view
    }()
    
    lazy var buttonC: UIButton = {
        let view = UIButton()
        view.setTitle("C", for: .normal)
        view.setTitleColor(UIColor.orange, for: .normal)
        view.addTarget(self, action: #selector(operationButtonClick), for: .touchUpInside)
        return view
    }()
    
    lazy var buttonPercent: UIButton = {
        let view = UIButton()
        view.setTitle("%", for: .normal)
        view.setTitleColor(UIColor.orange, for: .normal)
        view.addTarget(self, action: #selector(operationButtonClick), for: .touchUpInside)
        return view
    }()
    
    lazy var buttonDelete: UIButton = {
        let view = UIButton()
        view.setTitle("AC", for: .normal)
        view.setTitleColor(UIColor.orange, for: .normal)
        view.addTarget(self, action: #selector(operationButtonClick), for: .touchUpInside)
        return view
    }()
    
    lazy var buttonPlus: UIButton = {
        let view = UIButton()
        view.setTitle("+", for: .normal)
        view.setTitleColor(UIColor.orange, for: .normal)
        view.addTarget(self, action: #selector(operationButtonClick), for: .touchUpInside)
        return view
    }()
    
    lazy var buttonMinus:UIButton = {
        let view = UIButton()
        view.setTitle("-", for: .normal)
        view.setTitleColor(UIColor.orange, for: .normal)
        view.addTarget(self, action: #selector(operationButtonClick), for: .touchUpInside)
        return view
    }()
    
    lazy var buttonEquals: UIButton = {
        let view = UIButton()
        view.setTitle("=", for: .normal)
        view.setTitleColor(UIColor.white, for: .normal)
        view.backgroundColor = .orange
//        view.layer.cornerRadius = 25
        view.addTarget(self, action: #selector(operationButtonClick), for: .touchUpInside)
        return view
    }()
    
    
    lazy var buttonMultyply:UIButton = {
        let view = UIButton()
        view.setTitle("*", for: .normal)
        view.setTitleColor(UIColor.orange, for: .normal)
        view.addTarget(self, action: #selector(operationButtonClick), for: .touchUpInside)
        return view
    }()
    
    lazy var buttonDivine:UIButton = {
        let view = UIButton()
        view.setTitle("/", for: .normal)
        view.setTitleColor(UIColor.orange, for: .normal)
        view.addTarget(self, action: #selector(operationButtonClick), for: .touchUpInside)
        return view
    }()
    
    lazy var buttonDot:UIButton = {
        let view  = UIButton()
        view.setTitle(".", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        return view
    }()
    
    lazy var button0: UIButton = {
        let view = UIButton()
        view.setTitle("0", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.addTarget(self, action: #selector(clickNumberButton), for: .touchUpInside)
        return view
    }()
    
    lazy var button1:UIButton = {
        let view = UIButton()
        view.setTitle("1", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.addTarget(self, action: #selector(clickNumberButton), for: .touchUpInside)
        return view
    }()
    
    lazy var button2: UIButton = {
        let view = UIButton()
        view.setTitle("2", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.addTarget(self, action: #selector(clickNumberButton), for: .touchUpInside)
        return view
    }()
    
    lazy var button3: UIButton = {
        let view = UIButton()
        view.setTitle("3", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.addTarget(self, action: #selector(clickNumberButton), for: .touchUpInside)
        return view
    }()
    
    lazy var button4: UIButton = {
        let view = UIButton()
        view.setTitle("4", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.addTarget(self, action: #selector(clickNumberButton), for: .touchUpInside)
        return view
    }()
    
    lazy var button5:UIButton = {
        let view = UIButton()
        view.setTitle("5", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.addTarget(self, action: #selector(clickNumberButton), for: .touchUpInside)
        return view
    }()
    
    lazy var button6: UIButton = {
        let view = UIButton()
        view.setTitle("6", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.addTarget(self, action: #selector(clickNumberButton), for: .touchUpInside)
        return view
    }()
    
    lazy var button7:UIButton = {
        let view = UIButton()
        view.setTitle("7", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.addTarget(self, action: #selector(clickNumberButton), for: .touchUpInside)
        return view
    }()
    
    lazy var button8:UIButton = {
        let view = UIButton()
        view.setTitle("8", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.addTarget(self, action: #selector(clickNumberButton), for: .touchUpInside)
        return view
    }()
    
    lazy var button9:UIButton = {
        let view = UIButton()
        view.setTitle("9", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.addTarget(self, action: #selector(clickNumberButton), for: .touchUpInside)
        return view
    }()
    
    @objc func operationButtonClick(_ sender: UIButton){
        
    }
    
    @objc func clickNumberButton (_ sender: UIButton){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initViews()
        setupViews()
    }

    func initViews()  {
        view.addSubview(numbersContainer)
        view.addSubview(label)
        numbersContainer.addSubview(buttonC)
        numbersContainer.addSubview(buttonDelete)
        numbersContainer.addSubview(buttonPercent)
        numbersContainer.addSubview(buttonDot)
        numbersContainer.addSubview(buttonPlus)
        numbersContainer.addSubview(buttonMinus)
        numbersContainer.addSubview(buttonMultyply)
        numbersContainer.addSubview(buttonEquals)
        numbersContainer.addSubview(buttonDivine)
        numbersContainer.addSubview(button0)
        numbersContainer.addSubview(button1)
        numbersContainer.addSubview(button2)
        numbersContainer.addSubview(button3)
        numbersContainer.addSubview(button4)
        numbersContainer.addSubview(button5)
        numbersContainer.addSubview(button6)
        numbersContainer.addSubview(button7)
        numbersContainer.addSubview(button8)
        numbersContainer.addSubview(button9)
    }
    
    func setupViews() {
        label.snp.makeConstraints{(make) in
            make.bottom.equalTo(numbersContainer.snp.top)
            make.width.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.1)
        }
        numbersContainer.snp.makeConstraints{(make) in
            make.bottom.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.6)
            make.left.equalToSuperview()
        }
        buttonDot.snp.makeConstraints{(make)in
            make.bottom.equalToSuperview()
            make.left.equalTo(button3.snp.left)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        buttonPercent.snp.makeConstraints{(make) in
            make.bottom.equalTo(button9.snp.bottom)
            make.left.equalTo(button9.snp.right)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        
        buttonDelete.snp.makeConstraints{(make) in
            make.bottom.equalTo(button8.snp.top)
            make.left.equalTo(button8.snp.left)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().dividedBy(buttonHeight)
        }
        
        buttonEquals.snp.makeConstraints{(make) in
            make.left.equalTo(buttonDot.snp.right)
            make.top.equalTo(button0.snp.top)
            make.bottom.equalTo(button0.snp.bottom)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        buttonDivine.snp.makeConstraints{(make) in
            make.left.equalToSuperview()
//            make.bottom.equalTo(buttonMultyply.snp.top)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        
        buttonMinus.snp.makeConstraints{(make) in
            make.left.equalTo(button6.snp.right)
            make.top.equalTo(button6.snp.top)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        buttonPlus.snp.makeConstraints{(make) in
            make.left.equalTo(button3.snp.right)
            make.top.equalTo(button3.snp.top)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        buttonC.snp.makeConstraints{(make) in
            make.top.equalTo(button0.snp.top)
            make.left.equalTo(button7.snp.left)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        button0.snp.makeConstraints{(make) in
            make.bottom.equalToSuperview()
            make.left.equalTo(button2.snp.left)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        button1.snp.makeConstraints{(make) in
            make.bottom.equalTo(button0.snp.top)
            make.left.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        button2.snp.makeConstraints{(make) in
            make.bottom.equalTo(button1.snp.bottom)
            make.left.equalTo(button1.snp.right)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        button3.snp.makeConstraints{(make) in
            make.bottom.equalTo(button1.snp.bottom)
            make.left.equalTo(button2.snp.right)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        button4.snp.makeConstraints{(make) in
            make.bottom.equalTo(button1.snp.top)
            make.left.equalTo(button1.snp.left)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        button5.snp.makeConstraints{(make) in
            make.bottom.equalTo(button4.snp.bottom)
            make.left.equalTo(button4.snp.right)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        button6.snp.makeConstraints{(make) in
            make.bottom.equalTo(button5.snp.bottom)
            make.left.equalTo(button5.snp.right)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        button7.snp.makeConstraints{(make) in
            make.bottom.equalTo(buttonDivine.snp.top)
            make.top.equalToSuperview()
            make.left.equalTo(button4.snp.left)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        button8.snp.makeConstraints{(make) in
            make.bottom.equalTo(button7.snp.bottom)
            make.left.equalTo(button7.snp.right)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
        button9.snp.makeConstraints{(make) in
            make.bottom.equalTo(button7.snp.bottom)
            make.left.equalTo(button6.snp.left)
            make.width.equalToSuperview().multipliedBy(buttonWidth)
            make.height.equalToSuperview().multipliedBy(buttonHeight)
        }
    }

}

