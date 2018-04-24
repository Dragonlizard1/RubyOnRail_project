rails g model User f_name:string l_name:string email:string city:string state:string password:digest

rails g model Event title:string datesetup:date city:string state:string user:references 


rails g model Comment content:string event:references user:references