# Revcontent iOS SDK

Native SwiftUI integration for Revcontent widgets on iOS

## Requirements

- iOS 16.0+
- Xcode 15.4+ (Xcode 16+ recommended for full Swift Testing support)
- Swift 5.10+

## Installation
The SDK is distributed as a Swift package from a GitHub repository.

### Xcode

1. **File → Add Package Dependencies…**
2. Paste the repository URL: `https://github.com/revcontent/revcontent-ios-sdk`
3. Choose a version rule (e.g. **Up to Next Major**) and pick the desired version
4. Add the `RevcontentSDK` library to your app target

### Package.swift

```swift
dependencies: [
  .package(url: "https://github.com/revcontent/revcontent-ios-sdk", from: "0.1.0")
]
```

Add `RevcontentSDK` to your targets `dependencies`.

## Quick start

Configure the SDK once at app launch:

```swift
import RevcontentSDK

@main
struct MyApp: App {
    init() {
        Revcontent.configure(
            publisherId: "your-publisher-id",
            siteUrl: "https://your-site.example.com"
        )
    }

    var body: some Scene {
        WindowGroup { ContentView() }
    }
}
```

Drop an ad view into your content. Tag the enclosing `ScrollView` with `.revcontentScrollContext()` so impression tracking works correctly:

```swift
ScrollView {
    VStack {
        ArticleBody()

        RevcontentAdView(widgetId: "your-widget-id")
    }
    .revcontentScrollContext()
}
```

> **Important:** `.revcontentScrollContext()` must be applied **inside** the `ScrollView`'s content, not on the `ScrollView` itself.

## Explore more

The explore-more feature presents a widget in a sheet when the user navigates **back** out of an article — a natural "before you go, keep reading" moment. Apply the `.revcontentExploreMore(config:)` modifier to the article view that's pushed onto a `NavigationStack`:

```swift
import RevcontentSDK

NavigationStack {
    ArticleListView()
        .navigationDestination(for: Article.self) { article in
            ArticleDetailView(article: article)
                .revcontentExploreMore(config: ExploreMoreConfig(
                    widgetId: "your-widget-id",
                    title: "Before you go",
                    frequencyCapping: .oncePerSession
                ))
        }
}
```

The modifier swaps the system back button for a custom one. When the user taps it, the SDK checks the configured frequency capping and, if it should show, presents the widget in a sheet; dismissing the sheet (swipe, close button, or programmatically) completes the original back navigation. If `Revcontent.configure(...)` hasn't been called, the modifier is a no-op and the back button behaves normally.

### Configuration

`ExploreMoreConfig` takes:

- `widgetId` — the Revcontent widget to render in the sheet (required).
- `title` — the sheet heading. Defaults to `"Keep on reading"`.
- `frequencyCapping` — how often the sheet may appear. Defaults to `nil` (no capping).

### Frequency capping

| Case | Behavior |
| --- | --- |
| `.everyTime` (or `nil`) | Show on every back navigation. |
| `.oncePerSession` | Show at most once per app session (resets on process restart). |
| `.oncePerArticle` | Show at most once per article view instance. |
| `.custom(TimeInterval)` | Show only if at least the given number of seconds have passed since the last presentation. |
| `.every(_ Duration)` | Convenience wrapper over `.custom` that reads naturally, e.g. `.every(.seconds(12 * 3600))` for at most once every 12 hours. |

```swift
// Throttle to at most once every 30 minutes:
ExploreMoreConfig(
    widgetId: "your-widget-id",
    frequencyCapping: .every(.seconds(30 * 60))
)
```

## Documentation
The same reference ships with the SDK as a DocC catalog for offline use in Xcode: **Product → Build Documentation** with `RevcontentSDK` selected. Articles cover:

- Scroll context placement (the right and wrong way)
- Theme integration (color scheme bridging)
- JavaScript event contract (for widget developers)

## Support

For integration questions or to report issues, contact your Revcontent representative.