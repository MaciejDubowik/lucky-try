//
//  FlipCoinView.swift
//  lucky-try
//
//  Created by Maciej Dubowik on 01/06/2023.
//

import SwiftUI

struct FlipCoinView: View {
    @EnvironmentObject var settingsViewModel: SettingsViewModel
    @Binding var originalIsActive: Bool

    var body: some View {
        NavigationView {
            VStack {

                VStack {
                    Text("\(settingsViewModel.settings.numberOfPlayers) Players")
                        .font(.custom(S.Font.Lato.bold, size: 24))
                        .frame(maxWidth: .infinity, alignment: .bottomLeading)
                    Text("Bet: \(settingsViewModel.settings.bet)")
                        .font(.custom(S.Font.Lato.regular, size: 24))
                        .frame(maxWidth: .infinity, alignment: .bottomLeading)
                }
                .padding(.top, 40)
                .padding(.horizontal, 30)

                ZStack {
                    Circle()
                        .frame(width: 200)
                        .foregroundColor(Color(hex: S.Color.darkBlue))

                    Text("1")
                        .font(.custom(S.Font.Lato.bold, size: 80))
                        .foregroundColor(.white)
                }.padding(.top, 50)

                Spacer()

                VStack {
                    Text("1. \(S.name1)")
                        .font(.custom(S.Font.Lato.regular, size: 24))
                        .frame(maxWidth: .infinity, alignment: .bottomLeading)
                    Text("2. \(S.name2)")
                        .font(.custom(S.Font.Lato.regular, size: 24))
                        .frame(maxWidth: .infinity, alignment: .bottomLeading)
                        .padding(.top, 1)
                }
                .padding(.top, 40)
                .padding(.horizontal, 30)

                Spacer()

                Button(action: {
                    originalIsActive = false
                }, label: {
                    Text("Click here to start")
                        .font(.custom(S.Font.Lato.bold, size: 18))
                        .frame(maxWidth: .infinity)
                        .frame(height: 100)
                        .foregroundColor(.white)
                        .background(Color(hex: S.Color.orange))
                })
                .padding(.bottom)
            }
            .ignoresSafeArea(.container, edges: .bottom)
        }
    }
}
