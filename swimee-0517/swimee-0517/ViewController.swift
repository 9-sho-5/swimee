import UIKit
import Lottie

class ViewController: UIViewController {
    
    @IBOutlet var animationView: LottieAnimationView!
    @IBOutlet var redFireAnimationView: LottieAnimationView!
    @IBOutlet var blueFireAnimationView: LottieAnimationView!
    
    var magicLevel: Int = 0
    @IBOutlet var magicLabel: UILabel!
    @IBOutlet var chuuniLabel: UILabel!
    @IBOutlet var magicButtun: UIButton!
    @IBOutlet var chuuniImg: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        magicLabel.text = "暗黒レベルを高めて異世界へ！"
        chuuniLabel.text = "諸君、暗黒界へようこそ"
    }

    @IBAction func doMagic() {
        magicLevel += 1
        magicLabel.text = "暗黒レベル\(magicLevel)"
        if(magicLevel >= 40){
            chuuniLabel.text = "よせ！その手を離すんだ！"
            chuuniImg.image = UIImage(named: "chuuni3")
            //アニメーションファイルの指定
            redFireAnimationView = LottieAnimationView(name: "fire2") //ここに先ほどダウンロードしたファイル名を記述（拡張子は必要なし）

            //アニメーションの位置指定（画面中央）
            redFireAnimationView.frame = CGRect(x: view.frame.size.width * 3/5, y: 0, width: view.frame.size.width / 2, height: view.frame.size.height / 3)

            //アニメーションのアスペクト比を指定＆ループで開始
            redFireAnimationView.contentMode = .scaleAspectFit
            redFireAnimationView.loopMode = .loop
            redFireAnimationView.play()

            //ViewControllerに配置
            view.addSubview(redFireAnimationView)
        } else if(magicLevel >= 30){
            chuuniLabel.text = "ゔぅ、、やるじゃないか、、！"
            chuuniImg.image = UIImage(named: "chuuni2")
            //アニメーションファイルの指定
            redFireAnimationView = LottieAnimationView(name: "fire1") //ここに先ほどダウンロードしたファイル名を記述（拡張子は必要なし）

            //アニメーションの位置指定（画面中央）
            redFireAnimationView.frame = CGRect(x: 0, y: 200, width: view.frame.size.width * 3 / 5, height: view.frame.size.height / 3)

            //アニメーションのアスペクト比を指定＆ループで開始
            redFireAnimationView.contentMode = .scaleAspectFit
            redFireAnimationView.loopMode = .loop
            redFireAnimationView.play()

            //ViewControllerに配置
            view.addSubview(redFireAnimationView)
        } else if(magicLevel >= 20){
            chuuniLabel.text = "ふははは、まだまだなぁ！！！"
            chuuniImg.image = UIImage(named: "chuuni1")
        }
        if(magicLevel >= 50){
            addAnimationView()
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.performSegue(withIdentifier: "toDark", sender: nil)
            }
        }
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

