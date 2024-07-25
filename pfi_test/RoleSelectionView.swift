import SwiftUI

struct RoleSelectionView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("What's your status Today?")
                    .font(.title)
                    .fontWeight(.bold)
                
                NavigationLink(destination: BorrowerView()) {
                    Text("I want to Borrow")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: LenderView()) {
                    Text("I want to Lend")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
            }
            .padding()
            .navigationBarTitle("Select Role", displayMode: .inline)
        }
    }
}

struct RoleSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        RoleSelectionView()
    }
}
