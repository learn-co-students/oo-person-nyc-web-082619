class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(points)
        if points  > 10
            @happiness = 10
        elsif points < 0
            @happiness = 0
        else
            @happiness = points
        end
    end

    def hygiene=(points)
        if points > 10
            @hygiene = 10
        elsif points < 0
            @hygiene = 0
        else
            @hygiene = points
        end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(callee)
        self.happiness=(self.happiness + 3)
        callee.happiness=(callee.happiness + 3)
        "Hi #{callee.name}! It's #{self.name}. How are you?"
    end
    
    def start_conversation(callee, topic)
        if topic == "politics"
            self.happiness=(@happiness - 2)
            callee.happiness=(callee.happiness - 2)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness + 1)
            callee.happiness=(callee.happiness + 1)
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
        
    end 

end