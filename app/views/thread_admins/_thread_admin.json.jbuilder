json.extract! thread_admin, :id, :title, :body, :user_id, :created_at, :updated_at
json.url thread_admin_url(thread_admin, format: :json)
