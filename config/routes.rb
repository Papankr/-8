# frozen_string_literal: true

Rails.application.routes.draw do
  root 'say#hello'
  get 'say/hello'
  get 'say/goodbye'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
