# frozen_string_literal: true

module Controllers
  # This controller renders the JS application as static files.
  # @todo : put the files on an S3 or any external storage
  # @author Vincent Courtois <courtois.vincent@outlook.com>
  class Templates < Base
    init_csrf

    get '/*' do
      erb :login, locals: {ui_root: env['UI_ROOT_PATH']}
    end
  end
end
