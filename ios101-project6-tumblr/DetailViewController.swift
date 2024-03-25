//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Chelsea Bhuiyan on 3/25/24.
//

import UIKit
import Nuke


class DetailViewController: UIViewController {

    var post: Post!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        if let imageURL = post.photos.first?.originalSize.url {
                Nuke.loadImage(with: imageURL, into: imageView)
            }
            
            // Remove HTML tags from the caption and set it to the text view
            textView.text = post.caption.trimHTMLTags()
        
            
            // Set large title style
            navigationController?.navigationBar.prefersLargeTitles = true
    
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
