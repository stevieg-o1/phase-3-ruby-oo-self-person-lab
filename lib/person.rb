# your code goes here
class Person
    attr_reader :name, :happiness
    attr_accessor :bank_account
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def hygiene
        @hygiene
    end
    def happiness= num
        num < 0 ? @happiness = 0 : @happiness = num
        num > 10  && @happiness = 10
    end
    def happy?
        self.happiness > 7
    end
    def clean?
        self.hygiene > 7
    end
    def hygiene= num
        num > 10  ? @hygiene = 10 : @hygiene = num
        num < 0 && @hygiene = 0
    end
    def get_paid num
        @bank_account += num
        "all about the benjamins"
    end
    def take_bath
        self.hygiene= @hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end
    def work_out
        self.hygiene= @hygiene -= 3
        self.happiness = @happiness +=2
        '♪ another one bites the dust ♫'
    end
    def call_friend friend
        self.happiness= @happiness +=3
        friend.happiness= friend.happiness + 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end
    
    def start_conversation (friend, topic)
        if(topic == "politics") 
            self.happiness= @happiness -=2
            friend.happiness= friend.happiness - 2
            'blah blah partisan blah lobbyist'
        elsif(topic == "weather")
            self.happiness= @happiness +=1
            friend.happiness= friend.happiness + 1
            'blah blah sun blah rain'
        else
            "blah blah blah blah blah"
        end
    end
end
felix = Person.new("Felix")
person =  Person.new("That")
felix.happiness = 9
person.happiness=9
person.call_friend(felix)
puts person.happiness
puts felix.happiness
