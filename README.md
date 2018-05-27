# Goal-Post-App
Simple iOS Goal-Tracking app written in Swift 4 using CoreData

## Preview
![Alt Text](https://media.giphy.com/media/8XQ4pVVazH2EaXl8vr/giphy.gif)

**Built with**
- Ios 11
- Xcode 9 

## Requirements
```swift
import CoreData
```
## Features:
- **Add/Delete Goals**
- **Track Goal Completion**
- **Create Short-term/Long-term Goals**
- **Undo Deleted Goals**
  ```swift
  managedContext = appDelegate?.persistentContainer.viewContext
  managedContext.undoManager = UndoManager()
  ```
- **Automatically Saves Data on Phone**

### Credits
Devslopes Coredata Tuts

## License
Standard MIT [License](https://github.com/johnnyperdomo/Goal-Post-App/blob/master/LICENSE) 
