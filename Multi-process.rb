movies = { 
    Starwarse: 4.8,
    Divergent: 4.7,
    Zumanji: 5,
    Avathar: 5,
    Whale: 4.8
}
ans = 1
while ans==1 do
        puts "What would you like to do?"
        choice = gets.chomp
        case choice
        when "add"
            puts "What Movie Would you like to Add?"
            title = gets.chomp
            if movies[title.to_sym].nil?
                puts "What Rating Does the Movie Have?"
                rating = gets.chomp.to_i
                movies[title.to_sym] = rating
            else
                puts "That Movie already Exists! It's rating is #{movies.assoc(title.to_sym)}."
            end
        when "update"
            puts "What Would You Like To Update?"
            title = gets.chomp
            if movies[title.to_sym].nil?
                puts "That Movie Doesn't Exist."
            else
                puts "What is the new ?"
                rating = gets.chomp.to_f
                movies[title.to_sym] = rating
            end
        when "display"
            movies.each {|title,rating|
                puts "#{title} : #{rating}" }
        when "delete"
            puts "What Movie You Delete?"
            title = gets.chomp
            if movies[title.to_sym].nil?
                puts "That Movie Doesn't Exist."
            else
                movies.delete(title.to_sym)
            end
        else
            puts "Error!"
        
        end
        puts "Enter 1-to Continue 0-to Quit."
        ans = gets.chomp.to_i
 end

