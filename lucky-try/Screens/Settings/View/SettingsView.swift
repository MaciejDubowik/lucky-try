//
//  CreateGameView.swift
//  lucky-try
//
//  Created by Maciej Dubowik on 31/05/2023.
//

import SwiftUI

struct SettingsView: View {

    private var step: Int = 1
    private var setupProgress = 33.3
    @State private var selectedItem = 2

    var body: some View {
        VStack {
            Text("Step \(step)")
                .font(.custom(S.Font.Lato.bold, size: 18))
                .padding(.top, 40)

            ProgressView(value: setupProgress, total: 100)
                .progressViewStyle(LinearProgressViewStyle(tint: Color(hex: S.Color.darkBlue)))
                .scaleEffect(x: 1, y: 2)
                .padding(.horizontal, 40)
                .padding(.top, 20)

            Text("How many players will play?")
                .font(.custom(S.Font.Lato.extraBold, size: 24))
                .padding(.top, 30)

            Picker("Number of players:", selection: $selectedItem) {
                ForEach(2...4, id: \.self) { value in
                    Text("\(value)")
                }
            }
            .pickerStyle(WheelPickerStyle())
            .labelsHidden()
            .padding()

            Spacer()

            HStack(spacing: 0) {
                Button(action: {
                    print("go back")
                }, label: {
                    Text("Back")
                        .font(.custom(S.Font.Lato.bold, size: 18))
                        .underline()
                        .frame(width: UIScreen.main.bounds.width/2)
                        .frame(height: 100)
                        .foregroundColor(Color(hex: S.Color.orange))

                })

                Button(action: {
                    print("go next")
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
        }.ignoresSafeArea(.container, edges: .bottom)
    }
}

struct CreateGameView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
