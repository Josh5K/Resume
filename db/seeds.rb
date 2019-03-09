# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

person = Self.create!(name: "Josh King", address: "55 Nassua Street North", postal_code:"R3L 2G8", phone_number: 22222222, email: "email@example.com", city: "Winnipeg", image: "https://scontent.fyyc2-1.fna.fbcdn.net/v/t1.15752-9/53311839_506822229722296_6304576828736536576_n.jpg?_nc_cat=107&_nc_ht=scontent.fyyc2-1.fna&oh=9ad4dd522a569cf8eabe290083802d96&oe=5CE00CE1", background: "http://nguonhangthoitrang.net/wp-content/uploads/modern-resume-backgrounds-good-free-professional-background-for.jpg")

Link.create!(key: "Github", source: "https://github.com/Josh5K/", self_id: person.id)
Link.create!(key: "Linkedin", source: "https://www.linkedin.com/in/josh-king-51757a130/", self_id: person.id)
Link.create!(key: "Portfolio", source: "/resume/josh+king/portfolio", self_id: person.id)

job1 = Job.create!(start_date: Date.today, end_date: Date.today, company: "Northfield IT", title: "Jr System Admin", address: "161 Portage Avenue East", image: "https://pbs.twimg.com/profile_images/765332098039152640/KpT2EY4v_400x400.jpg", self_id: person.id)
job2 = Job.create!(start_date: Date.today, end_date: Date.today, company: "Creators Club", title: "Web Developer", address: "https://creatorsclub.net/", image: "https://scontent.fyyc2-1.fna.fbcdn.net/v/t1.15752-9/53934077_2313256722286000_9194223459616423936_n.png?_nc_cat=100&_nc_ht=scontent.fyyc2-1.fna&oh=5e5268c7e6bbfe062076d369dfac778f&oe=5D2341C0", self_id: person.id)

JobDescription.create!(desc: "Provided infrastructure support for live events broadcasted to millions of viewers.", job_id: job1.id)
JobDescription.create!(desc: "Responsible for front line monitoring of large scale dynamic environments using VMware, AWS, and Google Compute.", job_id: job1.id)
JobDescription.create!(desc: "Developed automation practices with Chef, Jenkins, Nagios and, Ruby.", job_id: job1.id)

JobDescription.create!(desc: "Created and maintained infrastructure to run various types of applications", job_id: job2.id)
JobDescription.create!(desc: "Developing overhaul using technologies like Rails, MySQL and, React.", job_id: job2.id)
JobDescription.create!(desc: "Maintained live site developed in wordpress.", job_id: job2.id)

education = Education.create!(start_date: Date.today, end_date: Date.today, self_id: person.id, school: "Red River College", address: "161 Princess Street", certificate: "Diploma", program: "B.I.T Program", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Red_River_College_logo.png/270px-Red_River_College_logo.png")

EducationDescription.create!(desc: "Followed my passion by enrolling in development focuses classes.", education_id: education.id)
EducationDescription.create!(desc: "Excelled in web app development.", education_id: education.id)
EducationDescription.create!(desc: "Pursued new technologies outside the classroom.", education_id: education.id)

Project.create!(image: "https://cdn4.vectorstock.com/i/1000x1000/58/88/back-to-school-color-pencils-background-vector-555888.jpg", title: "Dynamic Resume", description: "I went out to create a more modern version of today's resume while also providing a central hub to show off my past and current projects. The resume you are currently visiting is 100% dynamic and can provide a template / theme unique to each person after filling out a few forms. I like to provide credentials to potential employers to allow them create their own. Click `See for yourself` to give it a shot!", link: "/admin", self_id: person.id)
Project.create!(image: "http://www.gayatrisoft.co/wp-content/uploads/2017/09/made-this-Web-Developer-Wallpaper-1920x1080-fc09.deviantart.net-....jpg", title: "Creators Club", description: "Creators Club is an alternative to Teesprings aimed towards Content Creators and Entertainers. I have been maintaining and supporting https://creatorsclub.net for the last few years and am currently in the process of revamping the site with technologies like React, Rails API and MySQL. Progress towards those projects can be found here - https://github.com/Josh5K/creatorsclub-site and https://github.com/Josh5K/creatorsclub-api. If you would like to check out the live site click the button below.", link: "https://creatorsclub.net	", self_id: person.id)
Project.create!(image: "https://www.aquafps.com/img/bground.jpeg", title: "AquaFPS Portal Page", description: "I created and maintain a website for a client of Creators Club AquaFPS. The site serves as a central hub for their content.", link: "https://aquafps.com", self_id: person.id)
