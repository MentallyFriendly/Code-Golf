a=gets.chop;c=->v{h={M:1000,CM:900,D:500,CD:400,C:100,XC:90,L:50,XL:40,X:10,IX:9,V:5,IV:4,I:1}
n=0;h.keys.map{|r|(v=v[r.size,v.size];n+=h[r])while(v=~/\A#{r}/)}
p n}
c[a]

# a = gets.chomp
# c = -> v {
#   h = {
#     M: 1000,
#     CM: 900,
#     D: 500,
#     CD: 400,
#     C: 100,
#     XC: 90,
#     L: 50,
#     XL: 40,
#     X: 10,
#     IX: 9,
#     V: 5,
#     IV: 4,
#     I: 1
#   }
#   n = 0
#   h.keys.map { |r|
#     (v = v[r.size, v.size]
#     n += h[r]) while v =~ /\A#{r}/
#   }
#   p n
# }
# c[a]
