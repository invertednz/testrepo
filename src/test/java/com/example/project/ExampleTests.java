/*
 * Copyright 2015-2018 the original author or authors.
 *
 * All rights reserved. This program and the accompanying materials are
 * made available under the terms of the Eclipse Public License v2.0 which
 * accompanies this distribution and is available at
 *
 * http://www.eclipse.org/legal/epl-v20.html
 */

package com.example.project;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.RepeatedTest;
import org.junit.jupiter.api.Test;

import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

import static org.junit.jupiter.api.Assertions.fail;

class ExampleTests {

	static int i=0;

	@Test
	public void Area1Test1() {
		//fail("Phone turned off");
	}

	@Test
	public void Area1Test2() {
		//fail("Phone turned off");
	}

	@Test
	public void Area1Test3() {
		//fail("Phone turned off");
	}

	@RepeatedTest(value = 2, name = "{displayName}")
	public void Area1Test4() {
		if(i==0){
			i++;
			//fail("Phone turned off");
		}
	}

	@Test
	public void Area1Test5() {
		//fail("Real Defect");
	}
	
	@RepeatedTest(value = 350, name = "{displayName}")
	public void Area2Test6() {
		try {
			Thread.sleep(1500);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
}
