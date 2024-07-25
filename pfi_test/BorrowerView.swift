import SwiftUI

struct BorrowerView: View {
    @State private var borrowAmount = ""

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                headerView
                balanceView
                borrowingFormView
                digitalRupeeWalletView
                Spacer()
                tabBarView
            }
            .navigationBarHidden(true)
            .background(Color.gray.opacity(0.1).edgesIgnoringSafeArea(.all))
        }
    }
    
    private var headerView: some View {
        HStack {
            Text("PFI")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            HStack(spacing: 15) {
                headerButton(systemName: "plus")
                headerButton(systemName: "qrcode")
                headerButton(systemName: "person")
            }
        }
        .padding()
    }
    
    private func headerButton(systemName: String) -> some View {
        Button(action: {
            // Handle action
        }) {
            Image(systemName: systemName)
                .foregroundColor(.black)
                .padding(10)
                .background(Color.white)
                .cornerRadius(8)
                .shadow(radius: 2)
        }
    }
    
    private var balanceView: some View {
        VStack {
            Text("Borrower")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            Button(action: {
                // Handle wallet balance action
            }) {
                VStack {
                    Text("BALANCE")
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("₹ 5,000")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.orange)
                .cornerRadius(15)
            }
            .padding(.horizontal)
        }
    }
    
    private var borrowingFormView: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Enter amount to borrow")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            TextField("Amount", text: $borrowAmount)
                .keyboardType(.decimalPad)
                .padding(10)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 2)
        .padding(.horizontal)
    }
    
    private var digitalRupeeWalletView: some View {
        VStack(spacing: 15) {
            Text("Digital Rupee Wallet")
                .font(.title2)
                .fontWeight(.bold)
            
            HStack(spacing: 20) {
                walletAction(icon: "arrow.up.right", title: "Send")
                walletAction(icon: "arrow.down.left", title: "Collect")
                walletAction(icon: "banknote", title: "Load")
                walletAction(icon: "arrow.down.to.line", title: "Redeem")
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 2)
        .padding(.horizontal)
    }
    
    private func walletAction(icon: String, title: String) -> some View {
        VStack {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(.orange)
            Text(title)
                .font(.caption)
                .foregroundColor(.black)
        }
        .frame(maxWidth: .infinity)
    }
    
    private var tabBarView: some View {
        HStack {
            tabBarItem(icon: "creditcard", title: "Cards")
            tabBarItem(icon: "magnifyingglass", title: "Search")
            tabBarItem(icon: "bell", title: "Alerts")
            tabBarItem(icon: "gear", title: "Settings")
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 2)
        .padding(.horizontal)
    }
    
    private func tabBarItem(icon: String, title: String) -> some View {
        VStack {
            Image(systemName: icon)
                .font(.title3)
            Text(title)
                .font(.caption2)
        }
        .foregroundColor(.gray)
        .frame(maxWidth: .infinity)
    }
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        BorrowerView()
    }
}
