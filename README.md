#Technical Interview with Stephen Hawking
<http://interview-with-stephen.herokuapp.com/>


Contributors:
- [Jason Benn](https://github.com/JasonBenn)
- [Patrick Moody](https://github.com/patmood)
- [Anna-Marie Panlilio](https://github.com/codesliced)
- [Earl Wagner](https://github.com/innovateworld)


##About

This web app was built in eight hours during the inaugural DevBootcamp Chicago intra-cohort Hackathon.


##Development

To run this app you'll need:

Ruby 1.9.3 

Postgresql 9.2+



##Install

- Fork the repo and clone the files onto your local machine:

      $ git clone https://github.com/JasonBenn/interview_with_steve_hawking.git

- Navigate to the application directory in terminal and run **bundle install** to gather the required gems:

      $ bundle install

- You'll likely need to edit those settings for your local machine. Now you need to create and set up the database:

      $ rake db:setup.

      $ rake db:seed

      $ rake scrape_questions

      $ rake update_audio_path

- Launch the application server:

      $ rails server

- Open a broswer and navigate to localhost:3000

- Practice interviewing!
