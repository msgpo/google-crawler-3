require_relative '../common_functions.rb'

ARGF.each do |line|
  line = line.strip.chomp.gsub(/"/, '')

  if is_uri?(line)
    p "#{URI(line).host}\t1"

    # words = line.split
    # for word in words
      # write the results to STDOUT (standard output);
      # what we output here will be the input for the
      # Reduce step, i.e. the input for reducer.py
      
      # tab-delimited; the trivial word count is 1
      # p ("#{word}\t1")
    # end
  end
end
