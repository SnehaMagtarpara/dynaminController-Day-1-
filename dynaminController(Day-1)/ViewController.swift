//
//  ViewController.swift
//  dynaminController(Day-1)
//
//  Created by R93 on 29/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       button()
        textField()
    }
    
    func button()
    {
        let button = UIButton()
        button.layer.backgroundColor = UIColor.cyan.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 5
        button.layer.borderColor = UIColor.black.cgColor
        view.addSubview(button)
        button.frame = CGRect(x: 100, y: 200, width: view.frame.width-200, height: 30)
        button.setTitle("Save", for: .normal)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    func textField()
    {
        let textField = UITextField()
        textField.layer.backgroundColor = UIColor.white.cgColor
        textField.layer.borderWidth = 2
        textField.layer.cornerRadius = 5
        textField.layer.borderColor = UIColor.gray.cgColor
        view.addSubview(textField)
        textField.frame = CGRect(x: 20, y: 100, width: view.frame.width-40, height: 25)
    }
   @objc func buttonAction()
    {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(navigation, animated: true)
    }

    


}

