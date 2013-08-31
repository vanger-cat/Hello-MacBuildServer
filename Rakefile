# Rakefile
include Rake::DSL
require 'bundler'
Bundler.require

Wox::Tasks.create :info_plist => 'SimpleApp/SimpleApp-Info.plist', :sdk => 'iphoneos', :configuration => 'Release' do
  build :debug, :configuration => 'Debug'

  build :release, :developer_certificate => 'iPhone Distribution: Flexis ZAO' do
    ipa :adhoc, :provisioning_profile => 'AAD5D3A8-4266-46E2-B16A-5DCCB8827909' do
      testflight :publish, :api_token => 'af7140355be791bf7248083aab49f055_MTQzNzk0MjAxMS0wOC0zMSAwNjowMDoyMi40MzIzNjI',
                           :team_token => '6f1da7f6e76f12e53ed5d11e9c23caa0_MTk4Njk5MjAxMy0wOC0zMCAwMzozNjowNi4yNDI5Njg',
                           :notes => proc { File.read("CHANGELOG") },
                           :distribution_lists => %w[All],
                           :notify => true

    end
  end
end