nick = User.create(username: "Nick", password: "test", image_url: "http://donatered-asset.s3.amazonaws.com/assets/default/default_user-884fcb1a70325256218e78500533affb.jpg")
robert = User.create(username: "Robert", password: "test", image_url: "http://donatered-asset.s3.amazonaws.com/assets/default/default_user-884fcb1a70325256218e78500533affb.jpg")
kyle = User.create(username: "Kyle", password: "test", image_url: "http://donatered-asset.s3.amazonaws.com/assets/default/default_user-884fcb1a70325256218e78500533affb.jpg")

first_challenge = Challenge.create(
  name: "Blogging in Style",
  description: "Who can wear the most formal outfit to blogs?",
  public: true,
  team_names: "The Avengers/The Incredibles"
)

user_challenge_one = UserChallenge.new()

user_challenge_one.role = "1"
user_challenge_one.user = nick
user_challenge_one.challenge_id = first_challenge.id

user_challenge_one.save

user_challenge_two = UserChallenge.new()

user_challenge_two.role = "2"
user_challenge_two.user = robert
user_challenge_two.challenge_id = first_challenge.id

user_challenge_two.save

user_challenge_three = UserChallenge.new()

user_challenge_three.role = "3"
user_challenge_three.user = kyle
user_challenge_three.challenge_id = first_challenge.id

user_challenge_three.save

first_challenge.save
