class ConfigurationManager < ActiveRecord::Base
  include NewWithTypeStiMixin
  include EmsRefresh::Manager
  belongs_to :provider

  has_many :configured_systems,     :dependent => :destroy
  has_many :configuration_profiles, :dependent => :destroy
end
