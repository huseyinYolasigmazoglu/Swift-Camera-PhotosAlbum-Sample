//
//  ViewController.swift
//  CameraSimpleSamples
//
//  Created by Huseyin Yolasigmazoglu on 29.10.2020.
//  Copyright © 2020 Huseyin Yolasigmazoglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate
{
    //1 EmbedIn NavigationControl
    //2 Nav Bar Item , camera image i
    //3 UIPickerViewDelegate ve UINavigationControllerDelegate
    //4 var picker = UIImagePickerController()
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    var picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        picker.delegate = self
        //picker.sourceType = .camera
        picker.sourceType = .savedPhotosAlbum
        picker.allowsEditing = false
          
    }
    
    
    @IBAction func changeTitle(_ sender: UIBarButtonItem) {
        
        self.navigationItem.title = " Change IT"
    }

    
    @IBAction func camaeraTapped(_ sender: UIBarButtonItem) {
        
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        
        
        if let userImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            
            imageView.image = userImage
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
}

