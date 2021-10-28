class ApiVersionConstraint
    def initialize(options)
        @version = options[:version]
        @default = options[:default]
    end
    
    def matches?(req)
        @default || req.headers['Accept'].include?('application/vnd,taskapi-ruby.v#{@version}')
    end
end