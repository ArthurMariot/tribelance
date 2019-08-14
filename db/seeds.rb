# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seeds for users
puts 'Cleaning database...'
User.destroy_all

puts 'Creating users...'

kim_mullaney = User.create!(email: "kim.mullaney@zapier.co", password: "kimmullaney", first_name: "Kim", last_name: "Mullaney")
keisha_washington = User.create!(email: "keisha.ashington@trello.co", password: "keishawashington", first_name: "Keisha", last_name: "Ashington")
lynne_oldham = User.create!(email: "lynne_oldham@zoom.co", password: "lynneoldham", first_name: "Lynne", last_name: "oldham")
christine_tran = User.create!(email: "christine_tran@mozilla.co", password: "christinetran", first_name: "Christine", last_name: "Tran")

puts 'Finished users!'
puts User.all

# Seeds for missions
puts 'Cleaning database...'
Mission.destroy_all

puts 'Creating missions...'

missions_attributes = [
  {
    company: "Zapier",
    logo: "https://www.stickpng.com/assets/images/5842fb7ba6515b1e0ad75b33.png",
    title: "Senior Backend Engineer",
    description: "Your work could be on our workflow engine, the editor that our customers use to build their Zaps, our platform where partners build their integrations, or any number of areas in between. You'll have a primary focus on backend development in Python, though may need to jump into the frontend from time to time. Zapier is built on Django, React, node.js and AWS. We use modern tools, which means you’ll have the opportunity to work with software like Memcached, RabbitMQ, Zookeeper, Docker, Redis, Jenkins, Puppet, Ansible and much more. You also have experience building SDK's.",
    headquarter: "Seattle",
    num_of_days:  150,
    daily_price: 600,
    user: kim_mullaney,
  },
  {
    company: "Zapier",
    logo: "https://www.stickpng.com/assets/images/5842fb7ba6515b1e0ad75b33.png",
    title: "Data Engineer",
    description: "You’ve used written complex SQL queries that join across data from multiple systems, matching them up even when there was not a straightforward way to join the tables. You've designed tables with an eye towards ease of use and high performance. You've documented schemas and created data dictionaries.",
    headquarter: "Seattle",
    num_of_days: 60,
    daily_price: 700,
    user: kim_mullaney,
  },
  {
    company: "Trello",
    logo: "https://d2k1ftgv7pobq7.cloudfront.net/meta/u/res/images/brand-assets/Logos/0099ec3754bf473d2bbf317204ab6fea/trello-logo-blue.png",
    title: "Support Engineer EMEA",
    description: "We don’t want people to just use Trello, we want them to love it. We’re looking to add a person to our support team who is friendly, helpful, and already loves Trello. Your top priority will be to transform our users into super-fans.",
    headquarter: "Amsterdam",
    num_of_days: 30,
    daily_price: 400,
    user: keisha_washington,
  },
  {
    company: "Trello",
    logo: "https://d2k1ftgv7pobq7.cloudfront.net/meta/u/res/images/brand-assets/Logos/0099ec3754bf473d2bbf317204ab6fea/trello-logo-blue.png",
    title: "Data Scientist",
    description: "As the ideal data scientist, you are someone who can do a deep technical dive and communicate effectively with others. You love wrangling messy data into an elegant solution, and helping others understand the power of their data. This role is a chance to have a huge impact on how millions of users collaborate.",
    headquarter: "New York",
    num_of_days: 90,
    daily_price: 700,
    user: keisha_washington,
  },
  {
    company: "Zoom",
    logo: "https://www.utc.edu/walker-center-teaching-learning/images/zoom-logo.png",
    title: "Video Algorithm Engineer",
    description: "We are seeking a passionate Video Algorithm Engineer to research and evaluate algorithms to enhance real-time video quality and develop some special effects on Zoom video product. You will join the Video Engineering team as a Video Algorithm Engineer to use traditional and deep learning method to research and develop video processing algorithms for Zoom's products!",
    headquarter: "San Jose",
    num_of_days: 130,
    daily_price: 420,
    user: lynne_oldham,
  },
  {
    company: "Mozilla",
    logo: "https://upload.wikimedia.org/wikipedia/commons/d/d2/Firefox_Logo%2C_2017.png",
    title: "UX Designer",
    description: "Mozilla is hiring a Senior UX Designer for our Emerging Technologies team. Emerging Technologies is Mozilla’s early Research & Development organization focused on developer tools, knowledge and community, including MDN web docs, voice assistants & speech technologies, mixed reality, and new explorations. We're looking for a passionate, talented, and experienced Sr UX Designer to help explore, identify and shape novel opportunities for existing and future products; support existing R&D endeavors; and help facilitate a range of activities to enrich Mozilla’s user-centric and design-driven culture.",
    headquarter: "Portland",
    num_of_days: 130,
    daily_price: 420,
    user: christine_tran,
  },
  {
    company: "Mozilla",
    logo: "https://upload.wikimedia.org/wikipedia/commons/d/d2/Firefox_Logo%2C_2017.png",
    title: "Content Marketing Manager",
    description: "The Firefox Content Manager will collaborate with product marketing and a number of cross functional marketing teams to develop engaging content that sets Firefox apart from other tech brands. This creator will glean key insights from popular culture and align them with Firefox’s brand personality, commitment to people’s privacy and product offerings and develop irresistible videos, blog posts, and other content programs. Based in the San Francisco Bay Area or Portland, this role reports to the Head of Social and Brand Experiences.",
    headquarter: "Portland",
    num_of_days: 60,
    daily_price: 600,
    user: christine_tran,
  },
  {
    company: "Shopify",
    logo: "https://upload.wikimedia.org/wikipedia/fr/thumb/e/e7/Shopify_logo.svg/1280px-Shopify_logo.svg.png",
    title: "Business Insights Analyst",
    description: "Owning the delivery of business insights across the organization, making recommendations and implementing improvements to current business practices. Exploring merchant and product data to uncover key insights to drive decisions on pricing, positioning, and planning decisions.",
    headquarter: "Waterloo",
    num_of_days: 20,
    daily_price: 550,
    user: christine_tran,
  },
  {
    company: "Shopify",
    logo: "https://upload.wikimedia.org/wikipedia/fr/thumb/e/e7/Shopify_logo.svg/1280px-Shopify_logo.svg.png",
    title: "French Content Marketer",
    description: "We’re looking for a highly motivated French speaking content marketer who is passionate about entrepreneurship, ecommerce, and digital marketing. Your task will be to localize and create compelling content that helps our French speaking merchants build, launch, and grow successful businesses with Oberlo and Shopify.",
    headquarter: "Berlin",
    num_of_days: 60,
    daily_price: 600,
    user: christine_tran,
  },
  {
    company: "Heroku",
    logo: "https://www.stickpng.com/assets/images/58480873cef1014c0b5e48ea.png",
    title: "Site Reliability Engineer",
    description: "We’re looking for people who are interested in complex distributed systems- how they work, how they can work better, how we even know if they’re working at all. We need someone who's spent time working as a developer (writing code with a team to fix operational issues or build features), but who has also spent time on operational concerns (investigating production incidents, creating or updating monitoring and alerting plans for production systems, or investigating performance issues, for instance).",
    headquarter: "San Francisco ",
    num_of_days: 35,
    daily_price: 380,
    user: christine_tran,
  },
  {
    company: "Heroku",
    logo: "https://www.stickpng.com/assets/images/58480873cef1014c0b5e48ea.png",
    title: "Cloud Platform Support",
    description: "Heroku takes an engineering-driven approach to support. Our team of support engineers intimately understand cloud application architecture and common issues. If you're a software engineer passionate about web apps, related open source projects, and problem solving, we'd love to hear from you.",
    headquarter: "San Francisco ",
    num_of_days: 25,
    daily_price: 300,
    user: christine_tran,
  },
    {
    company: "Heroku",
    logo: "https://www.stickpng.com/assets/images/58480873cef1014c0b5e48ea.png",
    title: "Cloud Platform Support",
    description: "Heroku takes an engineering-driven approach to support. Our team of support engineers intimately understand cloud application architecture and common issues. If you're a software engineer passionate about web apps, related open source projects, and problem solving, we'd love to hear from you.",
    headquarter: "San Francisco ",
    num_of_days: 25,
    daily_price: 300,
    user: christine_tran,
  },
    {
    company: "Heroku",
    logo: "https://www.stickpng.com/assets/images/58480873cef1014c0b5e48ea.png",
    title: "Cloud Platform Support",
    description: "Heroku takes an engineering-driven approach to support. Our team of support engineers intimately understand cloud application architecture and common issues. If you're a software engineer passionate about web apps, related open source projects, and problem solving, we'd love to hear from you.",
    headquarter: "San Francisco ",
    num_of_days: 25,
    daily_price: 300,
    user: christine_tran,
  },
    {
    company: "Heroku",
    logo: "https://www.stickpng.com/assets/images/58480873cef1014c0b5e48ea.png",
    title: "Cloud Platform Support",
    description: "Heroku takes an engineering-driven approach to support. Our team of support engineers intimately understand cloud application architecture and common issues. If you're a software engineer passionate about web apps, related open source projects, and problem solving, we'd love to hear from you.",
    headquarter: "San Francisco ",
    num_of_days: 25,
    daily_price: 300,
    user: christine_tran,
  },
    {
    company: "Heroku",
    logo: "https://www.stickpng.com/assets/images/58480873cef1014c0b5e48ea.png",
    title: "Cloud Platform Support",
    description: "Heroku takes an engineering-driven approach to support. Our team of support engineers intimately understand cloud application architecture and common issues. If you're a software engineer passionate about web apps, related open source projects, and problem solving, we'd love to hear from you.",
    headquarter: "San Francisco ",
    num_of_days: 25,
    daily_price: 300,
    user: christine_tran,
  },
    {
    company: "Heroku",
    logo: "https://www.stickpng.com/assets/images/58480873cef1014c0b5e48ea.png",
    title: "Cloud Platform Support",
    description: "Heroku takes an engineering-driven approach to support. Our team of support engineers intimately understand cloud application architecture and common issues. If you're a software engineer passionate about web apps, related open source projects, and problem solving, we'd love to hear from you.",
    headquarter: "San Francisco ",
    num_of_days: 25,
    daily_price: 300,
    user: christine_tran,
  },
    {
    company: "Heroku",
    logo: "https://www.stickpng.com/assets/images/58480873cef1014c0b5e48ea.png",
    title: "Cloud Platform Support",
    description: "Heroku takes an engineering-driven approach to support. Our team of support engineers intimately understand cloud application architecture and common issues. If you're a software engineer passionate about web apps, related open source projects, and problem solving, we'd love to hear from you.",
    headquarter: "San Francisco ",
    num_of_days: 25,
    daily_price: 300,
    user: christine_tran,
  },
    {
    company: "Heroku",
    logo: "https://www.stickpng.com/assets/images/58480873cef1014c0b5e48ea.png",
    title: "Cloud Platform Support",
    description: "Heroku takes an engineering-driven approach to support. Our team of support engineers intimately understand cloud application architecture and common issues. If you're a software engineer passionate about web apps, related open source projects, and problem solving, we'd love to hear from you.",
    headquarter: "San Francisco ",
    num_of_days: 25,
    daily_price: 300,
    user: christine_tran,
  },
    {
    company: "Heroku",
    logo: "https://www.stickpng.com/assets/images/58480873cef1014c0b5e48ea.png",
    title: "Cloud Platform Support",
    description: "Heroku takes an engineering-driven approach to support. Our team of support engineers intimately understand cloud application architecture and common issues. If you're a software engineer passionate about web apps, related open source projects, and problem solving, we'd love to hear from you.",
    headquarter: "San Francisco ",
    num_of_days: 25,
    daily_price: 300,
    user: christine_tran,
  },
]
Mission.create!(missions_attributes)


puts 'Finished missions!'
