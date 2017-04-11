Rails.application.routes.draw do
  resources :students, only: :index

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.

#  A user should be able to navigate to /students to view all of the students.

  get "students/:id", to: "students#show", as: 'student'
  #alias (as: 'student') creates a method that returns
  #the string of the path "students/:id"

  # it 'renders properly' do
  #   visit student_path(@student)
  #   expect(page.status_code).to eq(200)
  # end

  #get "students/:id/activate", to: "students#activate" as: 'activate_student'

  #get "students/:id", to: "students#activate", as: 'activate_student'
  #student_path(@student)


 get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
  # it "Should mark an inactive stuent as active" do
  #   visit activate_student_path(@student)
  #   @student.reload
  #   expect(@student.active).to eq(true)
  # end

  # it "Should redirect to the student show page" do
  #   visit activate_student_path(@student)
  #   expect(page.current_path).to eq(student_path(@student))
  # end

  #patch "students/:id/activate", to: "students#update"

end
