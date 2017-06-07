# peoplenames

peoplenames = [
	{ "data": "Erica Romaguera","image" : "images/userface1.jpg"}
	{"data": "Caleigh Jerde","image" : "images/userface2.jpg"},
	{"data": "Lucas Schultz","image" : "images/userface3.jpg"},
	{"data": "Carole Marvin","image" : "images/userface4.jpg"},
	{"data": "Dorian Feeney","image" : "images/userface5.jpg"},
	{"data": "Nia Gutkowski","image" : "images/userface6.jpg"},
	{"data": "Woodrow Nikolaus","image" : "images/userface7.jpg"},
	{"data": "Jaquan Rolfson","image" : "images/userface8.jpg"},
	{"data": "Dimitri Abernathy","image" : "images/userface9.jpg"},
	{"data": "Alexanne Stanton","image" : "images/userface10.jpg"},
	{"data": "Cooper Moore","image" : "images/userface11.jpg"},
	{"data": "Gianni Block","image" : "images/userface12.jpg"},
	{"data": "Jade Mohr","image" : "images/userface13.jpg"},
	{"data": "Chet Weimann","image" : "images/userface14.jpg"},
	{"data": "Kole Bednar","image" : "images/userface15.jpg"},
	{"data": "Althea Harber","image" : "images/userface16.jpg"},
	{"data": "Ara Dare","image" : "images/userface17.jpg"},
	{"data": "Betsy Feeney","image" : "images/userface18.jpg"},
	{"data": "Vicenta Maggio","image" : "images/userface19.jpg"},
	{"data": "Candelario Hegmann","image" : "images/userface20.jpg"},
	{"data": "Yoshiko Mraz","image" : "images/userface21.jpg"},
	{"data": "Camila Hintz","image" : "images/userface22.jpg"},
	{"data": "Rosamond Mueller","image" : "images/userface23.jpg"},
	{"data": "Destinee Erdman","image" : "images/userface24.jpg"},
	{"data": "Salvatore Roberts","image" : "images/userface25.jpg"
	},
	]

# 'image' :'images/userface1.jpg'


# companynames

