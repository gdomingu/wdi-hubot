# Description:
#   Select a random student from a pre-defined list.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot random student <list> -- pick a random student from the given list.
#
# Author:
#   sumeetjain

module.exports = (robot) ->

  robot.respond /random student (.*)/i, (msg)->
    list = msg.match[1].trim()
    if !lists[list]?
      msg.send("That's not a valid list.")
    else if list.length == 0
      msg.send("Provide a list.")
    else
      msg.send(random_student(list))

random_student = (list) ->
  class_list = lists[list]
  random_index = (Math.random() * class_list.length) >> 0
  class_list[random_index]

lists =
  wdi1: ["That class is over; nobody cares."]
  wdi2: ["Franky", "Isaac", "Elizabeth", "Neil", "Zara", "YKat", "Eric", "Alex", "Claire", "Adam", "Tom", "Amy", "Baylee", "Christina", "Patsy", "Jason", "Gabe", "Harrison"]
  wdi3: ["Send Sumeet an array of WDI3's students' names."]