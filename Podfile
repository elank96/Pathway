source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '10.0'
use_frameworks!

target 'Pathway' do
    pod 'AWSCore', '~> 2.7.0'
    pod 'AWSCognitoIdentityProvider', '~> 2.7.0'
    pod 'AWSMobileClient'
    pod 'AWSDynamoDB'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '4.2'
        end
    end
end