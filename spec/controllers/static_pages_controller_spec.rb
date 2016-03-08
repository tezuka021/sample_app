require 'spec_helper.rb'

describe StaticPagesController, type: :controller do
  render_views
  it "should get home" do
    get :home
    expect(response).to be_success
    expect(response.body).to have_title("Ruby on Rails Tutorial Sample App")
  end
  it "should get help" do
    get :help
    expect(response).to be_success
    expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | Help")
  end

  it "should get about" do
    get :about
    expect(response).to be_success
    expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | About")
  end

  it "should get contact" do
    get :contact
    expect(response).to be_success
    expect(response.body).to have_title("Ruby on Rails Tutorial Sample App | Contact")
  end
end
