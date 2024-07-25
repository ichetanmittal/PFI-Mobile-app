
import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var showLogin = true
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image("pfi_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                
                Text("Welcome to PFI")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Most Trusted P2P Partner")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Confirm Password", text: $confirmPassword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: registerUser) {
                    Text("Create Account")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(10)
                }
                
                Text("OR")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                
                Button(action: {
                    // Handle Google login
                }) {
                    HStack {
                        Image(systemName: "g.circle.fill")
                        Text("Continue with Google")
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                    )
                }
                
                Button(action: {
                    // Handle Apple login
                }) {
                    HStack {
                        Image(systemName: "apple.logo")
                        Text("Continue with Apple")
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                    )
                }
                
                NavigationLink(destination: LoginView(), isActive: $showLogin) {
                    HStack {
                        Text("Already have an account?")
                        Button("Login") {
                            showLogin = true
                        }
                    }
                    .font(.footnote)
                }
                
                Button("Terms & Conditions") {
                    // Show terms and conditions
                }
                .font(.footnote)
                .foregroundColor(.orange)
            }
            .padding()
            .navigationBarHidden(true)
        }
    }
    
    func registerUser() {
        // Implement registration logic here
        print("Registering user with email: \(email)")
        // You would typically send this data to your backend
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
