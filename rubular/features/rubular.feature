Feature:	As a student, I want to make sure
	that my professor has a valid email address
	
	Scenario: I am able to enter a regexp and a test string
		When I enter a regexp of (.*)@(.*)\.(.*) and a test string of jden@cscc.edu
		Then it is excepted
		
	Scenario: When I enter the regexp and teststring it returns a match, three match groups,
		and each should be formatted on a new line and preceded by a number
			When I enter the regexp (.*)@(.*)\.(.*) and test string jden@cscc.edu
			Then it returns a match result of jden@cscc.edu
			Then it returns three match groups which are jdenen, cscc, and edu
			Then the match groups are each formatted on a new line and preceded by a number