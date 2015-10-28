/* This file is generated, do not edit! */
package scipy;
@:pythonImport("scipy.optimize") extern class Optimize {
	static public function anderson(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function approx_fprime(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function basinhopping(func:Dynamic, x0:Dynamic, ?niter:Dynamic, ?T:Dynamic, ?stepsize:Dynamic, ?minimizer_kwargs:Dynamic = null, ?take_step:Dynamic = null, ?accept_test:Dynamic = null, ?callback:Dynamic = null, ?interval:Dynamic, ?disp:Dynamic = false, ?niter_success:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function bisect(f:Dynamic, a:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function bracket(func:Dynamic, ?xa:Dynamic, ?xb:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function brent(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function brenth(f:Dynamic, a:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function brentq(f:Dynamic, a:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function broyden1(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function broyden2(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function brute(func:Dynamic, ranges:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function check_grad(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function curve_fit(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function diagbroyden(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function differential_evolution(func:Dynamic, bounds:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function excitingmixing(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fixed_point(func:Dynamic, x0:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fmin(func:Dynamic, x0:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fmin_bfgs(f:Dynamic, x0:Dynamic, ?fprime:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fmin_cg(f:Dynamic, x0:Dynamic, ?fprime:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fmin_cobyla(func:Dynamic, x0:Dynamic, cons:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fmin_l_bfgs_b(func:Dynamic, x0:Dynamic, ?fprime:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fmin_ncg(f:Dynamic, x0:Dynamic, fprime:Dynamic, ?fhess_p:Dynamic = null, ?fhess:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fmin_powell(func:Dynamic, x0:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fmin_slsqp(func:Dynamic, x0:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fmin_tnc(func:Dynamic, x0:Dynamic, ?fprime:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fminbound(func:Dynamic, x1:Dynamic, x2:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fsolve(func:Dynamic, x0:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function golden(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function leastsq(func:Dynamic, x0:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function line_search(f:Dynamic, myfprime:Dynamic, xk:Dynamic, pk:Dynamic, ?gfk:Dynamic = null, ?old_fval:Dynamic = null, ?old_old_fval:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function linearmixing(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function linprog(c:Dynamic, ?A_ub:Dynamic = null, ?b_ub:Dynamic = null, ?A_eq:Dynamic = null, ?b_eq:Dynamic = null, ?bounds:Dynamic = null, ?method:Dynamic, ?callback:Dynamic = null, ?options:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function minimize(fun:Dynamic, x0:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function minimize_scalar(fun:Dynamic, ?bracket:Dynamic = null, ?bounds:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function newton(func:Dynamic, x0:Dynamic, ?fprime:Dynamic = null, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function newton_krylov(?varargs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function nnls(A:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ridder(f:Dynamic, a:Dynamic, b:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function root(fun:Dynamic, x0:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rosen(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rosen_der(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rosen_hess(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function rosen_hess_prod(x:Dynamic, p:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function show_options(?solver:Dynamic = null, ?method:Dynamic = null, ?disp:Dynamic = true, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}