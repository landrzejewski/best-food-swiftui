import SwiftUI

struct LoginView: View {
    
    @ObservedObject var viewModel: LoginViewModel
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center){
                Spacer()
                
                Text("Welcome back")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                
                Section {
                    Form {
                        TextField("Email address", text: $viewModel.email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                            .disableAutocorrection(true)
                        SecureField("Password", text: $viewModel.password)
                    }
                    
                    Button {
                        viewModel.confirm()
                    }
                    label: {
                        if (viewModel.isLoading) {
                            ActivityIndicatorView()
                        } else {
                            Text("Login")
                                .fontWeight(.bold)
                                .frame(width: 200, height: 40)
                                .foregroundColor(.white)
                                .background(Color.purple)
                        }
                    }
                    .cornerRadius(8)
                    .padding()
                }
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: LoginViewModel(settingsModel: SettingsModel()))
    }
}
