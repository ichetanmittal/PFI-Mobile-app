import SwiftUI

struct LenderView: View {
    @State private var lendAmount = ""
    @State private var interestRate = ""
    @State private var lendingTenure = ""

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                headerView
                balanceView
                lendingFormView
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
            Text("Lender")
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
                    Text("₹ 10,000")
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
    
    private var lendingFormView: some View {
        VStack(alignment: .leading, spacing: 15) {
            formField(title: "Enter amount to lend", placeholder: "Amount", text: $lendAmount)
            formField(title: "Enter rate of interest", placeholder: "Rate of Interest", text: $interestRate)
            formField(title: "Enter lending tenure", placeholder: "Lending Tenure", text: $lendingTenure)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(radius: 2)
        .padding(.horizontal)
    }
    
    private func formField(title: String, placeholder: String, text: Binding<String>) -> some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
            
            TextField(placeholder, text: text)
                .padding(10)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)
        }
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

struct LenderView_Previews: PreviewProvider {
    static var previews: some View {
        LenderView()
    }
}
