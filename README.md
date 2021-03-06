# E-Commerce UI Automation

This repository contains automated UI tests that interact with the web browser.


## Test Setups

Docker:
```
1. Download docker
2. Create username and pwd
3. After account creation, log into the downloaded Docker app with your docker username
& password
    - (* You MUST be sure to log in with your created username
        and not the email address associated with your Docker account or the
        "make build" command [step 4] won't work)
    - keep docker running
3. then clone the repo (https://github.com/SeleniumHQ/docker-selenium)
4. inside the repo, from root run:
	VERSION=local make build
	- This may take about 30 minutes to run
```

After Docker is installed, cd into this repo.
1. Start the Docker Hub (configured to use Selenium Grid) and Nodes (configured
  to use Chrome [headless], Chrome debug, and Firefox debug):
```
docker-compose up
```

2. In the cloned repo, you will need to create a .env file
  - Once the .env file is created, make sure to add the following values within the file:
```
QA_URL = http://automationpractice.com/index.php
SELENIUM_HUB_URL = http://localhost:4444/wd/hub
BROWSER = firefox
BROWSER = chrome
BROWSER = chrome_h
```
  - I did not commit the .env file since that is not standard practice, however I provided the file 
  contents because these are non-secure values and this will allow you to run the tests on the correct
  site.

3. Run the tests (including the browser parameter) with following command:
```
BROWSER=firefox rspec spec
```

Or run an individual test suite like this:
```
BROWSER=chrome rspec spec/homepage_spec.rb
```

4. To use VNC (Virtual Network Computing) to see the test interact with the non-headless
browsers,
  - Go to RealVNC's site (https://www.realvnc.com/en/connect/download/viewer/macos/
    and download the viewer)
  - Get the node's port number (found in `docker-compose.yml`). The current debug port options are: 5902 (chrome debug), and 5903 (firefox debug)
  - Once RealVNC is downloaded, enter the `VNC server address and node port (for example): 127.0.0.1:5902` with `pwd: secret`
