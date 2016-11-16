def cipher(text, shift)
  return text if text == '' || shift == 0
  
  shift = shift % 95
  
  text = text.split('').map do |char|
    if char.ord.between?(0, 31) || char.ord == 127
      char = nil
      next
    end
    
    char = char.ord + shift
    char = char > 126 ? (char % 126) + 31 : char
    char = char < 32  ? 126 - (31 - char) : char
    char = char.chr
  end.join
  
  return text
  
end
