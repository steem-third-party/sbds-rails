# desc "Explaining what the task does"
# task :sbds do
#   # Task goes here
# end

Rake.application.instance_variable_get('@tasks').delete('db:test:purge')
Rake.application.instance_variable_get('@tasks').delete('db:test:load_schema')

namespace 'db' do
  namespace 'test' do
    task 'purge' do
      # noop
    end
    
    task 'load_schema' do
      # noop
    end
  end
end
