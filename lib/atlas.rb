module Atlas
  def self.included(base)
    p "---------- Including Atlas (Navigate to /atlas/routes) ----------"
    ActionController::Base.prepend_view_path File.dirname(__FILE__)+'/views'
    ActionController::Routing::Routes.draw do |map|
      map.connect '/atlas/routes', :controller => 'atlas/path', :action => 'index'
    end
  end

  def self.rails_routes
    named_routes = ActionController::Routing::Routes.named_routes.routes
    ActionController::Routing::Routes.routes.collect do |route|
      name = named_routes.key(route).to_s
      verb = route.conditions[:method].to_s.upcase
      segs = route.segments.to_s.chop
      reqs = route.requirements.empty? ? "" : route.requirements.inspect
      {:name => name, :verb => verb, :path => segs, :reqs => reqs}
    end
  end

  class PathController < ActionController::Base

    def index
      @routes = Atlas.rails_routes
      render :layout => false
    end

  end
end