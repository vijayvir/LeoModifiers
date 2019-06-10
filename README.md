# LeoModifiers
LeoModifiers : This class will create the modifier function of any class from its properties.

### How to use 

 * Confirm any class to  LeoModifable
```Swift 

class Person : LeoModifable  {  // Confirm LeoModifiers protocol 
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
```Swift
let some =  Person().withAwesome(true)
.withName("SomeName")
.withSomeInterger(3)
.withSomeDictiona(["someKey":"dsadsa"])
.withParent(SomeParent())

print(some.someDictiona)

```
