import UIKit
import Lottie

class LaunchViewController: UIViewController {
    
    var animationView: LottieAnimationView!

    override func viewDidLoad() {
        super.viewDidLoad()

        addAnimationView()
    }
    //アニメーションの準備
    func addAnimationView() {

        //アニメーションファイルの指定
        animationView = LottieAnimationView(name: "magicCircle") //ここに先ほどダウンロードしたファイル名を記述（拡張子は必要なし）

        //アニメーションの位置指定（画面中央）
        animationView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)

        //アニメーションのアスペクト比を指定＆ループで開始
        animationView.contentMode = .scaleAspectFit
        animationView.play()

        //ViewControllerに配置
        view.addSubview(animationView)
    }

}
