# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

School.find_or_create_by(name: 'Carnegie Vanguard High School', account_number: '4003830171874018')
School.find_or_create_by(name: 'Thomas Jefferson High School for Science and Technology', account_number: '5496198584584769')
School.find_or_create_by(name: 'Design and Architecture Senior High School', account_number: '2223000048400011')
