module DeviseSecurityExtension
  class Engine < ::Rails::Engine
    ActiveSupport.on_load(:action_controller) do
      include DeviseSecurityExtension::Controllers::Helpers
    end
    
    ActionDispatch::Callbacks.to_param do
      DeviseSecurityExtension::Patches.apply
    end

  end
end
