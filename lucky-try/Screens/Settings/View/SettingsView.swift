//
//  CreateGameView.swift
//  lucky-try
//
//  Created by Maciej Dubowik on 31/05/2023.
//

import SwiftUI

struct SettingsView: View {

    @StateObject var viewModel = SettingsViewModel()
    @State private var selectedItem = 2
    @State private var name: String = ""
    @State private var bet: String = ""
    @State private var isNavigationActive = false // <- nowa zmienna
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        VStack {
// MARK: - Top

            Text("Step \(viewModel.step)")
                .font(.custom(S.Font.Lato.bold, size: 18))
                .padding(.top, 40)

            ProgressView(value: viewModel.progressBar, total: 100)
                .progressViewStyle(LinearProgressViewStyle(tint: Color(hex: S.Color.darkBlue)))
                .scaleEffect(x: 1, y: 2)
                .padding(.horizontal, 40)
                .padding(.top, 20)

            Text(viewModel.title)
                .font(.custom(S.Font.Lato.extraBold, size: 24))
                .padding(.top, 30)
                .textFieldStyle(.roundedBorder)


// MARK: - Content

            switch viewModel.step {
            case 1:
                Picker("Number of players:", selection: $selectedItem) {
                    ForEach(2...3, id: \.self) { value in
                        Text("\(value)")
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .labelsHidden()
                .padding()
            case 2:
                TextField("", text: $name)
                    .padding(.all, 10)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "E5E5E5"), lineWidth: 2))
                    .padding(.horizontal, 40)
                    .padding(.top, 20)
            case 3:
                TextField("Bet", text: $bet)
                    .padding(.all, 10)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "E5E5E5"), lineWidth: 2))
                    .padding(.horizontal, 40)
                    .padding(.top, 20)
            default:
                TextField("Name", text: $name)
            }

            Spacer()


// MARK: - Navbar

            NavigationLink(destination: FlipCoinView(), isActive: $isNavigationActive) {
                EmptyView()
            }

            HStack(spacing: 0) {
                Button(action: {
                    if viewModel.step == 1 {
                        self.presentationMode.wrappedValue.dismiss()
                    } else {
                        viewModel.previousStep()
                    }
                }, label: {

                    Text("Back")
                        .font(.custom(S.Font.Lato.bold, size: 18))
                        .underline()
                        .frame(width: UIScreen.main.bounds.width/2)
                        .frame(height: 100)
                        .foregroundColor(Color(hex: S.Color.orange))

                })

                Button(action: {
                    switch viewModel.step {
                    case 1:
                        viewModel.settings.numberOfPlayers = selectedItem
                    case 2:
                        viewModel.settings.playersNames.append(name)
                        name = ""
                    case 3:
                        viewModel.settings.bet = bet
                        isNavigationActive = true
                    default:
                        print("error")
                    }
                    viewModel.nextStep()

                }, label: {
                    Text("Next")
                        .font(.custom(S.Font.Lato.bold, size: 18))
                        .underline()
                        .frame(width: UIScreen.main.bounds.width/2)
                        .frame(height: 100)
                        .foregroundColor(.white)
                        .background(Color(hex: S.Color.orange))
                        .roundedCorner(30, corners: .topLeft)
                })
            }
        }
        .ignoresSafeArea(.container, edges: .bottom)
        .navigationBarBackButtonHidden(true)

    }
}

struct CreateGameView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
