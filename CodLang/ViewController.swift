//
//  ViewController.swift
//  CodLang
//
//  Created by Алексей Филатов on 17.03.2021.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(false)
        self.navigationController?.navigationBar.isHidden = true
        
    }
    
    
    @IBAction func startButton(_ sender: UIButton) {
            guard let vc = storyboard?.instantiateViewController(withIdentifier: "TableView") else { return }
            self.navigationController?.pushViewController(vc, animated: true)
            self.navigationController?.navigationBar.isHidden = false }
    }

