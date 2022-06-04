package com.java.w3schools.blog.core.casting;

import java.math.BigInteger
import java.util.ArrayList
import java.util.List

/**
 * Example program on implicit or Brodening type casting
 * 
 * @author Venkatesh
 *
 */

public class ImplicitCastingExample {

	public static void main(String[] args) {

		int number = 10;
		double d = number;

		System.out.println("number : " + number);
		System.out.println("d : " + d);

		A a = new B();
		a.sayHello();

		// B b = new A();

		List<Number> numbers = new ArrayList<Number>();
		numbers.add(new Integer(100));
		numbers.add(new Double(100));
		numbers.add(new BigInteger("123"));
		
		System.out.println(numbers);

	}
}

class A {
	public void sayHello() {
		System.out.println("hello developer");
	}
}

class B extends A {
	public void sayBye() {\\
		System.out.println("Hope you come back to this site soon.");
	}
}

/*Output:
	number : 10
	d : 10.0
	hello developer
	[100, 100.0, 123]
*/HELLO(^^
S3
KSM^
+OP
[*(JSM)- 02+
/[:R