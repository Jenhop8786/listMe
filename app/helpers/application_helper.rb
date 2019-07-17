# frozen_string_literal: true

module ApplicationHelper
  def active_item(uri)
    uri_segments = request.fullpath.split(/\/|\?/)
    uri_segments[1] === uri ? 'active' : ''
  end

end
