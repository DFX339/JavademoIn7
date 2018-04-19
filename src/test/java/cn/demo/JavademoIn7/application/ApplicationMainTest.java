package cn.demo.JavademoIn7.application;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

public class ApplicationMainTest {

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		System.out.println("---Before()---");
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		System.out.println("---After()---");
	}

	@Test
	public void testHello() {
		System.out.println("executing.............");
		ApplicationMain amt = new ApplicationMain();
		amt.hello();
	}

}
