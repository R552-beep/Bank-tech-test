require 'print'

describe Print do
  context ' #printer ' do 
    it 'prints a "string" with a new line' do 
      expect { subject.print('string') }.to output("string\n").to_stdout
    end
    it 'prints each element of an array in a new line as a string' do  
      array = ["I", "am", "a", "string"]
      expect { subject.print(array) }.to output("I\nam\na\nstring\n").to_stdout
    end
  end
end