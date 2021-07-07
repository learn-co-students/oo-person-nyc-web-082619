class Person
    attr_accessor :bank_account
    attr_writer :happiness, :hygiene
    attr_reader :name 
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happy?
        @happiness > 7
    end

    def hygiene
        hygiene_level
        @hygiene
    end

    def happiness
        happiness_level
        @happiness
    end

    def clean?
        @hygiene > 7
    end

    def hygiene_level
        if @hygiene > 10
            @hygiene = 10
        end
        if @hygiene < 0
            @hygiene = 0
        end
    end

    def happiness_level
        if @happiness > 10
            @happiness = 10
        end
        if @happiness < 0
            @happiness = 0
        end
    end

    def get_paid(salary_amonut)
        self.bank_account += salary_amonut
        'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        '♪ another one bites the dust ♫'
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness -= 2
            friend.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness += 1
            friend.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end

    
    end

end