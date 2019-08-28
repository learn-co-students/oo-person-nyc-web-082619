# your code goes here
require 'pry'
#Paired with Adam Brown
@AdomBrownBB

class Person

    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_writer  :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(amount)  
        @bank_account = amount
    end

 
    def happiness=(happiness_amount)
        if happiness_amount < 11 && happiness_amount > -1
            @happiness = happiness_amount
        elsif happiness_amount > 10
            @happiness = 10
        else
            @happiness = 0

        end 
    end
        
    def hygiene=(hygiene_amount)
        if hygiene_amount < 11 && hygiene_amount > -1
            @hygiene = hygiene_amount
        elsif hygiene_amount > 10
            @hygiene = 10
        else
            @hygiene = 0
        end
     end

     def take_bath
        @hygiene += 4
        
        self.hygiene=(@hygiene)
        # var = @hygiene
        # hygiene =(var)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
        
    end

     def happy?
        if happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def work_out
        @hygiene -= 3
        self.hygiene=(@hygiene)

        @happiness += 2

        self.happiness=(@happiness)
        
        return "♪ another one bites the dust ♫"
    end

    def call_friend(name)
        caller = name.name
        @happiness += 3
        name.happiness += 3
        self.happiness=(@happiness)
        return "Hi #{caller}! It's #{@name}. How are you?"
    end

    def start_conversation(name, topic)
        if topic == "politics"
            @happiness -= 2
            name.happiness -= 2
            self.happiness=(@happiness)
          
            p "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            @happiness += 1
            name.happiness += 1 
            self.happiness=(@happiness)

            p "blah blah sun blah rain" 
        else 
            p "blah blah blah blah blah"
        end
    end




end
#   binding.pry