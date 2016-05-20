require 'guard/compat/plugin'

module Guard
  class AnnotateGem < Plugin
    def run_on_modifications(paths)
      annotate
    end

    def inline?
      options[:inline] == true
    end

    private

    def annotate
      result = annotate_gem
      case result
      when :gems_annotated
        Guard::Compat::UI.info 'Gems annotated', reset: true
      else
        Guard::Compat::UI.info "Gems can't be annotated -- Please check manually", reset: true
      end

      result
    end

    def annotate_gem
      Guard::Compat::UI.info 'Annotating gems...', reset: true
      ::Bundler.with_clean_env do
        system("bundle exec annotate_gem #{options_flags}")
      end
      $CHILD_STATUS == 0 ? :gems_annotated : false
    end

    def options_flags
      output = ''
      output += ' --inline' if inline?

      output
    end
  end
end
