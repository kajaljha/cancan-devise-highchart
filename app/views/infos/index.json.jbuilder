json.array!(@infos) do |info|
  json.extract! info, :id, :first_name, :last_name, :father_name, :DOB, :DOJ, :Expericence, :prevoius_company, :address, :contact_no, :Reference_contact_no, :sallry, :probation
  json.url info_url(info, format: :json)
end
