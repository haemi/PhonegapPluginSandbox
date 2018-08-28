@objc(ModusEchoSwiftNativeClassName) class ModusEchoSwiftClass : CDVPlugin {
  @objc(helloWorldInSwift:)
  func dasIstJetztMeineMethode(command: CDVInvokedUrlCommand) {
    var pluginResult = CDVPluginResult(
      status: CDVCommandStatus_ERROR
    )

    let msg1 = command.arguments[0] as? String ?? ""
	let msg2 = command.arguments[1] as? String ?? ""
	
	let msg = "\(msg1)-\(msg2)"

    if msg.count > 0 {
      let toastController: UIAlertController =
        UIAlertController(
          title: "",
          message: msg,
          preferredStyle: .alert
        )
      
      self.viewController?.present(
        toastController,
        animated: true,
        completion: nil
      )

      // DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
      //   toastController.dismiss(
      //     animated: true,
      //     completion: nil
      //   )
      // }
        
      pluginResult = CDVPluginResult(
        status: CDVCommandStatus_OK,
        messageAs: msg
      )
    }

    self.commandDelegate?.send(
      pluginResult,
      callbackId: command.callbackId
    )
  }
}

