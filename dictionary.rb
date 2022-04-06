class Dictionary
def opdict

@dict = Hash.new
@dict = {  
 	"great" => "of an extent, amount, or intensity considerably above average.",
    "ruby" => "a precious stone consisting of corundum.",
	"cryptocurrency" => "a digital currency in which transactions are verified and records maintained by a decentralized system using cryptography.",
	"graphics"=>"the products of the graphic arts, especially commercial design or illustration."
        }
 
puts @dict.sort
 def search(word)
    if @dict.key?(word)==true
        a=@dict.fetch(word)
        puts " Meaning of word is #{a}"
        puts "\n\n"
    else
        puts "Word Not found \n\n"
    end
end

def add(word, meaning)
    @dict[word]=meaning
    puts "\n"
    puts @dict.sort
    puts "\n\n"
end

def update(word, meaning)
    if @dict.key?(word)==true
        @dict[word]=meaning
        puts "Meaning is updated successfully"
        # @dict.update(word,meaning)
        puts @dict.sort
        puts "\n\n"
    else
        puts "Word not found \n\n"
    end
end

def delete(word)
    if @dict.key?(word)==true
        @dict.delete(word)
        puts "Deleted the word successfully"
        puts @dict.sort
    else
        puts "Word not found"
    end
end

x=0
while x!=6
    puts "Choose an option"
    puts "1. Search"
    puts "2. Add"
    puts "3. Update"
    puts "4. Delete"
    puts "5. View"
    option=gets.to_i
    case option
    
    when 1
        puts "Search for a word"
        text=gets.strip
        search(text)
    when 2
        puts "Enter the word to be added"
        text=gets.strip
        puts "Enter the meaning of the word #{text}"
        meaning=gets.strip
        add(text,meaning)
    when 3
        puts "Enter the word to update"
        text=gets.strip
        puts "Enter the updated meaning of the word #{text}"
        updated_meaning=gets.strip
        update(text,meaning)

    when 4
        puts "Enter the word to be deleted "
        text = gets.strip
        delete(text)
    when 5
        puts @dict.sort
    else
        puts "Exiting....."
    end
end
puts option

end 
end
obj=Dictionary.new
obj.opdict