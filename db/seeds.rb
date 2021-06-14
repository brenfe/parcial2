# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
MedicalCenterType.delete_all
WorkerType.delete_all
Worker.delete_all
MedicalCenter.delete_all
MedicalCenterType.create(name: 'Hospital')
MedicalCenterType.create(name: 'Clínica')
MedicalCenterType.create(name: 'Sanatorio')
MedicalCenterType.create(name: 'Dispensario')
MedicalCenterType.create(name: 'Salita')
WorkerType.create(name: 'Médico')
WorkerType.create(name: 'Enfermero')
WorkerType.create(name: 'Chofer')
Worker.create(first_name:'asd', last_name: 'asd', phone_number: 34534, email: 'asdas', worker_type_id: 0)
Worker.create(first_name:'gh', last_name: 'asd', phone_number: 34534, email: 'asdas', worker_type_id: 0)
Worker.create(first_name:'asrted', last_name: 'asd', phone_number: 34534, email: 'asdas', worker_type_id: 1)
Worker.create(first_name:'afdgsd', last_name: 'asd', phone_number: 34534, email: 'asdas', worker_type_id: 1)
Worker.create(first_name:'rter', last_name: 'asd', phone_number: 34534, email: 'asdas', worker_type_id: 2)
Worker.create(first_name:'aserterd', last_name: 'asd', phone_number: 34534, email: 'asdas', worker_type_id: 2)
MedicalCenter.create(name: "ksdmas", phone_number: 45354, address: "dskfmsdf", medical_center_type_id: 0)
MedicalCenter.create(name: "fdg", phone_number: 45354, address: "dskfmsdf", medical_center_type_id: 0)
MedicalCenter.create(name: "yutyu", phone_number: 45354, address: "dskfmsdf", medical_center_type_id: 0)
MedicalCenter.create(name: "4545d", phone_number: 45354, address: "dskfmsdf", medical_center_type_id: 0)
