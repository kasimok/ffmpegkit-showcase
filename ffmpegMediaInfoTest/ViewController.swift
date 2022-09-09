import UIKit
import ffmpegkit

let kSampleFilePath = Bundle.main.path(forResource: "sample_640x360", ofType: "mkv")!

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        queryMediaInfomation()
        // Do any additional setup after loading the view.
    }

    func queryMediaInfomation(){
        let mediaInfoSession = FFprobeKit.getMediaInformation(kSampleFilePath)
        let mediaInfo = mediaInfoSession?.getMediaInformation()
        let props = mediaInfo?.getAllProperties()
        let duration = mediaInfo?.getDuration()
        let bitRate = mediaInfo?.getBitrate()
        debugPrint(props,duration,bitRate)
    }
}

