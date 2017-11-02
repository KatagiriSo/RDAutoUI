# RDAutoUI
This is an Auto UI ViewController

```swift
let vc = RDViewController(nibName: nil, bundle: nil)
vc.view.backgroundColor = UIColor.blue

_ = vc.regist(event: RDViewDidLoad()) { _ in
    print("next view didload")
}

let button = UIButton(frame: CGRect.zero)

button.setTitle("test", for: .normal)
button.setTitleColor(UIColor.white, for: .normal)
button.translatesAutoresizingMaskIntoConstraints = false

vc.view.addSubview(button)

NSLayoutConstraint.activate( RDAutoLayoutHelper(view: button).size((100,100)).center().hundle())

let ob = button.addTarget(event: .touchUpInside,
                 observer: RDTargetObserver { _ in
                    print("button pushed")
    })
vc.targetObservers.append(ob)

self.show(vc, sender: self)
}
```
