RF Test Automation
==============

Robot Framework Automation Tests
-------------

Usage
-------

Robot Framework is a Python-based keyword-driven test automation framework for
acceptance level testing and acceptance test-driven development (ATDD). It has
an easy-to-use tabular syntax for creating test cases and its testing
capabilities can be extended by test libraries implemented either with Python
or Java. Users can also create new keywords from existing ones using the same
simple syntax that is used for creating test cases.

Robot Framework allows for writing automated tests with a keyword-driven methodology
that has many benefits to the user.  Robot Tests abstract the code behind easy
to understand keywords.

Documentation
-------------

Robot Framework Standard Documentation: 
http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html

Robot Framework Keywords 
http://robotframework.org/robotframework/#standard-libraries

Setup
-----

https://github.com/robotframework/robotframework#installation

Running Tests
-------------

To run all tests locally (from package directory level):

robot /STest/Tests/

Required Installation Packages for Dev:
- PyCharm (or any Python IDE)
- Git 
- Python3
- PIP3
- RobotFramework (latest)
- Selenium Webdriver (chromedriver/geckodriver; latest)
- Libraries (pip install)
-   -- robotframework-SeleniumLibrary
