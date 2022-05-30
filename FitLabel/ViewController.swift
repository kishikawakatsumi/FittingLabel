import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var margin: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()

        label.backgroundColor = .red
        label.text = "Title"
        label.font = .systemFont(ofSize: 200)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0
    }

    @IBAction
    func valueChanged(_ sender: UISlider) {
        let value = CGFloat(slider.value)
        margin.constant = view.bounds.width - view.bounds.width * value
    }
}
