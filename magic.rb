@magic =
  [
    "No.",
    "Yes.",
    "Maybe.",
    "Sure, why not?",
    "Probably...who really knows?",
    "The answer is 42.",
    "Very.",
    "It is certain.",
    "It is decidedly so.",
    "Without a doubt.",
    "Yes definitely.",
    "You may rely on it.",
    "As I see it, yes.",
    "Most likely.",
    "Outlook good.",
    "Signs point to yes.",
    "Reply hazy try again.",
    "Ask again later.",
    "Better not tell you now.",
    "Cannot predict now.",
    "Concentrate and ask again.",
    "Don't count on it.",
    "My reply is no.",
    "My sources say no.",
    "Outlook not so good.",
    "Very doubtful."
  ]

def output_answer
  puts @magic.sample
end

def message
  puts """
  -- MAGIC EIGHT BALL --
  Ask me a question!
  Q: Quit"""
  puts
  print "> "
end

def user_input
  question = gets.strip.downcase
  if question == 'add'
    puts 'Enter a new answer.'
    print '> '
    @new_answer = gets.strip
    @magic << @new_answer
  elsif question == 'all'
    @magic.each do |all|
      puts all
    end
  elsif question == 'q'
    puts "Peace and Blessings!"
    exit
  else
    output_answer
  end
  question
end

while(true)
  message
  user_input
end
