The next assignment uses the table shown below.  Keep in mind this table’s primary key is a composite of the StudentFirst, StudentLast, and Class columns.




Questions for this assignment
1. What normal form is the table shown in the assignment’s instructions?

2. Why is the table not in the second normal form? List the reasons the rules are being broken...

3. Create a design which conforms to the second normal form. What tables would you use? You can hand-write your answers and post as a picture, if you wish.


---------------------

1. What normal form is the table shown in the assignment’s instructions?

It is in the first normal form.

It is a relational table and the values are all atomic.

2. Why is the table not in the second normal form? List the reasons the rules are being broken...

Some of the columns are not fully dependent on the primary key. For instance:

Student Gender, though dependent on Student First and Student Last, it is not dependent on Class

Class Room is not dependent on Student First and Student Last

3. Create a design which conforms to the second normal form. What tables would you use? You can hand-write your answers and post as a picture, if you wish.

Here is the design I came up with.  There are four tables:

Student – houses student information.

Class – used to store information about the class name and room.

Adviser – The student's Adviser.  The primary key of this table is a foreign key in the student table.

ClassEnrollment – This is the table represents which classes a student is taking.