import UIKit
import MediaPlayer

class VideoViewController: UIViewController {
    
    var moviePlayer:MPMoviePlayerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blackColor()
        
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
        
        var label = UILabel(frame: CGRectMake(0, 0, self.view.frame.width, self.view.frame.height))
        label.center = CGPointMake(160, 284)
        label.textColor = UIColor.whiteColor()
        label.textAlignment = NSTextAlignment.Center
        label.text = "awwwww yeah"
        label.font = UIFont(name: label.font.fontName, size: 70)
        label.numberOfLines = 2
        self.view.addSubview(label)
    }
    
}