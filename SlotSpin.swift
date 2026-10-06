import Foundation

// welcome message / game instructions
print("Hello user, this program will spin a slot machine")
print("to win you must get 3 emojis in a row, if not you lose.")
print("Do you want to spin? Enter yes (y) to start or no (n) to quit:")

// Reads user input
let input = readLine() ?? ""

// Starts if user typed 'y' or 'yes'
if input == "y" || input == "yes" {
    var keepPlaying = true

    // Game loop for spinning the slots
    while keepPlaying {
        // Generate a random number (1-6) for each slot
        let num1 = Int.random(in: 1...6)
        let num2 = Int.random(in: 1...6)
        let num3 = Int.random(in: 1...6)

        // Use each number to pick an emoji
        var emoji1 = ""
        var emoji2 = ""
        var emoji3 = ""

        // first emoji picked
        if num1 == 1 {
            emoji1 = "🍒"
        } else if num1 == 2 {
            emoji1 = "🍋"
        } else if num1 == 3 {
            emoji1 = "🔔"
        } else if num1 == 4 {
            emoji1 = "⭐"
        } else if num1 == 5 {
            emoji1 = "🍉"
        } else {
            emoji1 = "7️⃣"
        }

        // second emoji picked
        if num2 == 1 {
            emoji2 = "🍒"
        } else if num2 == 2 {
            emoji2 = "🍋"
        } else if num2 == 3 {
            emoji2 = "🔔"
        } else if num2 == 4 {
            emoji2 = "⭐"
        } else if num2 == 5 {
            emoji2 = "🍉"
        } else {
            emoji2 = "7️⃣"
        }

        // third emoji picked
        if num3 == 1 {
            emoji3 = "🍒"
        } else if num3 == 2 {
            emoji3 = "🍋"
        } else if num3 == 3 {
            emoji3 = "🔔"
        } else if num3 == 4 {
            emoji3 = "⭐"
        } else if num3 == 5 {
            emoji3 = "🍉"
        } else {
            emoji3 = "7️⃣"
        }

        // Show the spin results
        print("spininggggggg")
        Thread.sleep(forTimeInterval: 1.0) //https://developer.apple.com/documentation/foundation/thread/sleep(fortimeinterval:)
        print("")
        print("")
        print("")
        print("")
        print("")
        Thread.sleep(forTimeInterval: 0.5) //https://developer.apple.com/documentation/foundation/thread/sleep(fortimeinterval:)
        print("Result: " + emoji1 + " " + emoji2 + " " + emoji3)

        // Same number = same emoji, so 3 matching numbers is a win
        if num1 == num2 && num2 == num3 {
            print("WOW you did it!!!! You win yay!")
        } else {
            print("Boo hoo you lost, don't be a quitter!")
        }

        // Prompt the user to spin again
        print("Do you want to spin again? (y/n):")
        let choice = readLine() ?? ""

        if choice == "n" || choice == "no" {
            keepPlaying = false
        }
    }
} else {
    print("please enter Y (yes) or N (no) next time")
}

print("Goodbye.")