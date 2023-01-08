import Foundation
import RxSwift
import RxCocoa
class LoginViewModel : BaseViewModel {
    
    let model : LoginModel = LoginModel()
    
    // Initialise ViewModel's
    let emailIdViewModel = EmailIdViewModel()
    let passwordViewModel = PasswordViewModel()
    
    func validateCredentials() -> Bool{
        return emailIdViewModel.validateCredentials() && passwordViewModel.validateCredentials();
    }
    
    func loginUser(){
        
        // Initialise model with filed values
        model.email = emailIdViewModel.data.value
        model.password = passwordViewModel.data.value
        
        self.isLoading.accept(true)
        
        let ws = UserRepository(token:"")
        let request = CSLoginRequest()
        request.email = model.email
        request.password = model.password
        ws.login(parameters: request.toDictionary()) { (response, error) in
            
            if response != nil {
                self.appDelegate.saveLoginData(data: response!)
                self.isSuccess.accept(true)
            } else if error != nil {
                self.isSuccess.accept(false)
                self.errorMsg.accept( error?.localizedDescription ?? "")
            }
            
            self.isLoading.accept(false)
        }
        
//        let result = URLRequest(email: model.email , password : model.password)
//        ApiService.execute(result)
//            .subscribe(onNext : {response in
//                self.isLoading.value = false
//                self.isSuccess.value = true
//            }, onError : { error in
//                self.isLoading.value = false
//                self.errorMsg.value = error.message
//            }).disposed(by : disposebag)
    }
}
