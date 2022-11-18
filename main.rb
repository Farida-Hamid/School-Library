require './person'
require './student'
require './classroom'
require './book'
require './rental'

# Make sure that when adding a student to a classroom it also sets the classroom for the student.
class_a = Classroom.new('A')
mark = Student.new(class_a, 13, 'Mark')
print "Mark's classroom is ", mark.name
class_a.add_student(mark)
print "\nMark's classroom is ", mark.classroom.label
# Make sure that when setting the classroom for a student it also adds it to the classrooms' students.
print "\n", class_a.students, ' are enrolled in class ', class_a.label

# Test books and rentals relationship
book1 = Book.new('title1', 'author1')
rental1 = Rental.new('now', book1, mark)

puts book1.rentals.length, rental1.book.title

# # Test person and rentals relationship
# person1 = Person.new(25, 'Person1')
# rental2 = Rental.new('now2', book1, person1)
# puts rental2.date

# person1.add_rental(rental2)
# puts person1.rentals.length, rental2.person.name
