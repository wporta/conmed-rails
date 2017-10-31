pacients = [{
                first_name:  'Jonh',
                last_name: 'Doe',
                id_number: '001-010180-0001A',
                email: 'jdoe@conmed.com',
                age: 37,
                gender: 1,
                record_number: '000-000-0001'
            },
            {
                first_name:  'Ana',
                last_name: 'Banana',
                id_number: '002-020200-004X',
                email: 'abanana@conmed.com',
                age: 17,
                gender: 2,
                record_number: '000-000-0002'
            }]


# Crear Pacientes
pacients.each do |p|
  Pacient.create! do |a|
    a.first_name = p[:first_name]
    a.last_name =  p[:last_name]
    a.id_number = p[:id_number]
    a.email = p[:email]
    a.age = p[:age]
    a.gender_id = p[:gender]
    a.record_number = p[:record_number]
  end
end
