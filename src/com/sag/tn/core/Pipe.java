package com.sag.tn.core;

import java.util.HashSet;
import java.util.Set;

public class Pipe {
	private Set<Integer> set = new HashSet<Integer>();
	
	public void add(Integer x) {
		set.add(x);
	}

	@Override
	public String toString() {
		return "Pipe [set=" + set + "]";
	}
}
