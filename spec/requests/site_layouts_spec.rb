require 'spec_helper'

describe StaticPagesController, type: :controller do
  render_views
  it "layout links" do
    get root_path
    expected(template) 'static_pages/home'
/*    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path*/
  end
end
