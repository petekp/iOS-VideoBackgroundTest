import UIKit
import MediaPlayer

class VideoViewController: UIViewController {
    
    var moviePlayer:MPMoviePlayerController!
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var screenWidth = self.view.frame.width
        var screenHeight = view.frame.height
        
        // dark theme
        view.backgroundColor = UIColor.blackColor()
        
        // add video from instagram
        var url:NSURL? = NSURL(string: "http://videos-a-5.ak.instagram.com/hphotos-ak-xpa1/10461296_834306619932165_1563854104_n.mp4")
        moviePlayer = MPMoviePlayerController(contentURL: url)
        moviePlayer.view.frame = CGRectMake(0, 0, screenWidth, screenHeight)
        self.view.addSubview(moviePlayer.view)
        moviePlayer.fullscreen = true
        moviePlayer.controlStyle = MPMovieControlStyle.None
        moviePlayer.scalingMode = MPMovieScalingMode.AspectFill
        moviePlayer.repeatMode = MPMovieRepeatMode.One
        moviePlayer.shouldAutoplay = true
        moviePlayer.view.alpha = 0.8
        
        // add label
        var label = UILabel(frame: CGRectMake(0, 0, screenWidth, screenHeight))
        label.center = CGPointMake(screenWidth/2, screenHeight/2)
        label.textColor = UIColor.whiteColor()
        label.text = "🌟\n👍"
        label.font = UIFont(name: label.font.fontName, size: 60)
        label.textAlignment = NSTextAlignment.Center
        label.numberOfLines = 4
        label.shadowColor = UIColor.blackColor()
        label.shadowOffset = CGSizeMake(0.0, 0.2)
        label.layer.shadowOpacity = 0.55
        label.layer.shadowRadius = 3
        self.view.addSubview(label)
    }
    
}