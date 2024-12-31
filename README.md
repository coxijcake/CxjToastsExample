
# CxjToasts Example

## Overview
The **CxjToasts Example** project demonstrates the features and usage of the **CxjToasts** library. This includes predefined templates and fully customizable toasts.

---

## Getting Started

### Installation

To run the Example project, follow these steps:

1. **Download the project**:  
   - Option 1: Clone the repository using Git:
     ```bash
     git clone https://github.com/coxijcake/CxjToastsExample.git
     ```
   - Option 2: Download the project as a ZIP archive from [GitHub](https://github.com/coxijcake/CxjToastsExample) and extract it.

2. Open the `.xcodeproj` file in Xcode.

3. Ensure all dependencies are installed:
   - **Swift Package Manager**: All dependencies are automatically resolved by SPM.

4. Build and run the project on a simulator or a device.

---

## Features

### Predefined Toasts
The project demonstrates the use of **templated toasts**, which provide ready-to-use designs for common scenarios. These toasts are created using `TemplatedToastFactory`.

### Customizable Toasts
Explore the creation of **custom toasts**, where every aspect of the toast (e.g., layout, animations, content) can be configured. These are created using `CustomToastFactory`.

---

## How to Use the Example Project

### Predefined Templates
The project showcases predefined templates like `NativeToast` or `UndoToast`. To see them in action:
1. Navigate to the corresponding example in the app.
2. Tap the relevant button to trigger a toast.

### Custom Toasts
Explore how to create and display fully customized toasts:
1. Go to the "Custom Toasts" section.
2. Experiment with configurations and layouts defined in `CustomToastFactory`.

---

## Example Code Snippets

### Showing a Templated Toast
```swift
let nativeTemplatedToast = TemplatedToastFactory.nativeToast()
CxjToastsCoordinator.shared.showToast(
    type: .templated(template: nativeTemplatedToast)
)
```

### Using a Custom Toast
```swift
let customToastData = CustomToastFactory.toastDataForType(
    .sidePresentingToast,
    customSourceView: self.view
)
CxjToastsCoordinator.shared.showToast(
    type: .custom(
        data: customToastData
    )
)
```

### Sequential Presentation Strategy
```swift
let customToastData = CustomToastFactory.toastDataForType(
    .sidePresentingToast,
    customSourceView: self.view
)
		
ToastPresenter.presentToastWithType(
    .custom(data: customToastData),
    strategy: .custom(
        strategy: .init(
            presentsCount: 3,
            delayBetweenToasts: 1.5
            )
        ),
        animated: true
)
```

---

## Contribution
If you encounter any issues or have suggestions, feel free to create an issue or submit a pull request on the repository.

---

## License
The Example project is available under the MIT license. See the [LICENSE](./LICENSE) file for more information.

---
