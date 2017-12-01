User.create(username: "Nick", password: "abc")
User.create(username: "Robert", password: "abc")
User.create(username: "Ramy", password: "abc")

Challenge.create(
  name: "Blogging in Style",
  description: "Who can wear the most formal outfit to blogs?",
  public: true,
  team_names: "The Avengers/The Incredibles"
)

UserChallenge.create(
  user_id: 1,
  challenge_id: 1,
  role: "1"
)

UserChallenge.create(
  user_id: 2,
  challenge_id: 1,
  role: "2"
)

UserChallenge.create(
  user_id: 3,
  challenge_id: 1,
  role: "3"
)
