x = 3
z = 0

function selectStone
	data = turtle.getItemDetail()
	if not data.name==minecraft:stone
		turtle.select(1)
	end
end

function selectTorch
	data = turtle.getItemDetail()
	if not data.name==minecraft:torch
		turtle.select(2)
	end
end

funtion torchPlace
	turtle.select(2)
	turtle.placeUp()
end

function cleanTunnelWallUp
	for i=1,3 do
		if turtle.detect==true
			data = turtle.inspect()
			if not data.name==minecraft:stone
				turtle.dig()
				selectStone()
				turtle.place()
			end
		end
		turtle.up()
	end
end

function cleanTunnelWallDown
	for i=1,3 do
		if turtle.detect==true
			data = turtle.inspect()
			if not data.name==minecraft:stone
				turtle.dig()
				selectStone()
				turtle.place()
			end
		end
		turtle.up()
	end
end

function cleanTunnelFloor
	for i=1,3 do
		if turtle.detectDown==true
			data = turtle.instpectDown()
				if not data.name=minecraft:stone
					turtle.digDown()
					selectStone()
					turtle.placeDown()
				end
			end
		turtle.forward()
	end
end

function cleanTunnelRoof
	for i=1,3 do
		if turtle.detectDown==true
			data = turtle.instpectDown()
			if not data.name=minecraft:stone
				turtle.digUp()
				selectStone()
				turtle.placeUp()
				if z == x do
					if i==2 do
						turtle.turnRight(2)
						torchPlace
						turtle.turnleft(2)
						z = 0
					end
				end
			end
		end
		turtle.forward()
	end
end
print("How many times to repeat?")
t = read()
print("How far between torch placement?")
x = read()
for i=1,t do
	turtle.turnRight()
	cleanTunnelFloor()
	cleanTunnelWallUp()
	turtle.turnLeft(2)
	cleanTunnelRoof()
	cleanTunnelWallDown()
	turtle.turnRight()
end
