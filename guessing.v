import os
import rand

const total_tries = 10

fn main() {
	mut input_num := 0
	mut counter := 1
	println("Hello, Let's guess some numbers!")
	max := os.input('enter max: ').int()
	secret_number := rand.intn(max + 1)

	// game loop
	for input_num != secret_number && counter <= total_tries {
		input_num = os.input('enter a number: ').int()
		if input_num < secret_number {
			println('too low')
			println('tries: $counter')
			counter++
		} else if input_num > secret_number {
			println('too high')
			println('tries: $counter')
			counter++
		} else {
			println('Congratulations You Won!!')
			println('took you: $counter tries')
		}
	}
	println('Game Over.')
	exit(0) // cuze why not
}
