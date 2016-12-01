def cipher(text, shift)
  return text if text == '' || shift == 0

  shift %= 95

  text = text.split('').map do |char|
    char = char.ord
    char = character_printable?(char)

    char.nil? ? next : nil

    char += shift

    if char > 126
      char = (char % 126) + 31
    elsif char < 32
      char = 126 - (31 - char)
    end

    char = char.chr
  end.join

  return text

end

def character_printable?(char)
  char = nil unless char.between?(32, 126)

  char
end