companynames = [
	{ "data": "Audi", "employee": [{"data1":"xyz","data2":"123","data3":"XXXXX" }]},
	{"data": "Facebook, Inc.","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{ "data": "Johnson & Johnson","employee":[{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "General Electric","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "Oracle Corporation","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "Siemens AG","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "Pizza Hut","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "The Walt Disney Company","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "MasterCard","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "Bank of America","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{ "data": "Ferrari","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{ "data": "eBay","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "Louis Vuitton","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "Loreal","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "Kleenex","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "Gillette","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "Mitsubishi","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{ "data": "Nintendo","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "Allianz","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "McDonald's","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "Ralph Lauren Corporation","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "Burberry","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{"data": "AT&T","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{ "data": "Starbucks","employee": [{"data":"xyz","data":"123","data":"abc" }]},
	{ "data": "Sprite","employee": [{"data":"xyz","data":"123","data":"abc" }]}
	]

#Peoplelist
PeopleList = new Layer
	backgroundColor: "rgba(255,255,255,1)"
	width: 750
	height: 2000

# Loop over each name
for peoplename, i in peoplenames
   listItem = new Layer        # Create a new Layer for each airport
      parent: PeopleList   # Place layer inside scroll area
      height: 128       # Set height of each item
      y: i * 128        # Offset each item with y position
      width: Screen.width      # Make items full width
      backgroundColor: "white" # Set backgroundColor
      html: peoplename.data
      color: "#555"
      fontSize: 44
      style:                   # A little extra CSS for border-bottom
         "border-bottom": "1px solid #ccc"
         "fontSize": "36px"
         "paddingLeft": "170px"
         "paddingTop": "40px"




   avatar = new Layer 
    parent: listItem
    x: 50, y: 10
    width: 80, height: 80
    borderRadius: 120
    backgroundColor: "#BDBDBD"
    image:peoplename.image




jiggle = (aLayer) ->
	aLayer.on Events.MouseOver, ->
		aLayer.animate
			scale: 1.2
			options:
				curve: Spring(damping: 0.5)
				time: 0.5
		






#Company List
CompanyList = new Layer
	backgroundColor: "rgba(255,255,255,1)"
	width: 750
	height: 4000



class Company extends Layer
	constructor: (options) ->
		super _.defaults options,
		width: 750
		height: 419
		parent:CompanyList
		image: "images/company_items@2x.png"
		


# Loop over each name
for companyname, i in companynames
   listItem = new Layer        # Create a new Layer for each airport
      parent: CompanyList   # Place layer inside scroll area
      height: 120       # Set height of each item
      y: i * 120        # Offset each item with y position
      width: Screen.width      # Make items full width
      backgroundColor: "white" # Set backgroundColor
      html: companyname.data 
      color: "#555"
      fontSize: 44
      padding : 50
      style:                   # A little extra CSS for border-bottom
         "border-bottom": "1px solid #ccc"
         "fontSize": "36px"
         "paddingLeft": "50px"
         "paddingTop": "60px"


# 	{ "data": "Audi", "employee": [{"data":"xyz","data":"123","data":"XXXXX" }]},
# nested loops
# for companyname in companynames
# # 	print (companynames)
# # 	print (companyname)
# 	for employee, i in companyname.employee
# 		print (employee.data1 + "   "+  employee.data2 )
# 		listItem.html += employee.data1


#Add people

InputModule = require "input"
AddPeople = new Layer
	backgroundColor: "rgba(255,255,255,1)"
	width: 750
	height: 1334

form = new Layer
	height:673
	image: "images/form@2x.png"
	width: 670
	parent: AddPeople
	x: 44
	y: 126



add_form_button = new Layer
	height: 79
	image: "images/add_form_button@2x.png"
	width: 663
	parent: AddPeople
	x: 40
	y: 971
class MyInput extends InputModule.Input
	constructor: (options) ->
		super _.defaults options,
			virtualKeyboard: true
			width: 666
			height: 79
			x:44
			placeholder: "Text"
			placeholderColor: "C8C7CD"
			parent: AddPeople
			backgroundColor: "transparent"
			fontSize: 40

first_name = new MyInput
	placeholder: "First Name ..."
	y: 170

last_name = new MyInput
	placeholder: "Last Name ..."
	y: 260

email = new MyInput
	placeholder: "email ..."
	y: 350

phone= new MyInput
	placeholder: "Phone ..."
	y: 440

project = new MyInput
	placeholder: "Project ..."
	y: 530

notes = new MyInput
	placeholder: "Notes ..."
	y: 620

add_form_button.onTap -> 
	flow.showNext(PeopleList)

# tab bar
backgroundTabBar = new Layer
	backgroundColor: "rgba(37,167,154,1)"
	width: 1334
	height: 114
	y:1220


top = new Layer
	height: 40
	image: "images/top@2x.png"
	width: 750
# Set up FlowComponent
flow = new FlowComponent
flow.header = top
flow.footer = backgroundTabBar
flow.showNext(PeopleList)






Companies_button = new Layer
	height: 75
	image: "images/business-active@2x.png"
	width: 82
	y: 1235
	x: 95
Companies_button.states = 
	active: {image: "images/business-active@2x.png"}
	inactive: {image: "images/business-inactive@2x.png"}
Companies_button.states.switchInstant "active"

People_button = new Layer
	image: "images/people-inactive@2x.png"
	y: 1225
	x: 582
	width: 100
	height: 100
	opacity: 0.8
People_button.states = 
	active: {image: "images/people-active@2x.png"}
	inactive: {image: "images/people-inactive@2x.png"}
People_button.states.switchInstant "inactive"

add_button= new Layer
	height: 100
	image: "images/add_button-inactive@2x.png"
	width: 100
	y: 1225
	x: 325
add_button.states = 
	active: {image: "images/add_button-active@2x.png"}
	inactive: {image: "images/add_button-inactive@2x.png"}
add_button.states.switchInstant "inactive"

People_button.onTap ->
	PeopleList.placeBefore(AddPeople)
	flow.showNext(PeopleList)
	People_button.states.switch "active"
	Companies_button.states.switch "inactive"
	add_button.states.switch "inactive"
Companies_button.onTap ->
	flow.showNext(CompanyList)
	Companies_button.states.switch "active"
	People_button.states.switch "inactive"
	add_button.states.switch "inactive"
add_button.onTap ->
	flow.showNext(AddPeople)
	add_button.states.switch "active"
	Companies_button.states.switch "inactive"
	People_button.states.switch "inactive"

# detail view 

modal_background = new Layer
	width: 750
	height: 1220
	opacity: 0
modal_background.placeBehind(add_button)

detail_view = new Layer
	height: 1142
# 	image: "images/detail_view@2x.png"
	backgroundColor: "#fff"
	color: "#555"
	width: 714
	y: 1370
	x: 24


avatar_detail = new Layer 
	parent: detail_view
	width: 200, height: 200
	borderRadius: 200
	backgroundColor: "#BDBDBD"
	image:"images/userface2.jpg"
	x: Align.center
	y:50

# avatar_detail.animate
# 	properties:
# 		y:50
# 		x: Align.center
# 	delay: 1
# # 	repeat: 3
# 	time: 0.5
# 	curve:
# 		Bezier(0.25, 0.1, 0.25, 1)




# # phone
# phoneinfo = new TextLayer
# 	text: "Phone: 1-555- 666- 7777"
# 	parent: detail_view
# 	x: 66
# 	y: 512
# 	color: "#555"
# 
# # email
# emailinfo = new TextLayer
# 	text: "Email: caliegh@airbnb.com"
# 	parent: detail_view
# 	x: 66
# 	y: 602
# 	color: "#555"
# 
# # project
# companyinfo = new TextLayer
# 	text: "Project: Design"
# 	parent: detail_view
# 	x: 66
# 	y: 705
# 	color: "#555"
# 
# # email
# notesinfo = new TextLayer
# 	text: "Notes: Followup"
# 	parent: detail_view
# 	x: 68
# 	y: 808
# 	color: "#555"

# Create layer, define image
contact_form = new Layer
	image: "images/contactinfo-form@2x.png"
	parent: detail_view
	y: 474
	width: 691
	height: 662
	x: 6
# Create name
name = new TextLayer
	text: "Caleigh Jerde"
# 	fontSize: 32
# 	fontWeight: 200
	parent: detail_view
	x: Align.center
	y: 270
	color: "#555"

# Create layer, define image
separator_line = new Layer
	image: "images/separator@2x.png"
	parent: detail_view
	x: 0
	y: 460
	width: 715
	height: 1


edit_section = new Layer

	image: "images/edit-icon@2x.png"

	parent: detail_view
	y: 175
	x: 413
	width: 78
	height: 80

# delete_section = new Layer
# 	height: 66
# 	image: "images/delete_section@2x.png"
# 	parent: detail_view
# 	x: 401
# 	y: 1024

call = new Layer

	image: "images/call@2x.png"
	parent: detail_view
	x: 153
	y: 340
	width: 90
	height: 90
sms = new Layer

	image: "images/sms@2x.png"
	parent: detail_view

	x: 308
	y: 340
	width: 90
	height: 90

email = new Layer
	height:90
	image: "images/email@2x.png"
	width: 90
	parent: detail_view
	y: 340
	x: 457

close_corner = new Layer
# 	height: 92
	image: "images/close_corner.png"
	parent: detail_view
# 	width: 95
	x: 608
	y: 30
	width: 74
	height: 40

PeopleList.onTap ->
	detail_view.animate
		y: 40
		options: 
			curve: Spring(damping: 0.6)
			time: 0.8
	modal_background.animate
		opacity: 1
	


close_corner.onTap ->
	detail_view.animate
		y: 1374
		options: 
			curve: Spring(damping: 0.6)
			time: 0.8
	modal_background.animate
		opacity: 0

edit_section.onTap ->
	detail_view.animate
		y: 1374
		options: 
			curve: Spring(damping: 0.8)
			time: 0.5
	modal_background.animate
		opacity: 0
	flow.showNext(AddPeople)
	
# delete_section.onTap ->
# 	detail_view.animate
# 		y: 1374
# 		options: 
# 			curve: Spring(damping: 0.8)
# 			time: 0.5
# 	modal_background.animate
# 		opacity: 0
# 	flow.showNext(PeopleList)

# jiggle(email)
# jiggle(sms)
# jiggle(call)
# jiggle(delete_section)
# jiggle(edit_section)# Create text layer













	