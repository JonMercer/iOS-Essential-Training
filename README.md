# iOS-Essential-Training
Notes and projects while I learn iOS

# First Responder
- The part of the UI that the user is focused on

# Delegate
- Use delegate instead of inheritance or event handling
- One object handing responsibility to another
- What's required for delegation
  1. There are rules called **delegate protocol**
    - View documentations for this
  - Some way of saying "I can do that"
    - `@interface ViewController : UIviewController <UITextFieldDelegate>`
  - Have a plan on how to do it
    - Implement the method
  - Make sure the object gets called
    - Dragging that line in Main.storyboard
