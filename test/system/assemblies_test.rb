require "application_system_test_case"

class AssembliesTest < ApplicationSystemTestCase
  setup do
    @assembly = assemblies(:one)
  end

  test "visiting the index" do
    visit assemblies_url
    assert_selector "h1", text: "Assemblies"
  end

  test "should create assembly" do
    visit assemblies_url
    click_on "New assembly"

    fill_in "Assembly reg", with: @assembly.assembly_reg
    click_on "Create Assembly"

    assert_text "Assembly was successfully created"
    click_on "Back"
  end

  test "should update Assembly" do
    visit assembly_url(@assembly)
    click_on "Edit this assembly", match: :first

    fill_in "Assembly reg", with: @assembly.assembly_reg
    click_on "Update Assembly"

    assert_text "Assembly was successfully updated"
    click_on "Back"
  end

  test "should destroy Assembly" do
    visit assembly_url(@assembly)
    click_on "Destroy this assembly", match: :first

    assert_text "Assembly was successfully destroyed"
  end
end
