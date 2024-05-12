json.extract! supplier, :id, :CNPJ, :name, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
