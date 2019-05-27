require 'rethinkdb'
include RethinkDB::Shortcuts

conn = r.connect(:host => 'localhost', :port => 28015).repl

# r.db('test').table_create('tv_shows').run
# r.table('tv_shows').insert({ 'name'=>'Star Trek TNG' }).run
# r.table('tv_shows').delete({ 'name'=>'Star Trek TNG' }).run
r.db('test').table_drop('tv_shows').run
