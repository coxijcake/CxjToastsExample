//
//  TemplatedToastFactory+MinimalizedGlobalStatus.swift
//  Example
//
//  Created by Nikita Begletskiy on 24/12/2024.
//

import UIKit

extension TemplatedToastFactory {
    static func minimalizedGlobalStatus() -> ToastTemplate {
        return .minimalizedGlobalStatus(
            data: .init(
                typeId: "minimalized_global_status_test",
                icon: .init(
					icon: .wiFiConnectedIcon.withRenderingMode(.alwaysTemplate),
					contentMode: .scaleToFill,
					tintColor: .white,
                    fixedSize: .init(width: 20, height: 20)
                ),
                title: .plain(
                    string: "Internet Connection Restored",
                    attributes: .init(
                        textColor: .white,
                        font: .systemFont(ofSize: 13, weight: .semibold)
                    )
                ),
				background: .colorized(color: .init(red: 0.349, green: 0.8, blue: 0.298, alpha: 1.0)),
				hapticFeeback: nil,
                dismissMethods: [
                    .automatic(time: 2.5),
                    .swipe(direction: .top),
                    .tap(actionCompletion: nil)
                ]
            )
        )
    }
}
