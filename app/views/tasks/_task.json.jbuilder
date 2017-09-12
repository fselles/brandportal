json.extract! task, :id, :description, :file, :job_id, :created_at, :updated_at
json.url task_url(task, format: :json)
