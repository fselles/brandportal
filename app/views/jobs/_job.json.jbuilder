json.extract! job, :id, :contactperson, :title, :description, :article_number, :status, :created_at, :updated_at
json.url job_url(job, format: :json)
