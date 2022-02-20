using System;

namespace AreaPerimeter
{
    class Program
    {
        static void Main(string[] args)
        {
            int squareheight, area, perimeter;
            Console.Write("What is the height of your square? :");
            squareheight = Convert.ToInt32(Console.ReadLine());
            area = squareheight * squareheight;
            perimeter = 4 * squareheight;
            Console.WriteLine("Area : {0}\nPerimeter : {1}", area, perimeter); //   "\n"--> new line
            Console.ReadKey();
            // Console.WriteLine("Hello World!");
        }
    }
}
