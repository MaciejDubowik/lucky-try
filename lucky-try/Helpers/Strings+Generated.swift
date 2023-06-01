// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum S {
  /// settingsViewModel.settings.playersNames[0]
  internal static let name1 = S.tr("Localizable", "name1", fallback: "settingsViewModel.settings.playersNames[0]")
  /// settingsViewModel.settings.playersNames[1]
  internal static let name2 = S.tr("Localizable", "name2", fallback: "settingsViewModel.settings.playersNames[1]")
  /// settingsViewModel.settings.playersNames[2]
  internal static let name3 = S.tr("Localizable", "name3", fallback: "settingsViewModel.settings.playersNames[2]")
  internal enum Color {
    /// Localizable.strings
    ///   lucky-try
    /// 
    ///   Created by Maciej Dubowik on 29/05/2023.
    internal static let darkBlue = S.tr("Localizable", "Color.darkBlue", fallback: "2345BF")
    /// FF642F
    internal static let orange = S.tr("Localizable", "Color.orange", fallback: "FF642F")
  }
  internal enum Font {
    internal enum Inter {
      /// Inter-Bold
      internal static let bold = S.tr("Localizable", "Font.Inter.bold", fallback: "Inter-Bold")
    }
    internal enum Lato {
      /// Lato-Bold
      internal static let bold = S.tr("Localizable", "Font.Lato.bold", fallback: "Lato-Bold")
      /// Lato-ExtraBold
      internal static let extraBold = S.tr("Localizable", "Font.Lato.extraBold", fallback: "Lato-ExtraBold")
      /// Lato-Regular
      internal static let regular = S.tr("Localizable", "Font.Lato.regular", fallback: "Lato-Regular")
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension S {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
