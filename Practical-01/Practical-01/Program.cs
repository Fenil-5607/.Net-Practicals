using System;

namespace StudentAdmission
{
    class Student
    {
        public int Id;
        public string Name; public string Course; private double Fees;

        public Student()
        {
            Console.WriteLine("Student Admission Management");
        }

        public void GetData()
        {
            Console.Write("Enter Student ID: ");
            Id = Convert.ToInt32(Console.ReadLine());
            Console.Write("Enter Student Name: "); Name = Console.ReadLine();
            Console.Write("Enter Course: "); Course = Console.ReadLine();

            Console.Write("Enter Fees: ");
            Fees = Convert.ToDouble(Console.ReadLine());
        }
        public void Scholarship()
        {
            if (Fees >= 50000)
            {
                Fees = Fees - (Fees * 0.10); Console.WriteLine("Scholarship Applied (10%)");
            }
            else
            {
                Console.WriteLine("No Scholarship");
            }
        }

        public void ShowData()
        {
            Console.WriteLine("\nStudent Details"); Console.WriteLine("Student ID : " + Id); Console.WriteLine("Name	: " + Name); Console.WriteLine("Course	 : " + Course); Console.WriteLine("Final Fees : " + Fees);
        }

        static void Main(string[] args)
        {
            Student s = new Student();
            s.GetData(); s.Scholarship(); s.ShowData(); Console.ReadKey();
        }
    }
}
