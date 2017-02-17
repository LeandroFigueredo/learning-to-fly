#==============================================================
#
# The objective in this file is show how to use modules,
# understand the self, the include and the extend.
#
#==============================================================

module Animals
  def mammals
    %w(sloths puppies porcupines)
  end
end

class Zoo
  include Animals #<<<<==== Instance Level Methods
end

class PetStore
  extend Animals   #<<<<==== Class Level Methods
end

#Including all methods of animals module in zoo class
# with include reserved word
zoo = Zoo.new.mammals

#Extending the Methods, you wont instantiate a class
# to call the extended methods, thats the diference,
#the methods are in class level
PetStore.mammals


# A good trick to see the methods with this object is
# including after that is subtracting the methods of
# the object with the Object class methods, like this

zoo = Zoo.new
zoo.methods - Object.methods #<<<===== Subtracting Object methods
                             #         lefting only the included instance
                             #         nethods...pretty awesome!

# This will return all the included methods.







