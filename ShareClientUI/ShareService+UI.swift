//
//  ShareService+UI.swift
//  Loop
//
//  Copyright © 2018 LoopKit Authors. All rights reserved.
//

import LoopKitUI
import ShareClient


extension ShareService: @retroactive ServiceAuthenticationUI {
    public var credentialFormFieldHelperMessage: String? {
        return nil
    }

    public var credentialFormFields: [ServiceCredential] {
        return [
            ServiceCredential(
                title: LocalizedString("Username", comment: "The title of the Dexcom share username credential"),
                isSecret: false,
                keyboardType: .asciiCapable
            ),
            ServiceCredential(
                title: LocalizedString("Password", comment: "The title of the Dexcom share password credential"),
                isSecret: true,
                keyboardType: .asciiCapable
            ),
            ServiceCredential(
                title: LocalizedString("Server", comment: "The title of the Dexcom share server URL credential"),
                isSecret: false,
                options: [
                    (title: LocalizedString("US", comment: "U.S. share server option title"),
                     value: KnownShareServers.US.rawValue),
                    (title: LocalizedString("APAC", comment: "Japan, Phillipines, Singapore share server option title"), value: KnownShareServers.APAC.rawValue),
                    (title: LocalizedString("Worldwide", comment: "Outside US and APAC share server option title"),
                     value: KnownShareServers.Worldwide.rawValue)

                ]
            )
        ]
    }
}
