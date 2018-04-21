//
//  SampleViewController.swift
//  test180408
//
//  Created by 鈴木 有貴 on 2018/04/08.
//  Copyright © 2018年 鈴木 有貴. All rights reserved.
//

import UIKit

class SampleViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Test"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        label.text = "YES"
    }
    
    @IBAction func SecondButtonTapped(_ sender: UIButton) {
        //performSegue(withIdentifier: "presentSecondViewController", sender: self)
        guard let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController  else {
            return
        }
        secondViewController.delegate = self
        present(secondViewController, animated: true, completion: nil)
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

extension SampleViewController: SecondViewControllerDelegate { // [4] protocol の採用
    func secondViewController(_ viewController: SecondViewController, didTapButton button: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
