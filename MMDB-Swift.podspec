Pod::Spec.new do |s|
  s.name         = "MMDB-Swift"
  s.version      = "0.5.1"
  s.summary      = "A wrapper for MaxMind DB"
  s.description  = <<-DESC
                   A tiny wrapper for libmaxminddb which allows you to lookup
                   Geo data by IP address.
                   DESC

  s.homepage     = "https://github.com/durant/MMDB-Swift"

  s.license      = { :type => "APACHE 2.0", :file => "LICENSE" }

  s.author             = { "durant" => "durant@gmail.com" }
  s.social_media_url   = "https://twitter.com/durant"

  s.platform     = :ios, :osx

  s.swift_version = "5.0"
  s.ios.deployment_target = "12.0"
  s.osx.deployment_target = "15.10"

  s.source       = { :git => "https://github.com/durant/MMDB-Swift.git",
                     :tag => s.version }

  s.source_files  = "Sources/MMDB.swift", "Sources/libmaxminddb/*.{h,c}"
  s.ios.public_header_files = "Sources/libmaxminddb/*.h", "Sources/MMDB.h"
  s.osx.public_header_files = "Sources/libmaxminddb/*.h", "Sources/MMDB.h"

  s.framework  = "Foundation"
  s.requires_arc = true
end
