# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seeds for users
puts 'Cleaning database...'
Candidature.destroy_all
puts 'Cleaning database...'
Mission.destroy_all
puts 'Cleaning database...'
User.destroy_all

puts 'Creating users...'


louis_uguen = User.create!(email: "louis@wagon.org", password: "password", first_name: "Louis", last_name: "Uguen", remote_avatar_url: "https://dwj199mwkel52.cloudfront.net/assets/lewagon-logo-square-fe76916e1b923ade71e253ae6dc031d936e5e8eebac4e26b0fbac650ea6ee360.png", linkedinurl:"https://www.linkedin.com/in/louisuguen")
kim_mullaney = User.create!(email: "kim.mullaney@zapier.co", password: "password", first_name: "Kim", last_name: "Mullaney", remote_avatar_url:"https://thispersondoesnotexist.com/image", linkedinurl:"https://www.linkedin.com/in/kim-mullaney-69306b6")
keisha_washington = User.create!(email: "keisha.ashington@trello.co", password: "password", first_name: "Keisha", last_name: "Ashington", remote_avatar_url:"https://thispersondoesnotexist.com/image", linkedinurl:"https://www.linkedin.com/in/keishap31")
lynne_oldham = User.create!(email: "lynne_oldham@zoom.co", password: "password", first_name: "Lynne", last_name: "oldham", remote_avatar_url:"https://www.thispersondoesnotexist.com/image", linkedinurl:"https://www.linkedin.com/in/lynneoldham")
christine_tran = User.create!(email: "christine_tran@mozilla.co", password: "password", first_name: "Christine", last_name: "Tran", remote_avatar_url:"https://www.thispersondoesnotexist.com/image", linkedinurl:"https://www.linkedin.com/in/christinentran")
sid_sijbrandij = User.create!(email: "sid_sijbrandij@gitlab.co", password: "password", first_name: "Sid", last_name: "Sijbrandij", remote_avatar_url:"https://www.thispersondoesnotexist.com/image", linkedinurl:"https://www.linkedin.com/in/kerrytrainor")
kerry_trainor = User.create!(email: "skerry_trainor@soundcloud.co", password: "password", first_name: "Skerry", last_name: "Trainor", remote_avatar_url:"https://www.thispersondoesnotexist.com/image", linkedinurl:"https://www.linkedin.com/in/sijbrandij")
laetitia_wamanisa = User.create!(email: "laetitia@backmarket.com", password: "password", first_name: "Laetitia", last_name: "Wamasia", remote_avatar_url:"https://ibb.co/njkWrV1", linkedinurl:"https://fr.linkedin.com/in/laetitia-wamanisa-82783325")
arthur = User.create!(email: "arthur@slack.com", password: "password", first_name: "Arthur", last_name: "Mariot", remote_avatar_url:"https://i.ibb.co/6FsdYpt/Screenshot-2019-08-16-at-15-56-31.png", linkedinurl:"https://fr.linkedin.com/in/arthurmariot")


louis = User.create!(email: "louis@example.com", password: "password", first_name: "Louis", last_name: "Uguen", remote_avatar_url:"https://ibb.co/z5yQyBj", linkedinurl:"https://fr.linkedin.com/in/louisuguen")
ramzi = User.create!(email: "ramzi@example.com", password: "password", first_name: "Ramzi", last_name: "Saidani", remote_avatar_url:"https://www.thispersondoesnotexist.com/image", linkedinurl:"https://fr.linkedin.com/in/ramzisaidani")
edouard = User.create!(email: "edouard@example.com", password: "password", first_name: "Edouard", last_name: "Uguen", remote_avatar_url:"https://www.thispersondoesnotexist.com/image", linkedinurl:"https://fr.linkedin.com/in/edouarduguen")
julien = User.create!(email: "julien@example.com", password: "password", first_name: "Julien", last_name: "Legay", remote_avatar_url:"https://www.thispersondoesnotexist.com/image", linkedinurl:"https://www.linkedin.com/in/julien-legay-a116ba181")
theau = User.create!(email: "theau@example.com", password: "password", first_name: "Theau", last_name: "Bruno", remote_avatar_url:"https://www.thispersondoesnotexist.com/image", linkedinurl:"https://www.linkedin.com/in/13974")
bertrand = User.create!(email: "bertrand@example.com", password: "password", first_name: "Bertrand", last_name: "Bussac", remote_avatar_url:"https://www.thispersondoesnotexist.com/image", linkedinurl:"https://fr.linkedin.com/in/bertrand-bussac-4185034a?trk=public_profile_browsemap_profile-result-card_result-card_full-click")
tarik = User.create!(email: "tarik@example.com", password: "password", first_name: "Tarik", last_name: "Graoui", remote_avatar_url:"https://www.thispersondoesnotexist.com/image", linkedinurl:"https://fr.linkedin.com/in/tarik-graoui")
james = User.create!(email: "james@example.com", password: "password", first_name: "James", last_name: "Arbacette", remote_avatar_url:"https://www.thispersondoesnotexist.com/image", linkedinurl:"https://fr.linkedin.com/in/james-arbacette")
claudine = User.create!(email: "claudine@example.com", password: "password", first_name: "Claudine", last_name: "Pradal", remote_avatar_url:"https://www.thispersondoesnotexist.com/image", linkedinurl:"https://fr.linkedin.com/in/claudine-pradal-aaa35575")



