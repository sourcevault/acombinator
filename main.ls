
wp = new WeakMap()

A = (Fn) -> (x) -> Fn x

main = (Fn) ->

	Maybe = wp.get Fn

	if Maybe

		Maybe

	else

		out = A Fn

		wp.set Fn,out

		out

module.exports = main