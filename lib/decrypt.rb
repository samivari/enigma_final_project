require './lib/enigma'

class Encrypt
  file = File.open('encrypted.txt')
  read = file.read
  incoming_text = read.gsub("\n", '')
  file.close

  enigma = Enigma.new
  decryption = enigma.decrypt(incoming_text, ARGV[2], ARGV[3])

  writer = File.open('decrypted.txt', 'w')

  writer.write(decryption[:decryption])

  writer.close

  puts "Created #{decryption[:decryption]} with the key #{decryption[:key]} and date #{decryption[:date]}"
end
