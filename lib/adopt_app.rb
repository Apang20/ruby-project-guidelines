class AdoptApp
    attr_reader :user

        #welcome DONE
        #have them enter name to meet pup DONE

        #ask question if user wants to see pups
        #if YES will go see pups, #says something like 
        #"awesome! Your new best friend is waiting for you!"

        #if NO, figure out a way to send them to the 
        #youtube to the sara mcglothlin "angel" song (or sad meme pop up)
        #and it will eventually (or right away) exit the app
        
        #back to if they say yes,
        #return all the available pups maybe in a numbered list
        #ask them to select the dog by number or name
        #that they would like to adopt
        
        #maybe they change the dogs name(user should put in random new dog name)

        #Thank them for adopting #{whatever dog they adopted}
        #We will tell you new best friend that they now have a forever home

        #delete adopted dog
        #Exit app




        
        #sleep()
        #say "here are the available pups!"
        #sleep() in one of the methods
        #available_pups

    def run
        welcome
        login_or_signup
        all_pups
    end

    def welcome
        puts "Welcome to Adopt-a-Pup where best friends are made!"
        sleep(1)   
    end

    def login_or_signup
        puts "Please enter your name to meet some pups!"
        answer = gets.chomp.downcase
        @user = User.find_or_create_by(name: answer)
        sleep(1)
        puts "Let's go meet your new best friend, #{user.name.capitalize}!"
    end

    def all_pups
        dogs.each do |dog|
            puts dog
        end
    end


end