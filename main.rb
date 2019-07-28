require_relative 'lib/hello'
require_relative 'lib/answers'

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

def __ENCODING__
  # code here
end

print "Оу....кто-то пришёл... *хлоп дверью*\n"
puts
puts HELLO.sample
sleep (1)
puts

print "Сейчас я подумаю....хм....\n"
sleep (1)
puts

print "О! Точно...! Слушай, вспомнил!)\n"
puts
sleep (1)

puts ANSWERS.sample
