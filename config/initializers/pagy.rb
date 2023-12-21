Pagy::DEFAULT[:items] = 15
require 'pagy/extras/bootstrap' # これでviewの<%== pagy_bootstrap_nav(@pagy) %>が使用できる
require 'pagy/extras/i18n' # pagyの日本語化