def max_triangle_path(n)
  n.reverse!
  (1...n.length).each do |i|
    (0...n[i].length).each do |j|
      n[i][j] += [n[i-1][j], n[i-1][j+1]].max
    end
  end
  n.last.first
end

triangle = []
File.open("./triangle.txt").each do |line|
  triangle << line.split(" ").collect(&:to_i)
end

p max_triangle_path(triangle)
