# These are working locally, but not on Travis-CI
# Maybe switch to real browsers on Sauce?

# Feature: Adding my contact
# 	In order to be contacted later
# 	As a user
# 	I want to provide my email address

# 	Background:
# 		Given there are no contacts
# 		And the contact count is 0
#     And the content store is sane

#   Scenario: Provide my valid email address
#   	When I go to the site
#   	Then the page has the right content
#   	And I provide my email "zuck@facebook.com"
#   	Then I see the thank-you message
#   	And I don't see the error message
# 		And now the contact count is 1
# 		And the contact "zuck@facebook.com" exists
# 		And the content store is sane

#   Scenario: Provide my valid email address again
#   	When I go to the site
#   	Then the page has the right content
#   	And I provide my email "zuck@facebook.com"
#   	Then I see the thank-you message
#   	And I don't see the error message
# 		And now the contact count is 1
# 		And the contact "zuck@facebook.com" exists
# 		And I go to the site
# 		Then the page has the right content
# 		And I provide my email "zuck@facebook.com"
# 		Then I see the thank-you message
# 		And I don't see the error message
# 		And the contact count is 1
# 		And the contact "zuck@facebook.com" exists
# 		And the content store is sane

# 	Scenario: Provide no email address
# 		When I go to the site
# 		Then the page has the right content
# 		And I provide my email ""
# 		And I don't see the thank-you message
# 		And the contact count is 0
#   	When I provide my email "zuck@facebook.com"
#   	Then I see the thank-you message
#   	And I don't see the error message
# 		And now the contact count is 1
# 		And the contact "zuck@facebook.com" exists

#   Scenario: Provide an invalid email address
# 	  When I go to the site
# 	  Then the page has the right content
# 	  And I provide my email "zuck@facebook"
# 	  And I don't see the thank-you message
# 	  And the contact count is 0
# 	  When I provide my email "zuck@facebook.com"
# 	  Then I see the thank-you message
# 	  And I don't see the error message
# 	  And now the contact count is 1
# 	  And the contact "zuck@facebook.com" exists
# 	  Then I'm done