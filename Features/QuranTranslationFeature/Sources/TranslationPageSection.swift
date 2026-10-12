//
//  TranslationPageSection.swift
//

import QuranKit

struct TranslationPageSection: Equatable, Identifiable {
    let page: Page
    let items: [TranslationItem]

    var id: Page { page }

    func scrollTarget(for item: TranslationItemId?) -> TranslationItemId? {
        guard let item else {
            return nil
        }
        return item
    }
}
