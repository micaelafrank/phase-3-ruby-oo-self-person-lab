# your code goes here
# Get paid/receive payments
# Take a bath
# Call a friend
# Start a conversation
# State if they are happy and/or clean

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = if num < 0 
                0
            elsif num > 10 
                10
            else 
                num
            end
    end

    def hygiene=(num)
        @hygiene = if num < 0
            0
        elsif num > 10
            10
        else
            num
        end
    end

    def clean? 
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def get_paid(num)
        self.bank_account += num
        "all about the benjamins" 
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend_called="friend")
        self.happiness += 3
        friend_called.happiness += 3
        "Hi #{friend_called.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end

person = Person.new("Blake")
person.name
person.bank_account
person.bank_account = 30
person.happiness
person.hygiene
person.clean?
