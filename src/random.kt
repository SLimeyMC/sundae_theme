package example

import java.util.*

// HACK: Shouldn't suppress this
@Suppress
class MyClass {
    val immutableField: Int = 42 + 32 shr 2
    var mutableField: String = "Hello"
    var randomColor: String = "#ffffff"

    fun myFunction(arg: Int): String {
        val localVariable = "World"
        return "Hello, $localVariable!"
    }

    companion object {
        const val MY_CONSTANT = "This is a constant"
    }
}

fun main() {
    val instance = MyClass()
    println(instance.myFunction(10))
    println(true, instance)
    println(MyClass.MY_CONSTANT)
}