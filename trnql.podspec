Pod::Spec.new do |s|

    s.name         = "trnql"
    s.platform     = :ios, "8.0"
    s.version      = "1.0.6"
    s.summary      = "trnql unlocks deep app insights to help you better understand your users and drive app engagement."
    s.homepage     = "http://trnql.com/"
    s.license      = { :type => "Copyright (C) 2016 trnql, Inc.", :file => "LICENSE" }
    s.author       = "trnql"
    s.source       = { :git => "https://github.com/trnql/trnql_insights_ios.git", :tag => s.version }
    s.vendored_frameworks = 'trnql/trnql.framework'
    s.requires_arc = true

end