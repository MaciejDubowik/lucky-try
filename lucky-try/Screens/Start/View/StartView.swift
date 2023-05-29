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
            Text("Hello World!")
                .font(.custom(S.Font.Lato.regular, size: 17))
            Text("Hello World")
                .font(.custom(S.Font.Lato.bold, size: 17))
            Text("Hello World")
                .font(.custom(S.Font.Lato.extraBold, size: 17))
            Text("Hello World!")
                .font(.custom(S.Font.Inter.bold, size: 17))

        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
