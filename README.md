# LeoModifiers
LeoModifiers : This class will create the modifier function of any class from its properties.

### How to use 

 * Confirm any class to  LeoModifiers
```Swift 

class Person : LeoModifiers  {  // Confirm LeoModifiers protocol 
var name = "Sansa Stark"
var awesome = true
var parent : SomeParent? 
}

```

* Call the fuctiion which will print code in console 

```Swift
   Person().leoMake()
```


### Code generated 
```Swift 
extension LeoModifiers.Person {
func withName(_ name : String) -> LeoModifiers.Person {
self.name = name
return self
}
func withAwesome(_ awesome : Bool) -> LeoModifiers.Person {
self.awesome = awesome
return self
}
func withParent(_ parent : Optional<SomeParent>) -> LeoModifiers.Person {
self.parent = parent
return self
}
func end(){
}
}
```

### console Code 
``` 
Person().withAwesome(true)
.withName("SomeName")
.withParent(SomeParent())
.end()

```
