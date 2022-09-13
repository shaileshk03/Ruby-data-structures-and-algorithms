#Intro - we must define method with the reserved word "def" followed by method name and the reserved word "end" to complete the method
# Example a say method shown below.

def say
    # method body goes here
end

# Method parameters 
# @param word 
def say(word = 'hello')
    #puts word + "."
end 

say 
say "hi"
say "how are you"
say "I'm fine"


[1, 2, 3].each do |num|
    puts num
end

