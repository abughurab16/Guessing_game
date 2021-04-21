import os

const (
	secret_number = 25
	total_tries   = 3
)

fn main() {
	mut input_num := 0
	mut counter := 1
	println('Hello, Guess a number from 0-50')

	// game loop
	for input_num != secret_number && counter <= total_tries {
		input_num = os.input('enter a number: ').int()
		if input_num < secret_number {
			println('too low')
			println('tries: $counter')
		} else if input_num > secret_number {
			println('too high')
			println('tries: $counter')
		} else {
			println('Congratulations You Won!!')
			println('took you: $counter tries')
		}
		counter++
	}
	println('Game Over.')
}
