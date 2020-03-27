//
//  MainViewController.swift
//  COVID-19
//
//  Created by Cristian Sori on 3/26/20.
//  Copyright © 2020 Cristian Sori. All rights reserved.
//

import UIKit

class MainViewController: UIViewController{
       @IBOutlet weak var picker: UIPickerView!
    @IBAction func continuar(_ sender: Any) {
        //var selectedValue = dataSource[picker.selectedRow(inComponent: 0)]
        
        
    }
    private let dataSource=["Colombia","Cuba"]
 
    override func viewDidLoad() {
        
    
        super.viewDidLoad(

        
        )
      
        picker.dataSource=self
        picker.delegate=self
        // Do any additional setup after loading the view.
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
extension MainViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in picker: UIPickerView) -> Int {
    return 1
        
        }
    func pickerView(_ picker: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
            return dataSource.count
        }
    func pickerView(_ picker: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let valueSelected = dataSource[row] as String
    }
    func pickerView(_ picker: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
      return dataSource[row]
    }
    
    
    }
    

