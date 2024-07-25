import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var showRoleSelection = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 20) {
            Image("EclipseLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 50)
            
            Text("Welcome Back")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Login to your account")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: loginUser) {
                Text("Login")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
            }
            
            Button("Forgot Password?") {
                // Handle forgot password
            }
            .font(.footnote)
            .foregroundColor(.orange)
            
            Spacer()
            
            Button("Don't have an account? Sign Up") {
                presentationMode.wrappedValue.dismiss()
            }
            .font(.footnote)
            
            NavigationLink(destination: RoleSelectionView(), isActive: $showRoleSelection) {
                EmptyView()
            }
        }
        .padding()
        .navigationBarTitle("Login", displayMode: .inline)
    }
    
    func loginUser() {
        // Implement login logic here
        print("Logging in user with email: \(email)")
        // You would typically send this data to your backend
        
        // If login is successful, navigate to role selection
        showRoleSelection = true
    }
}

#Preview {
    LoginView()
}
