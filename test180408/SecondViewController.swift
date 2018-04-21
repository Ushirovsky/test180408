//
//  SecondViewController.swift
//  test180408
//
//  Created by 鈴木 有貴 on 2018/04/08.
//  Copyright © 2018年 鈴木 有貴. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate: class {
    func secondViewController(_ viewController: SecondViewController, didTapButton button: UIButton)
}

class SecondViewController: UIViewController {
    
    weak var delegate: SecondViewControllerDelegate? // [2] delegate オブジェクト
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeButtonTapped(_ sender: UIButton) {
        delegate?.secondViewController(self, didTapButton: sender)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
