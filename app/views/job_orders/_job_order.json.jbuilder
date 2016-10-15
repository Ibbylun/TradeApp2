json.extract! job_order, :id, :clientId, :teamId, :netAmount, :grossAmount, :description, :startTime, :stopTime, :materials, :created_at, :updated_at
json.url job_order_url(job_order, format: :json)