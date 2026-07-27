using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace practical_2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Select Employee Type : ");
            Console.WriteLine("1. Full Time");
            Console.WriteLine("2. Part Time");

            Console.Write("Enter your choice : ");
            int ch = Convert.ToInt32(Console.ReadLine());

            switch (ch)
            {
                case 1:
                    fulltimeepm f = new fulltimeepm();
                    f.setdata();
                    f.getdata();
                    f.calSalary();
                    break;

                case 2:
                    parttimeemp part = new parttimeemp();
                    part.setdata();
                    part.getdata();
                    part.calSalary(); 
                    break;
            }
        }

        interface Ipayrol
        {
            void calsalary();
        }

        class employee
        {
            public int id;
            public string name;
            public double salary;

            public employee()
            {
                Console.WriteLine("Employee Payroll System");
            }

            public void setdata()
            {
                Console.Write("Enter Employee Id:");
                id = Convert.ToInt32(Console.ReadLine());

                Console.Write("Enter Employee Name:");
                name = Console.ReadLine();

                Console.Write("Enter Employee Salary:");
                salary = Convert.ToDouble(Console.ReadLine());
            }

            public void getdata()
            {
                Console.WriteLine("Employee Id : " + id);
                Console.WriteLine("Employee Name : " + name);
                Console.WriteLine("Employee Salary : " + salary);
            }
        }

        class fulltimeepm : employee
        {
            public void calSalary()
            {
                double da = salary * 0.05;
                double hra = salary * 0.10;
                double ma = salary * 0.15;
                double pr = salary * 0.20;

                Console.WriteLine("Employee Type is Full Time");
                double netsal = (salary + da + hra + ma) - pr;
                Console.WriteLine("Net Salary : " + netsal);
            }
        }

        class parttimeemp : employee
        {
            public void calSalary()
            {
                Console.WriteLine("Salary for Part Time employee");
                double netsalary = salary;
                Console.WriteLine("Net Salary : " + netsalary);
            }
        }
    }
}