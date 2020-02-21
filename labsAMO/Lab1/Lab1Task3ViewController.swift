//
//  Lab1Task3ViewController.swift
//  labsAMO
//
//  Created by Viktory  on 20.02.2020.
//  Copyright © 2020 Viktory. All rights reserved.
//

import UIKit

class Lab1Task3ViewController: UIViewController {

    @IBOutlet weak var resLabel: UILabel!
    @IBOutlet weak var nLabel: UILabel!
    @IBOutlet weak var PLabel: UILabel!
    
    @IBOutlet weak var NTextField: UITextField!
    @IBOutlet weak var PTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboard()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPress(_ sender: UIButton) {
        let n = Int(NTextField.text ?? "") ?? 0
        let p = Int(PTextField.text ?? "") ?? 0
        
        var f = 0.0

        for a in 1...n {
            for b in 1...p {
                f += (pow(Double(a), Double(b)) + pow(Double(b), Double(a)))
            }
        }
        
        
        resLabel.text = "\(String(f))"
        
    }
    
    @IBAction func didPressAlgo(_ sender: UIButton) {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)

        guard let vc = mainStoryBoard.instantiateViewController(identifier: AlgViewController.identifier) as? AlgViewController else { return }
        
        vc.algImage = UIImage(named: "lab1Alg3") ?? UIImage()
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
