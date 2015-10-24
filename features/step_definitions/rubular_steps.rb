Given /^I am on the Rubular home page$/ do 
  @page = RubularPage.new @browser
  @page.goto
end

When /^I enter the regex$/ do
  @page.enter_regex
end

And /^I enter jdenen@cscc.edu$/ do
  @page.enter_test
end

Then /^the match result is jdenen@cscc.edu$/ do
  expect(@page.get_match).to eq "jdene@cscc.edu"
end

And /^returns three match groups on new lines with index$/ do
  expect(@page.div(:id => "match_captures")).text.to eq ""
end

