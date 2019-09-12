class RunQuiz 

    ####
    # Attribute accessor 
    # Defining question has a prompt (ask the user) and an answer
    ####
    attr_accessor :prompt, :answer

    ####
    # initialize the object
    ####
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer

    ####
    # variables to temporarity store questions and answers
    #####
    q1 = "Who hosted Friday night's show?\n(1)Holly\n(2)Robin\n(3)Mike\n(4)Yasmin"
    q2 = "What did Yasmin cook on Tuesday afternoon's show?\n(1)MacnCheese\n(2)ChickenRoast\n(3)Pasta\n(4)Curry"
    q3 = "Who was the special guest on Friday night?\n(1)Robin\n(2)Ron\n(3)Bob\n(4)Brad"
    q4 = "What was the price draw for last week?\n(1)Car\n(2)Microwave\n(3)Cash\n(4)Holiday"

    ####
    # array of questions
    ####
    questions = [
        Question.new(q1, "1"),
        Question.new(q2, "3"),
        Question.new(q3, "4"),
        Question.new(q2, "2")
    ]

        ####
        # Method to test which takes in one param:questions
        ####
        def test(questions)
            # Loop to ask questions from the person
            # Store answers in answer var
            answer = ""
            score = 0
            for question in questions 
                puts question.prompt 
                # get user input and store in var
                # using ruby method
                answer = gets.chomp()  
                if answer == question.answer #.answer is attribute from question class
                    score += 1
                end 
            end 
            puts ("Your score is " + score.to_s + "out of" + questions.length().to_s)
        end 
        ## Call the test method
        test(questions)

    end 

end 
