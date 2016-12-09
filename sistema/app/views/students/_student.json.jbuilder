json.extract! student, :id, :matricula, :nombre, :apellido_paterno, :apellido_materno, :nombre_del_tutor, :direccion, :telefono, :created_at, :updated_at
json.url student_url(student, format: :json)