# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    if candidate[:id] == id
      return candidate
    else
      return nil
    end
  end
  
  def experienced?(candidate)
    if candidate[:years_of_experience] >= 2
      return true
    else 
      return false
    end
  end
  
  def qualified_candidates(candidates)
    # Your code Here
    qualified_candidates_arr = candidates.select do |candidate| 
      experienced?(candidate) && candidate[:github_points] >= 100 && (candidate[:languages].include?("Python") || candidate[:languages].include?("Ruby")) && candidate[:date_applied] > 15.days.ago.to_date && candidate[:age] > 17
    end 
  end
  
  # More methods will go below
  
  def ordered_by_qualifications(candidates)
    candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]]}
  end