puts 'Finished users!'
puts User.all

# Seeds for missions

puts 'Creating missions...'

missions_attributes = [
  {
    company: "Zapier",
    remote_photo_url: "https://www.stickpng.com/assets/images/5842fb7ba6515b1e0ad75b33.png",
    title: "Senior Backend Engineer",
    description: "Your work could be on our workflow engine, the editor that our customers use to build their Zaps, our platform where partners build their integrations, or any number of areas in between. You'll have a primary focus on backend development in Python, though may need to jump into the frontend from time to time. Zapier is built on Django, React, node.js and AWS. We use modern tools, which means you’ll have the opportunity to work with software like Memcached, RabbitMQ, Zookeeper, Docker, Redis, Jenkins, Puppet, Ansible and much more. You also have experience building SDK's.",
    headquarter: "Seattle",
    num_of_days:  150,
    daily_price: 600,
    user: kim_mullaney,
  },
  {
    company: "Zapier",
    remote_photo_url: "https://www.stickpng.com/assets/images/5842fb7ba6515b1e0ad75b33.png",
    title: "Data Engineer",
    description: "You’ve used written complex SQL queries that join across data from multiple systems, matching them up even when there was not a straightforward way to join the tables. You've designed tables with an eye towards ease of use and high performance. You've documented schemas and created data dictionaries.",
    headquarter: "Seattle",
    num_of_days: 60,
    daily_price: 700,
    user: kim_mullaney,
  },
    {
    company: "Slack",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/fr/thumb/7/7e/Slack_logo.svg/1280px-Slack_logo.svg.png",
    title: "Data Architect",
    description: "As a hands-on Data Architect, you will work  multi-functionally with business domain experts, analytics and engineering teams to design and implement our new modern Data Warehouse. You’ll be working in our Business Technology’s Data and Analytics function and have an opportunity to build a sound data foundation and processes that will scale with the company’s growth. You will be partnering with various multi-functional teams like Sales, Finance, Marketing, and fellow Business Technology teams to engage in right solution discussion, design enterprise class data model that can be implemented by, implement data pipelines enabling insights from our Product and Corporate Systems for key partners and decision makers at Slack.",
    headquarter: "Dublin",
    num_of_days: 70,
    daily_price: 400,
    user: arthur,
  },
  {
    company: "Trello",
    remote_photo_url: "https://d2k1ftgv7pobq7.cloudfront.net/meta/u/res/images/brand-assets/Logos/0099ec3754bf473d2bbf317204ab6fea/trello-logo-blue.png",
    title: "Data Scientist",
    description: "As the ideal data scientist, you are someone who can do a deep technical dive and communicate effectively with others. You love wrangling messy data into an elegant solution, and helping others understand the power of their data. This role is a chance to have a huge impact on how millions of users collaborate.",
    headquarter: "New York",
    num_of_days: 90,
    daily_price: 700,
    user: keisha_washington,
  },
  {
    company: "Shopify",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/fr/thumb/e/e7/Shopify_logo.svg/1280px-Shopify_logo.svg.png",
    title: "Business Insights Analyst",
    description: "Owning the delivery of business insights across the organization, making recommendations and implementing improvements to current business practices. Exploring merchant and product data to uncover key insights to drive decisions on pricing, positioning, and planning decisions.",
    headquarter: "Waterloo",
    num_of_days: 20,
    daily_price: 550,
    user: christine_tran,
  },
  {
    company: "Zoom",
    remote_photo_url: "https://www.utc.edu/walker-center-teaching-learning/images/zoom-logo.png",
    title: "Video Algorithm Engineer",
    description: "We are seeking a passionate Video Algorithm Engineer to research and evaluate algorithms to enhance real-time video quality and develop some special effects on Zoom video product. You will join the Video Engineering team as a Video Algorithm Engineer to use traditional and deep learning method to research and develop video processing algorithms for Zoom's products!",
    headquarter: "San Jose",
    num_of_days: 130,
    daily_price: 420,
    user: lynne_oldham,
  },
  {
    company: "Mozilla",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/commons/d/d2/Firefox_Logo%2C_2017.png",
    title: "UX Designer",
    description: "Mozilla is hiring a Senior UX Designer for our Emerging Technologies team. Emerging Technologies is Mozilla’s early Research & Development organization focused on developer tools, knowledge and community, including MDN web docs, voice assistants & speech technologies, mixed reality, and new explorations. We're looking for a passionate, talented, and experienced Sr UX Designer to help explore, identify and shape novel opportunities for existing and future products; support existing R&D endeavors; and help facilitate a range of activities to enrich Mozilla’s user-centric and design-driven culture.",
    headquarter: "Portland",
    num_of_days: 130,
    daily_price: 420,
    user: christine_tran,
  },
  {
    company: "Mozilla",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/commons/d/d2/Firefox_Logo%2C_2017.png",
    title: "Content Marketing Manager",
    description: "The Firefox Content Manager will collaborate with product marketing and a number of cross functional marketing teams to develop engaging content that sets Firefox apart from other tech brands. This creator will glean key insights from popular culture and align them with Firefox’s brand personality, commitment to people’s privacy and product offerings and develop irresistible videos, blog posts, and other content programs. Based in the San Francisco Bay Area or Portland, this role reports to the Head of Social and Brand Experiences.",
    headquarter: "Portland",
    num_of_days: 60,
    daily_price: 600,
    user: christine_tran,
  },
  {
    company: "Shopify",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/fr/thumb/e/e7/Shopify_logo.svg/1280px-Shopify_logo.svg.png",
    title: "French Content Marketer",
    description: "We’re looking for a highly motivated French speaking content marketer who is passionate about entrepreneurship, ecommerce, and digital marketing. Your task will be to localize and create compelling content that helps our French speaking merchants build, launch, and grow successful businesses with Oberlo and Shopify.",
    headquarter: "Berlin",
    num_of_days: 60,
    daily_price: 600,
    user: christine_tran,
  },
  {
    company: "Heroku",
    remote_photo_url: "https://www.stickpng.com/assets/images/58480873cef1014c0b5e48ea.png",
    title: "Site Reliability Engineer",
    description: "We’re looking for people who are interested in complex distributed systems- how they work, how they can work better, how we even know if they’re working at all. We need someone who's spent time working as a developer (writing code with a team to fix operational issues or build features), but who has also spent time on operational concerns (investigating production incidents, creating or updating monitoring and alerting plans for production systems, or investigating performance issues, for instance).",
    headquarter: "San Francisco ",
    num_of_days: 35,
    daily_price: 380,
    user: christine_tran,
  },
    {
    company: "Le Wagon",
    remote_photo_url: "https://www.frenchtechbordeaux.com/wp-content/uploads/2019/01/le-wagon-color.png",
    title: "Business Developer",
    description: "Le Wagon is looking for a Business Developer to play a leading role in creating and executing first-of-its kind partnerships to grow our major goals around continuing to improve student outcomes and enhance the student experience. You will be spearheading major initiatives that will be at the forefront of driving Lambda’s mission and rapid growth..",
    headquarter: "Bordeaux",
    num_of_days: 90,
    daily_price: 500,
    user: louis_uguen,
  },
  {
    company: "Heroku",
    remote_photo_url: "https://www.stickpng.com/assets/images/58480873cef1014c0b5e48ea.png",
    title: "Cloud Platform Support",
    description: "Heroku takes an engineering-driven approach to support. Our team of support engineers intimately understand cloud application architecture and common issues. If you're a software engineer passionate about web apps, related open source projects, and problem solving, we'd love to hear from you.",
    headquarter: "San Francisco ",
    num_of_days: 25,
    daily_price: 300,
    user: christine_tran,
  },
    {
    company: "Heroku",
    remote_photo_url: "https://www.stickpng.com/assets/images/58480873cef1014c0b5e48ea.png",
    title: "Cloud Platform Support",
    description: "Heroku takes an engineering-driven approach to support. Our team of support engineers intimately understand cloud application architecture and common issues. If you're a software engineer passionate about web apps, related open source projects, and problem solving, we'd love to hear from you.",
    headquarter: "San Francisco ",
    num_of_days: 25,
    daily_price: 300,
    user: christine_tran,
  },
    {
    company: "Le Wagon",
    remote_photo_url: "https://www.frenchtechbordeaux.com/wp-content/uploads/2019/01/le-wagon-color.png",
    title: "Student Success Manager",
    description: "Working closely with the UK Manager and Marketing Lead, the role will consist of building hiring partnerships, managing inbound calls & applications, hiring-specific events and more. Most importantly, the successful candidate will help support on an exciting new part-time bootcamp offering soon to be launched in London!",
    headquarter: "Bordeaux",
    num_of_days: 76,
    daily_price: 400,
    user: louis_uguen,
  },
     {
    company: "Slack",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/fr/thumb/7/7e/Slack_logo.svg/1280px-Slack_logo.svg.png",
    title: "Product Manager",
    description: "Slack is seeking a product manager to lead the Data team. You will work with the team to build and execute on a roadmap that best empowers your customers and makes their lives easier and more productive because of data.

You will not only develop the roadmap for data tools and systems you’ll also own the planning and execution of our internal data tools and data platform. You have extensive experience as a data product manager, expertise in analytical frameworks, and have performed well in large and fast-growing organizations.",
    headquarter: "San Francisco",
    num_of_days: 150,
    daily_price: 520,
    user: arthur,
  },
   {
    company: "GitLab",
    remote_photo_url: "https://about.gitlab.com/images/press/logo/png/gitlab-logo-gray-rgb.png",
    title: "Backend Engineer",
    description: "Backend Engineers at GitLab work on our product. This includes both the open source version of GitLab, the enterprise editions, and the GitLab.com service as well. They work with peers on teams dedicated to areas of the product. They work together with product managers, designers, and frontend developers to solve common goals.",
    headquarter: "New York",
    num_of_days: 30,
    daily_price: 450,
    user: sid_sijbrandij,
  },
    {
    company: "Le Wagon",
    remote_photo_url: "https://www.frenchtechbordeaux.com/wp-content/uploads/2019/01/le-wagon-color.png",
    title: "Alumni Community Manager",
    description: "We're looking for someone to join the growth team at Le Wagon to engage and support the growing alumni community, a new function at a revolutionary new education company. In this role you’ll be instrumental in mapping out the investments, technologies, and key activities needed to help us grow our alumni community while maintaining engagement with current members. You will be focused on engaging and growing the alumni community through in-person and digital user groups, online engagement and identifying key opportunities to make the Lambda School alumni network best-in-class.",
    headquarter: "Bordeaux",
    num_of_days: 200,
    daily_price: 700,
    user: louis_uguen,
  },
    {
    company: "Le Wagon",
    remote_photo_url: "https://www.frenchtechbordeaux.com/wp-content/uploads/2019/01/le-wagon-color.png",
    title: "Lead Teacher",
    description: "This is a highly visible, student-facing role on the Instruction team, reporting directly to the Web Development Program Director. As the Web Development Instructor, you’ll be responsible for delivering the curriculum to students, tracking student progress, and preparing students for the job market. Additionally, you’ll be expected to actively contribute to and improve upon the existing curriculum in conjunction with the Program Manager.",
    headquarter: "Bordeaux",
    num_of_days: 90,
    daily_price: 500,
    user: louis_uguen,
  },
    {
    company: "SoundCloud",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/fr/b/bb/SoundCloud_logo.png",
    title: "Frontend Engineer",
    description: "You have a background in web development and JavaScript, experienced with React or other Javascript application architectures. Experience in developing for the server would be desirable, for example, with Ruby, NodeJS or Scala. You have a keen interest in creating polished user interfaces by working closely with designers, and producing high quality code with an emphasis on automated testing. You are interested in solving problems that you can connect to business value, and are excited by the opportunity to work with cutting-edge browser capabilities and new technologies such as ES2015+, Typescript and React Native.",
    headquarter: "New York",
    num_of_days: 70,
    daily_price: 450,
    user: kerry_trainor,
  },
  {
    company: "Trello",
    remote_photo_url: "https://d2k1ftgv7pobq7.cloudfront.net/meta/u/res/images/brand-assets/Logos/0099ec3754bf473d2bbf317204ab6fea/trello-logo-blue.png",
    title: "Support Engineer EMEA",
    description: "We don’t want people to just use Trello, we want them to love it. We’re looking to add a person to our support team who is friendly, helpful, and already loves Trello. Your top priority will be to transform our users into super-fans.",
    headquarter: "Amsterdam",
    num_of_days: 30,
    daily_price: 400,
    user: keisha_washington,
  },
    {
    company: "SoundCloud",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/fr/b/bb/SoundCloud_logo.png",
    title: "Production Designer",
    description: "We’re looking for an experienced Designer to join our marketing team and play a crucial role in providing support for our partnerships team. The Designer will work directly with our Creative Director to manage the details and processes that are required to bring creative ideas to life.",
    headquarter: "New York",
    num_of_days: 30,
    daily_price: 450,
    user: kerry_trainor,
  },
    {
    company: "GitLab",
    remote_photo_url: "https://about.gitlab.com/images/press/logo/png/gitlab-logo-gray-rgb.png",
    title: "Solutions Architect",
    description: "Solution Architects are the trusted advisors to GitLab prospects and clients, showing how the GitLab solutions address clients business requirements. Solution Architects are responsible for actively driving and managing the technology evaluation and validation stages of the sales process. Solution Architects are the product advocates for GitLab’s Enterprise Edition, serving as a trusted advisor to the client, focusing on the the technical solution while also understanding the business challenges the customer is trying to overcome.",
    headquarter: "New York",
    num_of_days: 90,
    daily_price: 300,
    user: sid_sijbrandij,
  },
    {
    company: "Slack",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/fr/thumb/7/7e/Slack_logo.svg/1280px-Slack_logo.svg.png",
    title: "Data Scientist",
    description: "Slack is hiring an experienced data science leader for our Expansion product team. The Expansion team is a cross-functional team that builds foundational product experiences to help people that are new to Slack get started, get the most out of Slack, and help to promote full adoption within their companies. Our team focuses on the critical moments within the team’s lifecycle: creating and joining workspaces, user education, growing user adoption within companies, pricing & packaging, and purchasing & billing.",
    headquarter: "Dublin",
    num_of_days: 110,
    daily_price: 600,
    user: arthur,
  },
   {
    company: "Slack",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/fr/thumb/7/7e/Slack_logo.svg/1280px-Slack_logo.svg.png",
    title: "Customer Marketing Manager",
    description: "Slack is seeking a customer marketing manager to join our growing APAC marketing team. This key B2B marketing role is critical to our enterprise marketing efforts, and the focus is to understand, celebrate and share our customers’ success.

In this position, you'll become a resident expert on our enterprise customers, how they are using Slack and the value they’ve realized, and you’ll manage a program to deliver a steady stream of customer stories and references to support awareness, demand generation and sales cycles. Success will be a strong bench of customer references, deep customer relationships with Slack champions, and a library of use cases and customer case studies that tell the story of the value and power of Slack.",
    headquarter: "Melbourne",
    num_of_days: 30,
    daily_price: 450,
    user: arthur,
  },
   {
    company: "BackMarket",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/commons/3/3c/Back_Market.png",
    title: "Customer Champion",
    description: "E-waste reduction, planned obsolescence battle and circular economy are 3 good reasons to wake up in the morning; we're offering a fantastic career opportunity for a Customer Champion to join our European team (based in Bordeaux).

So, if you’ve got a way with Customer Relations in challenging environment, an interest in environmentally-friendly initiatives and a genuine desire to build a first-class global marketplace, we'd love to hear from you. We have a challenging schedule and high business expectations, so you'll need to be able to get up to speed without compromising on attention to detail.",
    headquarter: "Bordeaux",
    num_of_days: 30,
    daily_price: 450,
    user: laetitia_wamanisa,
  },
   {
    company: "BackMarket",
    remote_photo_url: "https://upload.wikimedia.org/wikipedia/commons/3/3c/Back_Market.png",
    title: "Lead Back-End Engineer",
    description: "En tant que Lead Back-End tu seras en charge de concevoir (ta strategie), développer (ton jeu), déployer (tes pièces), et améliorer (tes résultats) ton niveau aux echecs mais aussi, et surtout, sur d'importantes fonctionnalités produits liées à l'évolution de notre activité à l'internationale.",
    headquarter: "Bordeaux",
    num_of_days: 60,
    daily_price: 600,
    user: laetitia_wamanisa,
  },
]

Mission.create!(missions_attributes)

puts 'Finished missions!'

