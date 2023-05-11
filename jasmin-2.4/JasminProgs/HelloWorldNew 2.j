;HELLO WORLD MODIFIED FOR DEMO IN CLASS OF PRINTING INT, FLOAT

;Hello World Jasmin program.
; Modified from Jon Meyer's sample HelloWorld.j program.
; Replaces deprecated invokenonvirtual with invokespecial.

.class public HelloWorldNew
.super java/lang/Object

;
; standard initializer
.method public <init>()V
   aload_0
 
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V
; declaration, arg is an array of strings and the return type is V for void at the end
   .limit stack 10
   .limit locals 10

; announce limit of local variables plus local variables
; try making the stack limit small and seeing the error messages
   ; push System.out onto the stack

   getstatic java/lang/System.out Ljava/io/PrintStream;

;the printstream class has println method, and we are invoking printstream class to do this
   ; push a string onto the stack
   ldc "Hello World New and PrintInt!"

; puts an address onto the stack, via reference to memory 
   ; call the PrintStream.println() method.
   ;println needs system.out on stack then the string printed as arguments
   ;the object reference is an argument
   ;need the whole path name for the method, how do we find this
   ;everything in JVM is typed, all invokevirtuals follow this pattern

   invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

   ;put object name onto the stack
   getstatic java/lang/System.out Ljava/io/PrintStream;
   dup


   ;push an into onto the stack
   ldc 433

   ;call the PrintStream.println() method with an int, if the type is a primitive type it's just one letter
   invokevirtual java/io/PrintStream.println(I)V

;load float onto stack 
   ldc 75.98 
   
;call printstream and use F as return type for float, 
;and stack should have duplicate getstatic on it already to work with this

invokevirtual java/io/PrintStream.println(F)V

   ; done

   return

.end method
