//
//  StartView.swift
//  lucky-try
//
//  Created by Maciej Dubowik on 29/05/2023.
//

import SwiftUI

struct StartView: View {
    var body: some View {
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

            Button(action: {
                print("Go to next view.")
            }, label: {
                Text("Click here to start")
                    .font(.custom(S.Font.Lato.bold, size: 18))
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .foregroundColor(.white)
                    .background(Color.orange)
            }).padding(.bottom)
        }
        .ignoresSafeArea(.container, edges: .bottom)
    }

    struct StartView_Previews: PreviewProvider {
        static var previews: some View {
            StartView()
        }
    }
}
