import Cocoa

/*
 https://codewithchris.com/learn-swift-from-objective-c-part3/
 Protocols
 In iOS development, a protocol is a set of methods and properties that encapsulates a unit of functionality. The protocol doesn’t actually contain any of the implementation for these things; it merely defines the required elements. Any class that declares itself to conform to this protocol must implement the methods and properties dictated in the protocol.

 Declaring a protocol

 Objective-C

 In Objective-C, protocols are declared with the “@protocol” keyword. Below is an example of declaring a protocol containing one required method.

 1
 2
 3
 4
 5
 @protocol SampleProtocol
  
 - (void)someMethod;
  
 @end
 Swift

 In Swift, the syntax is a little different but the idea is the same.

 protocol SampleProtocol
 {
     func someMethod()
 }
 Conforming to a protocol

 Objective-C

 In Objective-C, you add the protocol name in angle brackets beside the class interface declaration.

 MyClass is declaring that it conforms to SampleProtocol below. MyClass will also have to provide an implementation for “someMethod” in the implementation file because it is a required protocol method.

 1
 2
 3
 @interface MyClass : NSObject
  
 @end
 Swift

 In Swift, the protocol name is appended beside the superclass name, separated with a comma. If there isn’t a superclass, then you just write a colon, followed by the protocol name.

 Both MyClass and AnotherClass conform to the SampleProtocol.

 class MyClass: SampleProtocol
 {
     // Conforming to SampleProtocol
     func someMethod() {
     }
 }
  
 class AnotherClass: SomeSuperClass, SampleProtocol
 {
     // A subclass conforming to SampleProtocol
     func someMethod() {
     }
 }
 Delegation
 Delegation works hand in hand with protocols because it allows a class to specify a delegate property which conforms to some protocol. Then a second class which actually conforms to that protocol can be assigned to that property. Now the first class can communicate with the second class through the delegate property using the methods and properties as defined by the protocol.

 Declaring a delegate property

 Objective-C

 In Objective-C, declaring a delegate property involved using the “id” keyword as shown below.

 1
 2
 3
 4
 5
 @interface FirstClass : NSObject
  
 @property (nonatomic, weak) id delegate;
  
 @end
 Swift

 In Swift, declaring a delegate property is just like declaring any other property and you specify the protocol name as the type of the property.

 You may notice the question mark syntax which indicates that it’s a property with an optional value (there may or may not be an object assigned to it).

 1
 2
 3
 4
 class FirstClass
 {
     var delegate:SampleProtocol?
 }
 Calling a delegate method

 Objective-C

 In Objective-C, often times, you would see an If statement to check if there was an object assigned to the delegate property before calling the delegate method.

 1
 2
 if (self.delegate)
     [self.delegate someMethod];
 Swift

 In Swift, you can take advantage of the question mark syntax. If the delegate property is empty, nothing after the question mark will be executed.

 delegate?.someMethod()
 */

