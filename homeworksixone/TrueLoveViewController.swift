//
//  TrueLoveViewController.swift
//  homeworksixone
//
//  Created by Kinki Lai on 2017/2/21.
//  Copyright © 2017年 Kinki Lai. All rights reserved.
//

import UIKit

class TrueLoveViewController: UIViewController {

   
    @IBOutlet weak var girlImageView: UIImageView!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var moneySwitch: UISwitch!
    @IBOutlet weak var boyImageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var typeSegmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
    @IBAction func selectButton(_ sender: UIButton) {
        if typeSegmentedControl.selectedSegmentIndex==0{
             girlImageView.isHidden=false
             boyImageView.isHidden=true
             resultLabel .text="你的另一半是周子瑜，不能再美了"
        }else{
        resultLabel .text="你的另一半是金城武，不能再帥了"
            girlImageView.isHidden=true
            boyImageView.isHidden=false
        }
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func moneySwitchAction(_ sender: Any) {
        if moneySwitch.isOn==true{
            stateLabel.text="有錢"
        }
        else{
            
            stateLabel.text="負債"
            
        }
    }
    @IBAction func ageSliderAction(_ sender: UISlider) {
        ageLabel.text="\(Int(sender.value))"
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
