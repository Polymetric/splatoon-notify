# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController
    model :store

    def index

    end

    def page_not_found
      
    end

    def add_user
      _players << { name: page._new_name, phone: page._new_phone, carrier: page._new_carrier }
      SmsTasks.onboard_user(page._new_phone, page._new_carrier)
      page._new_name = ''
      page._new_phone = ''
      page._new_carrier = ''
    end

    private

    # The main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._component, params._controller, and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end

    # Determine if the current nav component is the active one by looking
    # at the first part of the url against the href attribute.
    def active_tab?
      url.path.split('/')[1] == attrs.href.split('/')[1]
    end
  end
end
