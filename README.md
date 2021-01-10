# sinatra_toolbox

sinatra_toolbox is an equipment tracking app for jobsites. It is essentially a library. It logs equpiment for controlled environments.

## Installation
Clone repo

Run 'bundle'

You must have a 'SESSION_SECRET' environment variable defined on your machine. If you have such a variable defined by a differnt name, please edit line 9 of the application_controller '/app/controllers/application_controller.rb" accordingly. If you do not have a variable defined by setting session_secret to a text string of your choosing. For more information please see the link below.
http://sinatrarb.com/intro.html

## Usage
Run 'shotgun' and navigate to http://localhost:9393/. You should see the following output in your terminal: 2021-01-09 21:13:38 -0500 Listening on 127.0.0.1:9393, CTRL+C to stop. If you see a differnt port listed in place of 9393, you will need to update the url listed above.

Signup for first-time user or login. View Jobs. Select an exiting Job or create a new one. Add Tools to your Toolbox. Edit Job. Return Tools. Mark Job 'complete'.

## License
[MIT](https://choosealicense.com/licenses/mit/)