
# This configuration file represents the kind of state information that your
# app should store in a separate, more secure, location away from your web-app
# source. This holds especially true for the App ID/Key pair -- this is
# sensitive information, and you should find a way to keep it under tight
# control, restricting access only to those who need to manage the values (system
# administrators, for example).
#
# Here, we just put the config values into a sample dictionary that the web
# framework in basic.py can import.
#
#   app_id --  App ID as provided by D2L -- DON'T HARDCODE INTO YOUR APP
#   app_key -- App Key as provided by D2L -- DON'T HARDCODE INTO YOUR APP
#   host   --  host for the web-app
#   port   --  port number for the web-app
#   scheme --  protocol to use for user <--> web-app interaction
#   lms_host -- hostname for the back-end LMS
#   lms_port -- port number for the back-end LMS
#   encrypt_requests -- True: use HTTPS when making API calls to the LMS
#   lms_ver -- product component API versions to call
#   verify -- cert verification flag
#   debug -- debug flag

app_config = { 'app_id': 'jV7hQjQ3h0WSM0Ifa7sqIw',
               'app_key': 'UypUilZoyt2XN_Mpq6qJUQ',
               'host': 'localhost',
               'port': '8080',
               'scheme': 'HTTP',
               'lms_host': 'smcdsb.elearningontario.ca',
               'lms_port': '443',
               'encrypt_requests': True,
               'verify' : False,
               'lms_ver': {'lp':'1.33','le':'1.60','ep':'2.1'},
               'debug': True
               }
