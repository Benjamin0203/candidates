# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # Your code Here
  @candidates.detect {|candidate| candidate[:id] == id ? candidate : nil}
end

def experienced?(candidate)
  # Your code Here
  is_experienced = candidate[:years_of_experience] >= 2
  return is_experienced
end

def qualified_candidates(candidates)
  # Your code Here
  candidates.select  do |candidate|   
    (experienced? (candidate)) &&
    (has_over_100_github_points? (candidate)) &&
    (know_ruby_or_python? (candidate)) &&
    (applied_within_15_days? (candidate)) &&
    (age_over_17? (candidate))
  end
end

# More methods will go below

def has_over_100_github_points?(candidate)
  candidate[:github_points] >= 100
end  

def know_ruby_or_python?(candidate)
  candidate[:languages].include?('Ruby' || 'Python')
end  

def applied_within_15_days?(candidate)
  #is date_applied earlier(>) than 15 days? 
  # the earlier one is on the left side
  candidate[:date_applied] > 15.days.ago.to_date
end

def age_over_17?(candidate)
  candidate[:age] >= 18
end


def ordered_by_qualifications(candidates)
  candidates.sort_by {|candidate| [-candidate[:years_of_experience], -candidate[:github_points]]}
end

#or use do method
def ordered_by_qualifications(candidates)
  Your code Here
  candidates.sort_by do |candidate|
    [-candidate[:years_of_experience], -candidate[:github_points]]
  end
end