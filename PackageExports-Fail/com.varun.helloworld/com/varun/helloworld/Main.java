package com.varun.helloworld;

import com.varun.printer.Printer;
import com.varun.printer.internal.PrintWorld;

public class Main {

	public static void main(String[] args) {
		new Printer().print("hello");
		new PrintWorld().print();
	}
}
