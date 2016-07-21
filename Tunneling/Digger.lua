startX = 0
startZ = 0
startY = 0

direction = 0
digDir = 0
distance = 16
function movementForward(a)
	if direction == 0 do
		d = startX + 1
		startX = d
	if direction == 1 do
		d = startZ + 1
		startZ = d
	end
	if direction == 2 do
		d = startX - 1
		startX = d
	end
	if direction == 3 do
		d = startZ - 1
		startZ = d
	end	
	turtle.dig()
	turtle.forward()
end

function movementBackwards(a)
	if direction == 0 do
		d = startX - 1
		startX = d
	end
	if direction == 1 do
		d = startZ - 1
		startZ = d
	end
	if direction == 2 do
		d = startX + 1
		startX = d
	end
	if direction == 3 do
		d = startZ + 1
		startZ = d
	end	
	turtle.dig()
	turtle.back(a)
end

function movementUp(a)
	turtle.digUp()
	turtle.up(a)
	startY = direction + 1
	direction = startY
end

function movementDown(a)
	turtle.digDown()
	turtle.down(a)
	startY = direction - 1
	direction = startY
end

function turnRight()
	if direction == 3 do
		direction = 0
	else
		direction + 1
	end

	turtle.turnRight()
end

function turnLeft()
	if direction == 0 do
		direction = 3
	else
		direction - 1
	end

	turtle.turnLeft()
end

function turn180()
	if direction == 3
		direction = 1
	end
	if direction == 2
		direction = 0
	end
	if direction == 1
		direction = 3
	end
	if direction == 0
		direction = 2
	end
	turtle.turnRight(2)
end

function digLine(a)
	if digDir == direction
		for i=1,a do
			turtle.dig()
			movementForward(1)
		end
		movementBackwards(a)
	end
end

function pillar(a)
	for i=1,a
		turtle.digUp(1)
		movementUp(1)
	end
	movementDown(a)
end

function start()
	if direction == 0 do
		
	end
end

-- Main loop --
print("how far do you want to go")
distance = read()

for i=1,distance do
	term.clear()
	print("X"startX)
	print("Z"startZ)
	print("Y"startY)
	print("Direction" direction)

	-- Action
	digLine(3)
	movementUp(1)
	digLine(3)
	movementUp(1)
	digLine(3)
	movementDown(2)
end