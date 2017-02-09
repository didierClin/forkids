module Forkids
  class Profiles < Grape::API
    resource :profiles do
      desc 'Return a profile.'
      params do
        requires :id, type: Integer, desc: 'Profile id.'
      end
      route_param :id do
        get do
          @profile = Profile.find(params[:id])
        end
      end

      desc 'Return all profiles.'
      get do
        []
      end

      # desc 'Create a profile.'
      # params do
      #   requires :title, type: String, desc: 'Title.'
      #   requires :description, type: String, desc: 'Description.'
      #   requires :page_count, type: Integer, desc: 'Page count.'
      # end
      # post do
      #   Profile.create!({
      #                    title: params[:title],
      #                    description: params[:description],
      #                    page_count: params[:page_count]
      #                })
      # end
      #
      # desc 'Update a profile.'
      # params do
      #   requires :id, type: Integer, desc: 'Profile id.'
      #   requires :title, type: String, desc: 'Title.'
      #   requires :description, type: String, desc: 'Description.'
      #   requires :page_count, type: Integer, desc: 'Page count.'
      # end
      # put do
      #   Profile.find(params[:id]).update({
      #                                     title: params[:title],
      #                                     description: params[:description],
      #                                     page_count: params[:page_count]
      #                                 })
      # end
      #
      # desc 'Delete a profile.'
      # params do
      #   requires :id, type: Integer, desc: 'Profile id.'
      # end
      # route_param :id do
      #   delete do
      #     Profile.find(params[:id]).destroy
      #   end
      # end
    end
  end
end
