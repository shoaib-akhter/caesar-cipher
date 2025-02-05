# Caesar Cipher Implementation in Ruby
# This program encrypts a given text using the Caesar cipher technique.
# The shift value determines how many positions each letter moves in the alphabet.

# Function to shift individual letters based on the shift value
def shift_letter(letter, shift)
    ascii_val = letter.ord
  
    if ascii_val.between?(65, 90)  # Uppercase letters (A-Z)
      new_ascii = ((ascii_val - 65 + shift) % 26) + 65
      new_ascii.chr
    elsif ascii_val.between?(97, 122)  # Lowercase letters (a-z)
      new_ascii = ((ascii_val - 97 + shift) % 26) + 97
      new_ascii.chr
    else
      letter  # Non-alphabetic characters remain unchanged
    end
  end
  
  # Function to apply the Caesar cipher to an entire string
  def caesar_cipher(text, shift)
    text.chars.map { |char| shift_letter(char, shift) }.join  # Process each character and rejoin the modified text
  end
  
  # Test cases to verify functionality
  if __FILE__ == $0  # Ensures this runs only if executed directly
    puts caesar_cipher("Hello, World!", 3)  # Expected Output: "Khoor, Zruog!"
    puts caesar_cipher("abc XYZ", -3)  # Expected Output: "xyz UVW"
    puts caesar_cipher("The quick brown fox jumps over the lazy dog", 7)  # Expected Output: "Aol xbpjr iyvdu mve qbtwz vcly aol shgf kvn"
    puts caesar_cipher("Lorem ipsum dolor sit amet, consectetur adipiscing elit.", 10)
  end
  