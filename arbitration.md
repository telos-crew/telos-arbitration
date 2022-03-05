1.) setconfig(max_elected_arbs, election_duration, election_start, arbitrator_term_length, fees) (authority eosio)

2.) regarb

3.) 


initelection() *uses trail*
- Grabs _config.current_ballot_id from trail ballots table
- Calls startnewelection(available_seats: number)
* Will need valid ballot_name for telos.decide, a number will not suffice

startnewelection(available_seats) *uses trail*
- Sets beginning and end time
- Creates ballot in trails
- Sets seats (available_seats) for ballot (in trail)
- We will have to separate the draft timeline from start date

regarb(nominee, credentials_link)
- Action by nominee
- Adds nominee to nominees table

unregnominee (name) *uses trail*
- Remove nominee from leaderboard / election

candaddlead(nominee, credentials_link) *uses trail*
- Adds candidate to trail ballot (draft)
- Nominee must already have done regarb action

candrmvlead(nominee) *uses trail*
- Removes candidate from leaderboard / election

endelection(nominee) *uses trail*
- Sorts results by vote(s)
- Checks for ties
- Adds winning nominees as arbitrators
- Closes ballot in trail
- Creates runoff election, I think?
  

Need to add "startvoting" action to start the voting on the leaderboard once nominees have been added
Need to change `current_ballot_id` to a string