require "lorem_tolkien/version"

module LoremTolkien
  def self.sentence
    SOURCE[rand(0..(SOURCE.length - 1))]
  end

  def self.sentences(n=5)
    temp = ""
    n.times do |x|
      temp += SOURCE[x % SOURCE.length] + " "
    end
    return temp
  end

  SOURCE = [
    "Do you wish me a good morning, or mean that it is a good morning whether I want it or not; or that you feel good this morning; or that it is a morning to be good on?",
    "In a hole in the ground there lived a hobbit.",
    "There is nothing like looking, if you want to find something.",
    "You certainly usually find something, if you look, but it is not always quite the something you were after.",
    "It does not do to leave a live dragon out of your calculations, if you live near him.",
    "Far over the misty mountains cold",
    "To dungeons deep and caverns old",
    "We must away ere break of day",
    "To seek the pale enchanted gold.",
    "The dwarves of yore made mighty spells,",
    "While hammers fell like ringing bells",
    "In places deep, where dark things sleep,",
    "In hollow halls beneath the fells.",
    "For ancient king and elvish lord",
    "There many a gleaming golden hoard",
    "They shaped and wrought, and light they caught",
    "To hide in gems on hilt of sword.",
    "On silver necklaces they strung",
    "The flowering stars, on crowns they hung",
    "The dragon-fire, in twisted wire",
    "They meshed the light of moon and sun.",
    "Far over the misty mountains cold",
    "To dungeons deep and caverns old",
    "We must away, ere break of day,",
    "To claim our long-forgotten gold.",
    "Goblets they carved there for themselves",
    "And harps of gold; where no man delves",
    "There lay they long, and many a song",
    "Was sung unheard by men or elves.",
    "The pines were roaring on the height,",
    "The wind was moaning in the night.",
    "The fire was red, it flaming spread;",
    "The trees like torches blazed with light.",
    "The bells were ringing in the dale",
    "And men looked up with faces pale;",
    "The dragon's ire more fierce than fire",
    "Laid low their towers and houses frail.",
    "The mountain smoked beneath the moon;",
    "The dwarves, they heard the tramp of doom.",
    "They fled their hall to dying fall",
    "Beneath his feet, beneath the moon.",
    "Far over the misty mountains grim",
    "To dungeons deep and caverns dim",
    "We must away, ere break of day,",
    "To win our harps and gold from him!",
    "Where did you go to, if I may ask?' said Thorin to Gandalf as they rode along.",
    "To look ahead,' said he.",
    "And what brought you back in the nick of time?'",
    "Looking behind,' said he.",
    "Good Morning!' said Bilbo, and he meant it.",
    "The sun was shining, and the grass was very green.",
    "But Gandalf looked at him from under long bushy eyebrows that stuck out further than the brim of his shady hat.",
    "'What do you mean?' he said.",
    "'Do you wish me a good morning, or mean that it is a good morning whether I want it or not; or that you feel good this morning; or that it is a morning to be good on?'",
    "'All of them at once,' said Bilbo.",
    "'And a very fine morning for a pipe of tobacco out of doors, into the bargain.",
    "'Good morning!' he said at last.",
    "'We don't want any adventures here, thank you!",
    "You might try over The Hill or across The Water.'",
    "By this he meant that the conversation was at an end.",
    "'What a lot of things you do use Good morning for!' said Gandalf.",
    "'Now you mean that you want to get rid of me, and that it won't be good till I move off.",
    "Where there's life there's hope.",
    "You have nice manners for a thief and a liar,' said the dragon.",
    "I am looking for someone to share in an adventure that I am arranging, and it's very difficult to find anyone.'",
    "So comes snow after fire, and even dragons have their endings."
  ]
end
