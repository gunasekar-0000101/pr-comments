require 'octokit'

# !!! DO NOT EVER USE HARD-CODED VALUES IN A REAL APP !!!
# Instead, set and test environment variables, like below
client = Octokit::Client.new :access_token => ENV['MY_PERSONAL_TOKEN']
lookingfor = "2022-12-22 build now"
client.issue_comments("gunasekar-0000101/pr-comments", 2).each do |comment|
  username = comment[:user][:login]
  post_date = comment[:created_at]
  content = comment[:body]
  #puts "#{username} made a comment on #{post_date}. It says:\n'#{content}'\n"
  puts content.include?(lookingfor)?
  "#{lookingfor} is present in the comment" :
  "#{lookingfor} is not present in the comment"
end
