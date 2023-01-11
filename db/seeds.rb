
image1 = Rails.root.join("app/assets/images/profile-2.png").open
image2 = Rails.root.join("app/assets/images/shelby_farms_park.png").open
image3 = Rails.root.join("app/assets/images/Orgill_Park_2.png").open
image4 = Rails.root.join("app/assets/images/Orgill_Park.png").open
image5 = Rails.root.join("app/assets/images/Sea_Isle_Park.png").open
image6 = Rails.root.join("app/assets/images/Bud_Hill.png").open
image7 = Rails.root.join("app/assets/images/Arlington.png").open
image8 = Rails.root.join("app/assets/images/Meeman-Shelby_State_Park.png").open

p_i1 = Rails.root.join("app/assets/images/image1.jpeg").open
p_i2 = Rails.root.join("app/assets/images/image2.jpeg").open
p_i3 = Rails.root.join("app/assets/images/image3.jpeg").open
p_i4 = Rails.root.join("app/assets/images/image4.jpeg").open
p_i5 = Rails.root.join("app/assets/images/image5.jpeg").open

user1 = User.create!(
	username: 'ferrannoah',
	email: 'email@gmail.com',
	password: 'password',
	image: image1,
)

user2 = User.create!(
	username: 'jmac62',
	email: 'jake@gmail.com',
	password: 'password',
	image: image1
)

user3 = User.create!(
	username: 'ryanstepp7',
	email: 'ryan@gmail.com',
	password: 'password',
	image: image1
)

user4 = User.create!(
	username: 'andrew',
	email: 'andrew@gmail.com',
	password: 'password',
	image: image1
)

user5 = User.create!(
	username: 'tank15sharks',
	email: 'kyle@gmail.com',
	password: 'password',
	image: image1
)

shelby_farms = Course.create!(
	name: 'Shelby Farms Park',
	address: 'Cordova, TN 38018',
	h2: 4,
	image: image2
)


shelby_forest = Course.create!(
	name: 'Meeman-Shelby State Park', 
	address: 'Shelby County, TN 38053',
	image: image8
)

arlington = Course.create!(
	name: 'Arlington Sports Complex', 
	address: '11307 Memphis Arlington Rd, Arlington, TN 38002',
	image: image7
)

bud_hill = Course.create!(
	name: 'Bud Hill Park',
	address: "Tennessee's 9th Congressional District, TN",
	image: image6
)

orgill_park = Course.create!(
	name: 'Edmund Orgill Park',
	address: "9080 Bethuel Rd, Millington, TN 38053",
	image: image3
)

sea_isle = Course.create!(
	name: 'Sea Isle Park',
	address: '1264 Wellsville Rd, Memphis, TN 38117',
	image: image5
)

Post.create!(
	user: user3,
	text: 'I lost my disc in the pond on hole 12, please contact me if you find it. Its a Pink Innova Destroyer.',
	image: p_i1,
	subject: 'Lost Disc',
	course: shelby_farms
)

Post.create!(
	user: user2,
	text: 'I lost my disc somewhere around hole 6, its a green innova leopard lmk if you find it.',
	subject: 'Lost Disc',
	image: p_i4,
	course: shelby_forest
)

Post.create!(
	user: user1,
	text: 'I found around hole 2 at shelby farms',
	image: p_i3,
	subject: 'Lost Disc',
	course: shelby_farms
)

Post.create!(
	user: user4,
	text: 'Beautiful day at Shelby Farms Today',
	subject: 'Other',
	course: shelby_farms
)

Post.create!(
	user: user5,
	text: 'First time playing at Shelby Farms, ended up with a +12.',
	subject: 'Score',
	course: shelby_farms
)

Post.create!(
	user: user4,
	text: 'Anybody interesed in playing around at Shelby at around 2 p.m. today?',
	subject: 'Looking For Group',
	course: shelby_farms
)


post1 = Post.create!(
	user: user4,
	text: 'Im looking for some people to play a round with at Bud Hill.',
	subject: 'Looking For Group',
	course: bud_hill,
	image: p_i5
)

Comment.create!(
	user: user3,
	text: 'Im down to play, we can meet up around 2 if thats good with you.',
	post: post1
)

Post.create!(
	user: user5,
	text: 'Anyone tryna play at arlington.',
	subject: 'Looking For Group',
	course: arlington
)

Post.create!(
	user: user1,
	text: 'A tree fell down at hole 3, you can still play it but it kinda gets in the way',
	subject: 'Obstruction',
	image: p_i2,
	course: shelby_forest
)

Post.create!(
	user: user5,
	text: 'The park is packed, they have some sort of event going on right now.',
	subject: 'Obstruction',
	course: shelby_farms
)

Post.create!(
	user: user3,
	text: 'I shot 2 under!',
	subject: 'Score',
	course: sea_isle
)

Post.create!(
	user: user1,
	text: 'Rough ending at shelby forest, threw away a good round and ended up 9 over',
	subject: 'Score',
	course: shelby_forest
)

Post.create!(
	user: user2,
	text: 'Still getting a hang of disc golf, just got a +11 at arlington.',
	subject: 'Score',
	course: arlington
)

Post.create!(
	user: user1,
	text: 'Just finished a round, ended up with a -3 pretty happy about that.',
	subject: 'Score',
	course: sea_isle
)

