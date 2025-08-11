- UIKIT
Imperative UI framework
Requires UIViewController lifecycle
Manual layout with Auto Layou
Need Storyboard or XIB

- SwiftUIf


Declarative UI framework
Uses View protocol
Automatic layout with modifiers

2. 
@State is a property wrapper that stores local, mutable state for a view. When it changes, the view automatically re-renders.
@State private var count = 0

4. What is a View in SwiftUI?
A View is a protocol that represents part of the UI. You build UI by composing views like Text, Button, VStack, etc.

5. What is @Binding in SwiftUI?

@Binding is used to pass a reference to a state variable from a parent view to a child view so the child can read and modify it.
@Binding var isOn: Bool

6. What is the purpose of @ObservedObject?

Used to observe an external reference type (class conforming to ObservableObject) so the view can update when the data changes.
@ObservedObject var viewModel: MyViewModel

7. 
@StateObject                              @ObservedObject
Owns and initializes the object           Depends on external initialization The view does not own the object
Used for first-time creation              Used for injected data
The view owns the object, 
so SwiftUI will create it once
and keep it alive as long as that view exists


8.
In SwiftUI, a modifier is a method you call on a view to change its appearance, behavior, or layout, and it always returns a new view (because SwiftUI views are immutable value types).

Text("Hello, SwiftUI!")
    .font(.title)            // Changes text style
    .foregroundColor(.blue)  // Changes text color
    .padding()               // Adds padding around text
    .background(Color.yellow) // Sets background color


9. What is the @Environment and @EnvironmentObject?
@Environment: Accesses system-provided values (e.g., color scheme, locale)

@EnvironmentObject: Shares a reference type (like a ViewModel) across the view hierarchy.


10. How do you implement MVVM in SwiftUI?

View: struct conforming to View
ViewModel: class conforming to ObservableObject
Model: Your data structure



