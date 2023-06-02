//
//  StartView.swift
//  lucky-try
//
//  Created by Maciej Dubowik on 29/05/2023.
//

import SwiftUI

struct StartView: View {
    @State var originalIsActive = false
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Circle()
                        .fill(Color(hex: S.Color.darkBlue))
                        .frame(width: 500)
                        .position(x: 60, y: 40)
                    Text("Lucky\nTry.")
                        .foregroundColor(Color.white)
                        .font(.custom(S.Font.Inter.bold, size: 45))
                        .position(x: 120, y: 90)
                }

                Spacer()

                NavigationLink(isActive: $originalIsActive , destination: {
                    SettingsView(originalIsActive: $originalIsActive)
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

    struct StartView_Previews: PreviewProvider {
        static var previews: some View {
            StartView()
        }
    }
}
