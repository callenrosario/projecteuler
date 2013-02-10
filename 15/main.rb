# My Solution:
# 1) construct the grid
# 2) starting node has the value 1
# 3) go to child nodes and their value is the sum of their parent nodes
# 4) repeat till grid is filled
# 5) value is at goal node

# Best Solution:
# (
def !(n)
  (n.downto 1).inject(:*)
end
