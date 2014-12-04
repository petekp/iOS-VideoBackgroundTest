import UIKit
import MediaPlayer

class VideoViewController: UIViewController {
    
    var moviePlayer:MPMoviePlayerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // dark theme
        view.backgroundColor = UIColor.blackColor()
        
        // add video from instagram
        var url:NSURL? = NSURL(string: "http://videos-a-5.ak.instagram.com/hphotos-ak-xpa1/10461296_834306619932165_1563854104_n.mp4")
        moviePlayer = MPMoviePlayerController(contentURL: url)
        moviePlayer.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        self.view.addSubview(moviePlayer.view)
        moviePlayer.fullscreen = true
        moviePlayer.controlStyle = MPMovieControlStyle.None
        moviePlayer.scalingMode = MPMovieScalingMode.AspectFill
        moviePlayer.repeatMode = MPMovieRepeatMode.One
        moviePlayer.shouldAutoplay = true
        moviePlayer.view.alpha = 0.8
        
        
        // add label
        var screenWidth = self.view.frame.width
        var screenHeight = self.view.frame.height
        var label = UILabel(frame: CGRectMake(0, 0, screenWidth, screenHeight))
        label.center = CGPointMake(screenWidth/2, screenHeight/2)
        label.textColor = UIColor.whiteColor()
        
        label.text = "⚡️\n awwwww\n yeah\n ⚡️"
        label.font = UIFont(name: label.font.fontName, size: 70)
        label.textAlignment = NSTextAlignment.Center
        label.numberOfLines = 4
        self.view.addSubview(label)
    }
    
}