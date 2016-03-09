Spec.configure do |config|
  FG = FactoryGirl

  config.before(:all) do
    FactoryGirl.reload
  end
end
