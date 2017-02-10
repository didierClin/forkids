module Admin
  class UsersController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    def index

      search_term = params[:search].to_s.strip

      if current_user.is_admin?
        resources = User.all
      else
        resources = User.all
        # creer la requete de jointure
        # f_id = current_user.profile.family_ids
        # resources = User.profile.where(family_ids: f_id)
        fail
        # resources = User.find(current_user) #TODO
      end

      resources = order.apply(resources)
      resources = resources.page(params[:page]).per(records_per_page)
      page = Administrate::Page::Collection.new(dashboard, order: order)

      render locals: {
        resources: resources,
        search_term: search_term,
        page: page,
      }
    end
    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   User.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
