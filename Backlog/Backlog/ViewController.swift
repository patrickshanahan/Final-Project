//
//  ViewController.swift
//  Backlog
//
//  Created by cis290 on 11/7/16.
//  Copyright © 2016 Rock Valley College. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var enteredTitle: UITextField!
    @IBOutlet weak var btnSearch: UIBarButtonItem!
    
    
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    var titledb:NSManagedObject!
    
    
    //Add logic
    if(titledb != nil){
    
    titledb.setValue(enteredTitle.text, forKey: "enteredTitle")
    
    
    }
    else{
        let entityDescription =
        NSEntityDescription.entityForName("Title",inManagedObjectContext: managedObjectContext)
    
        let contact = Title(entity: entityDescription!,
        insertIntoManagedObjectContext: managedObjectContext)
    
        Title.title = enteredTitle.text!
    }
    var error: NSError?
    do{
        try managedObjectContext.save()
    } catch let error1 as NSError {
        error = error1
    }
    
    if let err = error {
        status.text = err.localizedFailureReason
    } else {
    self.dismissViewControllerAnimated(false, completion: nil)
    
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches , withEvent:event)
        if (touches.first as UITouch!) != nil {
            DismissKeyboard()
        }
    }
    //**End Copy**
    
    //7 Add to hide keyboard
    
    //**Begin Copy**
    func DismissKeyboard(){
        //forces resign first responder and hides keyboard
        enteredTitle.endEditing(true)

        
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool     {
        textField.resignFirstResponder()
        return true;
    }




}

