class Api::V1::FactoriesController < Api::ApplicationController
  def index
    factories = Factory.all.page(params[:page]).per(params[:per])
    data = {
      factories: factories.map(&:info),
      current_page: factories.current_page,
      total_pages: factories.total_pages
    }
    render status: 200, json: { data: data }
  end

  def update
    factory = Factory.find_by(code: params[:id])

    return render status: 404, json: { "error": "Factory(#{params[:id]}) not found!"} if factory.nil?
    factory.update(update_params.to_h.compact)
    render status: 200, json: { data: factory.info }
  end

  def devices
    factory = Factory.find_by(code: params[:factory_id])

    return render status: 404, json: { "error": "Factory(#{params[:factory_id]}) not found!"} if factory.nil?
    render status: 200, json: { data: factory.devices.map(&:info) }
  end

  private
  def update_params
    params.permit(:name, :country, :zipcode, :city, :street)
  end
end