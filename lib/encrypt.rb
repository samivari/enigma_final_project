require './lib/enigma'

class Encrypt
  file = File.open('message.txt')
  read = file.read
  incoming_text = read.gsub("\n", '')
  file.close

  enigma = Enigma.new
  encryption = enigma.encrypt(incoming_text)

  writer = File.open('encrypted.txt', 'w')

  writer.write(encryption[:encryption])

  writer.close

  puts "Created #{encryption[:encryption]} with the key #{encryption[:key]} and date #{encryption[:date]}"
end
