Feature: In this we will learn small but important concepts of karate

  Scenario: Embeded expressions in karate framework
    * def employee = { fName: 'Le', lName: 'Trang'}
    * print employee
    * def fNameVal = 'amod'
    * def lNameVal = 'mahajan'
    * def employee1 = {fNameVal: '#(fNameVal)', lNameVal: '#(lNameVal)'}
    * print employee1
