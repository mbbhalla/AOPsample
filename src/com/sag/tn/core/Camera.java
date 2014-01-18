package com.sag.tn.core;


//Component in which weaving will be done
public class Camera {
	public void snap() {
		System.out.println("Snap!");
	}
	
	@SuppressWarnings("boxing")
	public static void staticSnap(Pipe p) {
		p.add(10);
		@SuppressWarnings("unused")
		Integer ii = new Integer(10);
	}
}
