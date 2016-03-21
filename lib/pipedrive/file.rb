module Pipedrive
  class File < Base

    class << self
      def remote_link(opts = {})
        res = post "#{resource_path}/remoteLink", body: opts
        res.success? ? res['data'] : bad_response(res, opts)
      end
    end
  end
end