### Health One-Stop

##### App idea: 
This is a one-stop web app that will contain all the information of healthcare providers to enable better comparison across providers and access to real-time data. 

##### App features: 
- Healthcare providers to have a profile of all the services they offer, with real-time data like cost and capacity available.
- Devise to enable JSON user authentication 

##### Business plan: 
This web app will mostly be funded by fees from healthcare providers, as well as governmental funding. 

##### How to run: 
The app is hosted on a heroku server at: 
https://morning-caverns-31914.herokuapp.com/

The root page is an index of all the healthcare providers with their respective services. 
The app is designed to only have authenticated admin be able to register new healthcare providers, instead of them registering themselves. To do so, go to the url `https://morning-caverns-31914.herokuapp.com/admin`, and enter the username `hos_admin` and password `hos_secret` into the pop-up. Once you are authenticated as an admin, you will be able to register and delete healthcare providers. 

Healthcare providers can themselves log in with their email and password, and proceed to edit and create new services. 

##### Miscellaneous

Entities: 
- Providers - Name, Location, Services, Email, Encrypted_password
- Services - Name, Description, Cost, Capacity, Provider_id

Pages: 
- Admin Home page 
- Providers page 
- Provider login page 
- Provider edit page 