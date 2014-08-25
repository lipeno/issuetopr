# issue_name = "A BUYER should see who sent the quote, A SELLER should see who the quote was sent to #35"
issue_name = ARGV[0]

issue_name = issue_name.gsub(/[^\p{Alnum}\p{Space}#]/, '')  # remove diacritics
name, number = issue_name.split(/\s#(\d+)/)
name = name.downcase.tr(" ", "_")
puts number + "-" + name