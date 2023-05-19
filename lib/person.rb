# your code goes here
class Person

    attr_reader :name

    def initialize(name)
        @name = name
        @balance = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(newamount = 25)
       @balance = newamount
    end

    def bank_account
        @balance
     end

     def happiness=(happy = 8)
        if happy < 0 
            happy = 0
        elsif happy > 10
            happy = 10
        else happy
        end
            
        @happiness = happy
        
     end

     def happiness
        @happiness
     end

     def hygiene=(hygiene = 8)
        if hygiene < 0 
            hygiene = 0
        elsif hygiene > 10
            hygiene = 10
        else hygiene
        end
            
        @hygiene = hygiene
        
     end

     def hygiene
        @hygiene
     end

     def happy?
        @happiness > 7
      end

      def clean?
        @hygiene > 7
      end
      

      def get_paid(amount)
        @balance += amount
        "all about the benjamins" 
      end
      
      def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
      end
      
      
      def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
      end

      def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
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