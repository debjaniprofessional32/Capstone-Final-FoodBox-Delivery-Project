# Capstone-Final-FoodBox-Delivery-Project

It maven bases Web Java project
Recommended technologies:

Database management: MySQL 
Backend logic: Java programming(User MVC Java mOdel)
Frontend development: JSP, Bootstrap, HTML/CSS

Project has all the following Features of the application:

Registration
Login
Payment gateway
Searching
Filtering
Sorting
Dynamic data
Responsive and compatible with different devices


The admin [Admin Email & password to access the project:admin@gmail.com password =adminpwd]

admin can Add or remove different cuisines to or from the application to build a rich product line
Edit food item details like name, price, cuisine, description, and offers/discounts to keep it aligned to the current prices
Enable or disable the food items(Active /Inactive which will be not visible to Website by user)

User Portal can 
user can sign & register in website also if he she is already register cannot register with same email id
they can add cusine to cart & place order as per selection or remove item from cart or add same item twice or more to take that same item in more quantity
as per need per they can remove item from cart before order placed & even can select mode of payment 
they can check there order placed detail as a summary & even saech item by entering name , description ,category name of item

for this in src section 5 package has been created
A.com.DB  has main daabase connection detail (datbase name, password , url & method name acces any other modal section 
B.com .uentity- contain entity class where 4 entity has been created
1.User- name , email, phone, password(please ignore other feild detail like address landmark city state zip detail this etaill were access in cart section
 becasue this detail only needed when user what to place order not during registration)
2. CusienList- It contain detail of food like name, price description quantity discount , discount amount
3. Cart- This section conatin field like detail of food added & user payment & address detail to place order
4. Food Order- it containe detail once order is place then it can be viewed by both party(user & admin) as summary 

C.com.uDao act as Modal for this Project


Here all datbase related Query  has been mention

in my project i have created interface for each entity mentioned above  & there implemnetion is done on ImpDao 

Like if CusineDao is intrface which has name of menthod & it method is implemented in  CusineImpDao(class is used)= where how admin insert(Sql) new footitem , deleted or update(EdiT) or able to see all food item inserted &  as per his choice he can make item visible  or diable to user or main website 

D.There is 2 controller as per module  (in this servlet has been user)
all admin controller are "com.adminServlet":In Admin can add,delete, Edit servlet controller has been program
 & for user It is in"com.user.servlet"-- in this user login , logout, registration Or updating his existing profile
even detail of adding  item in cart or removing is coded or placing  order 
Once he has hadded he can click on home navbar to come back to home & clicj on all item list to check lsit of ood item he has add & in there he can edite , delit , ro incavate food ite 


Flow of website for Admin

Admin need to login using followingDetail
Importabnt:-[Admin Email & password to access the project:admin@gmail.com password =adminpwd]
 Once login Admin come navigated to Admin Home page
1. have access to add food 
2. To view all added item click on home in navbar to & ther is another to view lsit food item added by admin
3. In that page itself admin has access to add item name , description (discount/offer ) or price & evn he can delete. 
4. Next in Order section list of order by User can be diaplayed
Finally but not the list logout option

To check  list added by admin whether it is diaplaying correctly or not for user , admin need to logout

Flow of website for User

User need to register first to  sign in to add item to cart or if same email id already added then it asked to use another email
But user can any item by name without login
once he is login he can select item byclicking on cart to order 
if same item clicked twice quantity will increase
user can remove cusine from as per her /his choice
to place it is mandatory to add item, address as well payment method other errro messag will shown 
user can check his order evn after visiting in setting to check order placed detail & even if user need he /she efit profile detail in setting 
