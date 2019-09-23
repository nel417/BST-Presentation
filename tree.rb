class Node
    attr_reader :value
    attr_accessor :left, :right
    def initialize(value)
     @value = value
     @left =nil
     @right =nil
    end
   end


def insert(node, value)
    if node.nil?
      node = Node.new(value)
    elsif value < node.value
      node.left = insert(node.left, value)
    elsif value > node.value
      node.right = insert(node.right, value)
    end
    node
  end

    def walk (node)
        if(node==nil)
         return
        end
        if(node.left)
         walk(node.left)
        end
         puts node.value
        if(node.right)
         walk(node.right)
        end
        end


        arr = [61, 78, 79, 14, 72, 64, 60, 21, 86, 47, 96, 30, 74, 41, 49, 84, 73, 27, 87, 28, 44, 88, 18, 20, 68, 36, 2, 12, 11, 91, 35, 95, 13, 66, 9, 52, 23, 25, 4, 89, 50, 32, 15, 38, 51, 29, 31, 83, 97, 99, 34, 53, 58, 42, 76, 69, 48, 8, 65, 5, 82, 62, 63, 19, 81, 56, 94, 1, 6, 55, 46, 39, 92, 16, 26, 98, 33, 43, 93, 100, 24, 22, 90, 7, 3, 17, 75, 85, 10, 70, 59, 57, 40, 67, 37, 71, 80, 54];
        root = Node.new(arr.shift);
        root.left = Node.new(45)
        root.right = Node.new(77)
        arr.each{|e| insert(root, e) }



walk(root)

       
