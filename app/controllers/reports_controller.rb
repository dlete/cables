class ReportsController < ApplicationController
  def summary
    @providers_total = Provider.all.count
    @circuits_total = Circuit.all.count
    @endpoints_total = Endpoint.all.count
    @circuits_per_provider = ( @circuits_total / @providers_total )
    @circuits_per_endpoint = ( @circuits_total / @endpoints_total )
  end

end
