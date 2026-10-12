import QuranKit

struct TranslationPageSection: Identifiable, Equatable {
    let page: Page
    let items: [TranslationItem]

    var id: Page { page }

    func scrollTarget(for item: TranslationItemId?) -> TranslationItemId? {
        item
    }
}

extension ContentTranslationViewModel {
    func pageSection(quranFont: QuranFont) -> TranslationPageSection? {
        guard let page = verses.first?.page else {
            return nil
        }
        return TranslationPageSection(page: page, items: items(quranFont: quranFont))
    }
}
