//
//  AddItemViewController.swift
//  MyList
//
//  Created by Viraj Kothalawala on 19/5/17.
//  Copyright © 2017 Viraj Kothalawala. All rights reserved.
//

import UIKit

protocol AddItemViewControllerDelegate {
    func controller(controller: AddItemViewController, didSaveWithName name: String, andPrice price: Float)
}

class AddItemViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var priceTextField: UITextField!
    
    var delegate: AddItemViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancel(sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save(sender: UIBarButtonItem) {
        
        if let name = nameTextField.text, let priceAsString = priceTextField.text, let price = Float(priceAsString) {
            //Notify delegate
            delegate?.controller(controller: self, didSaveWithName: name, andPrice: price)
            
            //dismiss
            dismiss(animated: true, completion: nil)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "AddItemViewController" {
            if let navigationController = segue.destination as? UINavigationController, let addItemViewController = navigationController.viewControllers.first as? AddItemViewController {
                addItemViewController.delegate = self
            }
        }
    }
    */

}
