
global.gc!

gen-large-nested-list = ( outer , inner ) ->

	list = []

	for I from 1 to outer

		nest = []

		for K from 1 to inner

			nest.push Math.round ((Math.random!)*100)

		list.push nest

	list


list = gen-large-nested-list 100,2

most = require "most"

apply = require "./main"

{diff,mem} = require "./mem"


start = mem!

Tstart = (new Date!).getTime!

out = most.from list

# .chain apply most.from
.chain (x) -> most.from x


.reduce do

	(accum,x) ->

		accum.push x

		accum


	[]


out.then (full) ->


	final = mem!

	Tfinal = (new Date!).getTime!

	console.log diff start,final

	console.log "Time :"  + (Tfinal - Tstart)

