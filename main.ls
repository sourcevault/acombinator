
wp = new WeakMap()


main = (Fn) ->

	Maybe = wp.get Fn

	if Maybe

		Maybe

	else

		A = (x) -> Fn x

		wp.set Fn, A


module.export = main