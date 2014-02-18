require 'erb'
require 'foreman/export'

module Foreman
  module Export
    class Eye < Foreman::Export::Base

      def export_template(name, file=nil, template_root=nil)
        if file && template_root
          old_export_template name, file, template_root
        else
          name_without_first = name.split("/")[1..-1].join("/")
          matchers = []
          matchers << File.join(options[:template], name_without_first) if options[:template]
          matchers << File.expand_path("~/.foreman/templates/#{name}")
          matchers << File.expand_path("../../../../data/export/#{name}", __FILE__)
          File.read(matchers.detect { |m| File.exists?(m) })
        end
      end

      def export
        super
        clean "#{location}/#{app}.eye"
        write_template "eye/master.eye.erb", "#{app}.eye", binding
      end
    end
  end
end
