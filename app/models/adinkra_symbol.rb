class AdinkraSymbol < ApplicationRecord
    def to_param
        short_url
    end
end
