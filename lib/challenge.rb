MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
  '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
  '---..' => '8', '----.' => '9', '.-.-.-' => '.', '--..--' => ',',
  '..--..' => '?', '.----.' => "'", '-.-.--' => '!', '-..-.' => '/',
  '-.--.' => '(', '-.--.-' => ')', '.-...' => '&', '---...' => ':',
  '-.-.-.' => ';', '-...-' => '=', '.-.-.' => '+', '-....-' => '-',
  '..--.-' => '_', '.-..-.' => '"', '...-..-' => '$', '.--.-.' => '@',
  '...---...' => 'SOS'
}.freeze
## DO NOT CHANGE ANYTHING ABOVE THIS LINE

def decode_morse(morse_code)
result = String.new

single_key = Array.new
#this will be used for comparison
  MORSE_CODE.each_key do |key|
    single_key << key
  end

word = Array.new
single_key.select do |x|
  if x === morse_code
    word = x
  end
end

MORSE_CODE.each do |key, value|
 if(key === word)
   result << value
 end
end

end

def parse_bits(bits)
  # Your code here
end

decode_morse(".-")
