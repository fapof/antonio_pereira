# language: en
Feature: Leads segmentation

  Background:
    Given I am on the leads segmentation screen

  Scenario: Create a new segmentation leads of the type Conversion with Either group conditions
    When Click on the new segmentation button
    Then I see show the popup for informing a name the new segmentation
    When I fill name the new segmentation
    And I click on new segmentation button
    Then I see show the form for a new leads segmentation
    When I fill option the lead meets either group conditions
    And Inform the option Lead Data in group conditions
    And Inform the option Field in group conditions
    And Inform the option state in group conditions
    And Inform the option contains in group conditions
    And Inform the text in complete a term field
    And Click on the save button
    Then The new segmentation must be saved correctly

  Scenario: Create a new segmentation leads of the type Conversion with All group conditions
    When Click on the new segmentation button
    Then I see show the popup for informing a name the new segmentation
    When I fill name the new segmentation
    And I click on new segmentation button
    Then I see show the form for a new leads segmentation
    When I fill option the lead meets all group conditions
    And Inform the option Conversion in group conditions
    And Inform the option the lead did not conversion in group conditions
    And Inform the option form the source option in group conditions
    And Inform the option email in group conditions
    And Click on the save button
    Then The new segmentation must be saved correctly


  Scenario: Create a new segmentation leads of the type Lead Data with All group conditions
    When Click on the new segmentation button
    Then I see show the popup for informing a name the new segmentation
    When I fill name the new segmentation
    And I click on new segmentation button
    Then I see show the form for a new leads segmentation
    When I fill option the lead meets all group conditions
    And Inform the option Lead Data in group conditions
    And Inform the option Field in group conditions
    And Inform the option state in group conditions
    And Inform the option does not contain in group conditions
    And Click on the save button
    Then The new segmentation must be saved correctly


    Scenario: Edit segmentation leads
    When Click on the new segmentation button
    Then I see show the popup for informing a name the new segmentation
    When I inform name the new segmentation
    And I click on new segmentation button
    Then I see show the form for a new leads segmentation
    When I fill option the lead meets all group conditions
    And Inform the option Lead Data in group conditions
    And Inform the option Tag in group conditions 
    And Inform the option contains the tag in group conditions
    And Inform the text in tag field
    And Click on the save button
    Then The new segmentation must be saved correctly
    When I search leads segmentation
    And Click on option edit button
    And Change the tag option for bource
    And Inform the option The lead is in group conditions
    And Inform the option Hard bounce in group condition
    And Click on the save button
    Then Change must be saved correctly


    Scenario: Delete segmentation leads
    When Click on the new segmentation button
    Then I see show the popup for informing a name the new segmentation
    When I inform name the new segmentation
    And I click on new segmentation button
    Then I see show the form for a new leads segmentation
    When I fill option the lead meets all group conditions
    And Inform the option Lead Data in group conditions
    And Inform the option Tag in group conditions 
    And Inform the option contains the tag in group conditions
    And Inform the text in tag field
    And Click on the save button
    Then The new segmentation must be saved correctly
    When I search leads segmentation
    And Click on option Delete list button
    And Confirm message delete this list
    Then Deleting must be effected correctly



  
