using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practical_3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int ch;
            List<expense> expenses = new List<expense>();

            do
            {
                Console.WriteLine("===========================");
                Console.WriteLine("Expense Tracker");
                Console.WriteLine("1. Add Expense");
                Console.WriteLine("2. View all Expense");
                Console.WriteLine("3. Total Expense");
                Console.WriteLine("4. Exit");
                Console.WriteLine("===========================");
                try
                {
                    Console.WriteLine("Enter your choice");
                    ch = Convert.ToInt32(Console.ReadLine());

                    switch (ch)
                    {
                        case 1:
                            {
                                try
                                {
                                    expense e = new expense();
                                    e.accDetail();
                                    expenses.Add(e);
                                    Console.WriteLine("expense Added Successfully");
                                }
                                catch (FormatException)
                                {
                                    Console.WriteLine("Error");
                                }
                                catch (Exception ex)
                                {
                                    Console.WriteLine("Error" + ex);
                                }
                                finally
                                {
                                    Console.WriteLine("Expense process Complete");
                                }
                                break;
                            }

                        case 2:
                            {
                                Console.WriteLine("All Expenss");
                                if (expenses.Count == 0)
                                {
                                    Console.WriteLine("No Expenses Found");
                                }
                                else
                                {
                                    foreach (expense e in expenses)
                                        e.disdet();
                                }
                                break;
                            }

                        case 3:
                            {
                                double t = 0;
                                foreach (expense e in expenses)
                                    t = t + e.amt;
                                Console.WriteLine("total expense = Rs. " + t);
                                break;
                            }

                        case 4:
                            {
                                Console.WriteLine("thank you for using Expense Tracker");
                                break;
                            }

                        default:
                            {
                                Console.WriteLine("INVALID CHOICE");
                                break;
                            }
                    }

                }
                catch (FormatException)
                {
                    Console.WriteLine("Error: Please Enter a Valid Menu Choice");
                    ch = 0;
                }

            }
            while (ch != 4);
        }
        class expense
        {
            public int exp_Id;
            public string catagory;
            public double amt;
            public string paymentmode;
            public DateTime expdate;

            public void accDetail()
            {
                Console.WriteLine("enter expense id:");
                exp_Id = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("enter Expense catagory");
                catagory = Console.ReadLine();
                Console.WriteLine("enter Expense amount");
                amt = Convert.ToDouble(Console.ReadLine());


                // exception
                if (amt <= 0)
                {
                    throw new Exception("Expense more than zero");
                }
                Console.WriteLine("enter payment method (cash/card/UPI)");
                paymentmode = Console.ReadLine();

                expdate = DateTime.Now;
            }
            public void disdet()
            {
                Console.WriteLine("===========================");
                Console.WriteLine("Expense id:" + exp_Id);
                Console.WriteLine("Expense catagory:" + catagory);
                Console.WriteLine("Expense amt:" + amt);
                Console.WriteLine("Expense payment mode:" + paymentmode);
                Console.WriteLine("Date:" + expdate);
                Console.WriteLine("===========================");
            }



        }
    }
}
