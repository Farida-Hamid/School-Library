require './person'
require './student'
require './classroom'
require './book'
require './rental'

# Make sure that when adding a student to a classroom it also sets the classroom for the student.
class_a = Classroom.new('A')
mark = Student.new('s', 13)
print "Mark's classroom is ", mark.classroom
class_a.add_student(mark)
print "\nMark's classroom is ", mark.classroom.label
# Make sure that when setting the classroom for a student it also adds it to the classrooms' students.
print "\n", class_a.students, ' are enrolled in class ', class_A.label

# Test books and rentals relationship
book1 = Book.new('title1', 'author1')
rental1 = Rental.new('now')
puts rental1.date

book1.add_rental(rental1)
puts book1.rentals.length, rental1.book.title
