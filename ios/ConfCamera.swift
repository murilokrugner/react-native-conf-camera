@objc(ConfCamera)
class ConfCamera: NSObject {

    @objc(openCamera:withRejecter:)
    func openCamera(resolve:RCTPromiseResolveBlock.reject:RCTPromiseResolveBlock) -> Void {
      let imagePicker = UIImagePickerController();
      imagePicker.sourceType = .photoLibrary;

      DispatchQueue.main.async {
        RCTPresentedViewController()?.present(imagePicker, animated: true)
      }

      resolve("Camera opened success");
    }

}
