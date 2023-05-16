//
//  VideoViewController.swift
//  BMICal
//
//  Created by MacBook Aor on 2023-05-19.
//

import UIKit
import AVKit
import AVFoundation

class VideoViewController: UIViewController {
    
   // let videoUrl = "pexels-pavel-danilyuk-4065388-3840x2160-30fps.mp4"
   // @IBOutlet weak var thumbnailimageView: UIImageView!
    
  override func viewDidLoad() {
        super.viewDidLoad()
        
      //  let url = URL(string: videoUrl)
       // self.getthumbnailFromImage(url: url!){
          //  (thumbImage) in
            //self.thumbnailimageView.image = thumbImage
        }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "gym", ofType: "mp4")!))
        
        let layer = AVPlayerLayer(player: player)
        
        layer.frame = view.bounds
        view.layer.addSublayer(layer)
        
        player.play()
    }

    }
    
//create function for thumbnail
    
    //func getthumbnailFromImage (url:URL, completion: @escaping(( _ image: UIImage?)-> Void))
  //  {
        //DispatchQueue.global().async {
           // let asset = AVAsset(url: url)
         //   let avAssetImageGenerator = AVAssetImageGenerator(asset: asset)
           // avAssetImageGenerator.appliesPreferredTrackTransform = true
            
        //    let thumbnailTime = CMTimeMake(value: 7, timescale: 1)
        //    do{
 //               let cgThumbimage = try avAssetImageGenerator.copyCGImage(at: thumbnailTime, actualTime: nil)
   //             let thumbimage = UIImage(cgImage: cgThumbimage)
     //           DispatchQueue.main.async {
       //             completion(thumbimage)
         //       }
                
        //    }catch{
        //        print(error.localizedDescription)
         //   }
      //  }
   // }
    
//}
