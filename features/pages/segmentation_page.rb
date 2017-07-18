class SegmentationPage < SitePrism::Page



  element :close_menu, "#relate-menu > a"
  element :leads_segmentation_menu, "#relate-menu > ul > li:nth-child(5) > a"
  element :save_segmentation_button, "#save-segmentation"
  element :all_groups_conditions, "#condition_handler > option:nth-child(1)"
  element :either_groups_conditions, "#condition_handler > option:nth-child(2)"
  element :conversion_option, "#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > div > div.field.form-inline.js-fields > div:nth-child(1) > select > option:nth-child(5)"
  element :the_lead_did_not_conversion_option, "#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > div > div.field.form-inline.js-fields > div:nth-child(2) > select > option:nth-child(2)"
  element :from_the_source_option, "#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > div > div.field.form-inline.js-fields > div:nth-child(3) > select > option:nth-child(2)"
  element :email_option, "#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > div > div.field.form-inline.js-fields > div:nth-child(4) > select > option:nth-child(5)"
  element :lead_data_option, "#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > div:nth-child(1) > div.field.form-inline.js-fields > div:nth-child(1) > select > option:nth-child(1)"
  element :field_option, "#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > div:nth-child(1) > div.field.form-inline.js-fields > div:nth-child(2) > select > option:nth-child(1)"
  element :does_not_contain_option, "#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > div:nth-child(1) > div.field.form-inline.js-fields > div:nth-child(4) > select > option:nth-child(2)"
  element :add_another_condition_option, "#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > a"
  element :contains_option, "#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > div:nth-child(1) > div.field.form-inline.js-fields > div:nth-child(4) > select > option:nth-child(1)"
  element :complete_a_term_field, "#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > div:nth-child(1) > div.field.form-inline.js-fields > div:nth-child(5) > input"
  element :tags_option, "#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > div:nth-child(1) > div.field.form-inline.js-fields > div:nth-child(2) > select > option:nth-child(2)"
  element :constain_the_tag_option, "#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > div:nth-child(1) > div.field.form-inline.js-fields > div:nth-child(3) > select > option:nth-child(1)"
  element :bounce_option, "#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > div > div.field.form-inline.js-fields > div:nth-child(2) > select > option:nth-child(5)"
  element :the_lead_is_option, "#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > div > div.field.form-inline.js-fields > div:nth-child(3) > select > option:nth-child(1)"
  element :hard_bounce_option, "#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > div > div.field.form-inline.js-fields > div:nth-child(4) > select > option:nth-child(2)"  
  
  def open_leads_segmentation_screen
  	close_menu.click
  	leads_segmentation_menu.click
  end

  def fill_tags_option
  	tags_option.click
  end

  def fill_constain_the_tag_option
  	constain_the_tag_option.click  	
  end

  def new_create_segmentation
  	click_button('Create Segmentation')
  end

  def set_name_segmentation(name)
  	fill_in('segmentation_name', :with => name)
  end

  def click_on_new_segmentation_button
  	page.find(:css, '#segmentation-name-modal > div > div > div.modal-footer > input').click
  end

  def fill_all_groups_conditions
  	all_groups_conditions.click
  end 

  def fill_either_groups_conditions
  	either_groups_conditions.click
  end 

  def fill_conversion_option_in_group_conditions
  	conversion_option.click
  end

  def fill_the_lead_did_not_conversion_option_in_group_conditions
  	the_lead_did_not_conversion_option.click
  end

  def fill_from_the_source_option_in_group_conditions
  	from_the_source_option.click
  end

  def fill_email_option_in_group_conditions
  	email_option.click
  end

  def fill_lead_data_option_in_group_conditions
  	lead_data_option.click  	
  end

  def fill_field_option_in_group_conditions
  	field_option.click  	
  end

  def fill_state_option_in_group_conditions
  	page.find(:css, '#content > div.container.main-content > form > div.collection-conditions-groups.js-groups > div > div.panel.panel-default.panel-group-conditions > div.panel-body.collection-conditions-fields.js-conditions > div:nth-child(1) > div.field.form-inline.js-fields > div:nth-child(3)').click
  	page.find('li', :text => 'state').click
  end

  def fill_does_not_contain_option_in_group_conditions
  	does_not_contain_option.click
  end

  def click_add_another_condition_option
  	add_another_condition_option.click
  end

  def fill_contains_option
  	contains_option.click  	
  end

  def fill_complete_a_term_field(name)
  	find(:xpath, "(//input[@value=''])[2]").set(name)
  end

  def fill_tag_field(name)
  	find(:xpath, "(//input[@value=''])[2]").set(name)
  end

  def save_segmentation
  	save_segmentation_button.click
  end

  def search_field(name)
	find(:css, "#table-segmentationlist-index_filter > label > input").set(name)
end

def edit_button_option
	find(:xpath, "(//a[contains(text(),'Edit')])[2]").click
end

def fill_bounce_option
	bounce_option.click
end

def fill_the_lead_is_option
	the_lead_is_option.click
end

def fill_hard_bounce_option
	hard_bounce_option.click
end

def deleting_button
	find(:css, "#table-segmentationlist-index > tbody > tr:nth-child(1) > td:nth-child(2) > div > button").click
	page.find('li', :text => 'Delete list').click
end

def confirm_message
	page.driver.browser.switch_to.alert.text	
end
end
