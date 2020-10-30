upload: compile
	arduino-cli upload --port /dev/cu.usbserial-1410 --fqbn arduino:avr:nano sketch/

compile: sketch
	arduino-cli compile -b arduino:avr:nano sketch

sketch:
	mkdir -p sketch
	ln -f main.cpp sketch/sketch.ino

compile_commands.json: cmake
	ln -sf build/cmake/compile_commands.json .

cmake:
	cmake -B cmake .

