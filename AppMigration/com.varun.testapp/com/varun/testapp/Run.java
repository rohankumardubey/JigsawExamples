package com.varun.testapp;

import org.junit.Assert;
import org.junit.Test;

public class Run {

	public static void main(String[] args) {
		System.out.println("hello");
		test();
	 	Assert.fail("failed from test method");
	}

	@Test
	public static void test() {
		int i = 0;
		Assert.assertTrue(i == 0);
		System.out.println("hello from testclass");
	}
}
