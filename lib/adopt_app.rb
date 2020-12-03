require "tty-prompt"


class AdoptApp
    @@prompt = TTY::Prompt.new
    attr_reader :user

    def run
        welcome
        enter_name
        view_all_dogs
        adopt
        #delete
    end

    def welcome
        puts "Welcome to Adopt-a-Pup where best friends are made!"
        sleep(1)   
    end

    def enter_name
        puts "Please enter your name to meet some pups!"
        answer = gets.chomp.downcase
        @@user = User.find_or_create_by(name: answer)
        sleep(1)
        puts "Let's go meet your new best friend, #{@@user.name.capitalize}!"
    end

    def view_all_dogs #modify to only return the available dogs
         dogs = Dog.all.map {|dog| dog.name}
        dog_name = @@prompt.select("Would you like to see some pups?!", dogs)
        @@selected_dog = Dog.find_by(name: dog_name)
        puts "I am so happy to meet you! My name is #{@@selected_dog.name} and I am a #{@@selected_dog.breed}."
        puts "I am a #{@@selected_dog.gender} pup who just turned #{@@selected_dog.age} year(s) old."
    end

    def adopt
       puts "Would you like to take me to my furever home, #{@@user.name.capitalize}? Yes? or Maybe later?"
         answer = gets.chomp.downcase
          if answer == "yes"
            # @@selected_dog.update_column(:adopted, true)
            #the selected dog, change adopted status to true
            puts "I am ready for my new name! What you like to name me?!"
           new_dog_name = gets.chomp.downcase
            @@selected_dog = new_dog_name
            puts "I love the name, #{new_dog_name.capitalize}! THIS IS THE BEST DAY EVER!!!!! <3"
          else
            puts "Oh, okay. *Sad puppy eyes*.... queue Sara McGlothlin's Angel song."
            puts "Until next time... :( #guilttrip"
          end
    end
    
    # def delete_adopted_dog
    #     @@selected_dog.delete
    #then thank user for adoption
    # end



end