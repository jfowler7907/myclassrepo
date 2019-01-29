# Incorporate the random library
import random

# Print title
print("Let's play Rock Paper Scissors!")

# Specify the three options
options=["rock","paper","scissors"]

# Computer selection
Computer_choice = random.choice(options)

# User selection
user_choice = input("Make your Choice: rock, paper, scissors? ")

# Run conditionals
if (user_choice == "rock" and Computer_choice == "paper"):
    print("You chose rock. The computer chose paper.")
    print("Sorry. You lose.")

elif(user_choice == "rock" and Computer_choice == "scissors"):
    print("You chose rock. The computer chose scissors.")
    print("Yay! You won.")

elif(user_choice == "rock" and Computer_choice == "rock"):
    print("you chose rock. The computer chose rock.")
    print("A smashing tie!") 

elif (user_choice == "paper" and Computer_choice == "paper"):
    print("You chose paper. The computer chose paper.")
    print("A smashing tie.")

elif (user_choice == "paper" and Computer_choice == "scissors"):
    print("You chose paper. The computer chose scissors.")
    print("Sorry. You lose.")

elif (user_choice == "paper" and Computer_choice == "rock"):
    print("You chose paper. The computer chose rock.")
    print("Yay! You won.")

elif (user_choice == "scissors" and Computer_choice == "paper"):
    print("You chose scissors. The computer chose paper.")
    print("Yay! You won.")

elif (user_choice == "scissors" and Computer_choice == "rock"):
    print("You chose scissors. The computer chose rock.")
    print("Sorry. You lose.")

elif (user_choice == "scissors" and Computer_choice == "scissors"):
    print("You chose scissors. The computer chose scissors.")
    print("A smashing tie.")

else:
    print("I don't understand that")

