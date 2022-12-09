# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

#print object @candidates
# pp @candidates

puts qualified_candidates(@candidates)

#1. Find method works
# puts find(5)

#2 Experienced 
#puts experienced? (@candidates[1])

#3 Complex check it afterwards
# puts qualified_candidates(@candidates)

#4 Check age
# puts age_over_17? (@candidates[0])

#5 checked applied days
# puts applied_within_15_days? (@candidates[0])

#6 check language
# puts know_ruby_or_python? (@candidates[0])

#7 check github points
# puts has_over_100_github_points? (@candidates[0])

#8 check ordered by qualifactions
# puts ordered_by_qualifications(@candidates) 

