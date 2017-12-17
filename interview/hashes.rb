class Hashes
end
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
p h1.merge(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}
#Если ключами хеша являются переменные, то может возникнуть ситуация, когда их значение меняется.
# Чтобы иметь доступ к ассоциированным с ними данным нужно вызвать данный метод,
# чтобы он привел ключи в соответствие с новым значеним переменных. Если метод вызывается,
# в то время как итератор обходит этот самый хеш, то будет возбуждена ошибка вида IndexError.
a = [ "a", "b" ]
c = [ "c", "d" ]
h = { a => 100, c => 300 }
h[a]       #-> 100
a[0] = "z"
h[a]       #-> nil
h.rehash   #-> {["z", "b"]=>100, ["c", "d"]=>300}
h[a]       #-> 100
#Присваивание - ассоциирует значение value с ключем key. Идентичен методу []=.
h = { "a" => 100, "b" => 200 }
h.store("a", 9)
h.store("c", 4)
h   #-> {"a"=>9, "b"=>200, "c"=>4}