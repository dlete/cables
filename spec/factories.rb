
# By using the symbol ':provider', we get Factory Girl to simulate the Provider model.
Factory.define :provider do |provider|
  provider.name                  "BT Ireland"
  provider.abbreviation          "bti"
end

Factory.sequence :name do |n|
  "name #{n}"
end
