Rails.application.routes.draw do
  root    'notes#index'
  get     'notes'           => 'notes#index', as: 'notes'
  post    'notes'           => 'notes#create'
  get     'notes/new'       => 'notes#new',   as: 'new_note'
  get     'notes/newjs'       => 'notes#new_js',   as: 'new_note_js'
  get     'notes/newjsinj'       => 'notes#new_js_inj',   as: 'new_note_js_inj'
  get     'notes/:id/edit'  => 'notes#edit',  as: 'edit_note'
  get     'notes/:id'       => 'notes#show',  as: 'note'
  patch   'notes/:id'       => 'notes#update'
  put     'notes/:id'       => 'notes#update'
  delete  'notes/:id'       => 'notes#destroy'
end
