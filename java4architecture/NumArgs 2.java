public class NumArgs
//WORKS
//this is a class that prints the number of command line arguments passed to the program when it is run. It shows that Java has a default of 0
//because unlike C it does not need the first argument [0] to "find" itself. 
//This program uses a for loop to iterate through the array of arguments passed to the program, and prints the length of that array. 
//because I am ignorant of the proper way to do it, I've told it to break the for loop after printing it, so it can print 0 args once
//instead of repeating forever.
{ public static void main(String[] args)
    { 
        
            for(int i=0; i >= args.length; i++) 
            {
                System.out.println("Number of command line args: " + args.length);
                break;
            }
            
            
    }


}