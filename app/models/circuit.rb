class Circuit < ActiveRecord::Base
  belongs_to :provider

  belongs_to :end_a_endpoint, :class_name => 'Endpoint'
  belongs_to :end_b_endpoint, :class_name => 'Endpoint'

  belongs_to :end_a_medium, :class_name => 'Medium'
  belongs_to :end_b_medium, :class_name => 'Medium'

  def self.total_up_to_a_date(date)
    where("date(created_at) < ?",date).count
  end

  def self.provider_name
# this gives me: [BT Ireland, Stracke-Beatty, Pfannerstill-Pollich, Olson-Sipes, Eircom, Dublin City Corporation]
#    "[" + (Provider.first.id..Provider.last.id).map { |blah| Provider.find(blah).name}.join(", ") + "]"
# this gives me: 'BT Ireland, Stracke-Beatty, Pfannerstill-Pollich, Olson-Sipes, Eircom, Dublin City Corporation'
#    "'" + (Provider.first.id..Provider.last.id).map { |blah| Provider.find(blah).name}.join(", ") + "'"
    "['" + (Provider.first.id..Provider.last.id).map { |blah| Provider.find(blah).name}.join(", ").gsub(/, /,"', '") + "']"
  end

end
