package com.sag.tn.aspects;

import com.sag.tn.core.Pipe;

/*
 * Aspect which will contain advices based on pointcut definitions
 * Pointcuts are matched and matching advices injected into the code
 */
public aspect DemoAspect {
	
	/*
	 * define a pointcut
	 * basically a matcher
	 */

	pointcut snapPointcut():
		call(public void com.sag.tn.core.Camera.snap());
	
	after(): snapPointcut() {
		System.out.println("Snapped!");
	}
	
	pointcut staticSnap(Pipe p) :
		execution(void com.sag.tn.core.Camera.staticSnap(..)) && args(p);
	
	
	after(Pipe p): staticSnap(p) {
		System.out.println("Static snapped!");
		System.out.println("creating event data out of " + p);
	}
	
	before(): withincode(void com.sag.tn.core.Camera.staticSnap(..))  {
		System.out.println("f");
	}
	
}
