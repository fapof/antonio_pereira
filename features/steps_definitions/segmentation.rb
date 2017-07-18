  def generate_code(number)
  	charset = Array('A'..'Z') + Array('a'..'z')
  	'RD_Station_' + Array.new(number) { charset.sample }.join
  end
  puts generate_code(20)

  name_segmentation = generate_code(4)
  segmentation = generate_code(4)
  descrption = generate_code(4)
  tag = generate_code(4)

Given(/^I am on the leads segmentation screen$/) do
  @segmentation_page = SegmentationPage.new
  @segmentation_page.open_leads_segmentation_screen
end

When(/^Click on the new segmentation button$/) do
  @segmentation_page.new_create_segmentation
end

Then(/^I see show the popup for informing a name the new segmentation$/) do
  expect(page).to have_text("Name")
end

When(/^I fill name the new segmentation$/) do
  @segmentation_page.set_name_segmentation(name_segmentation)
end

And(/^I click on new segmentation button$/) do
  @segmentation_page.click_on_new_segmentation_button
end

Then(/^I see show the form for a new leads segmentation$/) do
  expect(page).to have_text("Leads Segmentation")
end

When(/^I fill option the lead meets either group conditions$/) do
	@segmentation_page.fill_either_groups_conditions
end

And(/^Inform the option Lead Data in group conditions$/) do
  @segmentation_page.fill_lead_data_option_in_group_conditions
end

And(/^Inform the option Field in group conditions$/) do
  @segmentation_page.fill_field_option_in_group_conditions
end

And(/^Inform the option state in group conditions$/) do
  @segmentation_page.fill_state_option_in_group_conditions
end

And(/^Inform the option contains in group conditions$/) do
  @segmentation_page.fill_contains_option
end

And(/^Inform the text in complete a term field$/) do
  @segmentation_page.fill_complete_a_term_field(descrption)
end

Then(/^Click on the option add another condition$/) do
  @segmentation_page.click_add_another_condition_option
end

And(/^Inform the option Tag in group conditions$/) do
  @segmentation_page.fill_tags_option
end

And(/^Inform the option contains the tag in group conditions$/) do
  @segmentation_page.fill_constain_the_tag_option
end

And(/^Inform the text in tag field$/) do
	
  @segmentation_page.fill_tag_field(tag)
end

And(/^Click on the save button$/) do
  @segmentation_page.save_segmentation
end

Then(/^The new segmentation must be saved correctly$/) do
  expect(page).to have_text("List successfully saved!")
end

When(/^I fill option the lead meets all group conditions$/) do
	@segmentation_page.all_groups_conditions
end

And(/^Inform the option Conversion in group conditions$/) do
  @segmentation_page.fill_conversion_option_in_group_conditions
end

And(/^Inform the option the lead did not conversion in group conditions$/) do
  @segmentation_page.fill_the_lead_did_not_conversion_option_in_group_conditions
end

And(/^Inform the option form the source option in group conditions$/) do
  @segmentation_page.fill_from_the_source_option_in_group_conditions
end

And(/^Inform the option email in group conditions$/) do
  @segmentation_page.fill_email_option_in_group_conditions
end

And(/^Inform the option does not contain in group conditions$/) do
  @segmentation_page.fill_does_not_contain_option_in_group_conditions
end

When(/^I search leads segmentation$/) do
@segmentation_page.search_field(segmentation)
end

And(/^Click on option edit button$/) do
@segmentation_page.edit_button_option
end

And(/^Change the tag option for bource$/) do
@segmentation_page.fill_bounce_option
end

And(/^Inform the option The lead is in group conditions$/) do
@segmentation_page.fill_the_lead_is_option
end

And(/Inform the option Hard bounce in group condition$/) do
@segmentation_page.fill_hard_bounce_option
end

Then(/Change must be saved correctly$/) do
expect(page).to have_text("Successfully updated list!")
end

When(/^I inform name the new segmentation$/) do
  @segmentation_page.set_name_segmentation(segmentation)
end


And(/Click on option Delete list button$/) do
@segmentation_page.deleting_button
end

And(/Confirm message delete this list$/) do
page.driver.browser.switch_to.alert.accept
end

Then(/Deleting must be effected correctly$/) do
expect(page).to have_text("Deleted successfully list!")
end
















