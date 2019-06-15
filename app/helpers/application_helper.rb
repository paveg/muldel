# frozen_string_literal: true

module ApplicationHelper
  DEV_JS_SRC = 'http://localhost:8090/assets/bundle.js'

  def javascript_bundle_tag
    return javascript_include_tag(DEV_JS_SRC) if Rails.env.development?

    javascript_include_tag(webpack_manifest('.js'))
  end

  private

  def webpack_manifest(extention = '.js')
    manifest = Rails.application.config.assets.webpack_manifest
    path = "main#{extention}"
    path = manifest[path] if manifest && manifest[path].present?

    "#{Rails.application.config.action_controller.asset_host}/#{path}"
  end
end
