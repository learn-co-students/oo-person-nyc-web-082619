
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(num)
        if num > 10
            num = 10
            @happiness = num
        elsif num < 0
            num = 0
            @happiness = num
        else 
            @happiness = num
        end
    end
    def hygiene=(num)
        if num > 10
            num = 10
            @hygiene = num
        elsif num < 0
            num = 0
            @hygiene = num
        else 
            @hygiene = num
        end
    end
    def happy?
        @happiness > 7 ? true : false
    end
    def clean?
        @hygiene > 7 ? true : false
    end
    def get_paid(sal)
        @bank_account += sal
        'all about the benjamins'
    end
    def take_bath
        @hygiene += 4
        self.hygiene = @hygiene
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def work_out
        @hygiene -= 3 
        self.hygiene = @hygiene
        @happiness += 2
        self.happiness = @happiness
        '♪ another one bites the dust ♫'
    end

    def call_friend(inst)
        self.happiness += 3
        inst.happiness += 3
        "Hi #{inst.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(per, top)
        if top == "politics"
        self.happiness -= 2
        per.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif top == "weather"
            self.happiness += 1
            per.happiness += 1
                'blah blah sun blah rain'
        else 
            'blah blah blah blah blah'
        end

    
    end
end