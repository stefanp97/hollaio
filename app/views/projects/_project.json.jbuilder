json.extract! project, :id, :title, :details, :priority, :status, :expected_completion_date, :tenant_id, :created_at, :updated_at
json.url project_url(project, format: :json)
