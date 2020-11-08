using System;

namespace Coin {
    class Coin {
        readonly byte[] sequence = new byte[1000];
        readonly byte key = 1;
        byte Flip() => (byte) new Random().Next(0,2);
        public Coin() { }
        public void Test() {
            Console.WriteLine("Программная имитация броска монетки:");
            InitSequence();
            Console.WriteLine("Вычисление вероятности выпадания решки:");
            FindKey();
        }
        void InitSequence() {
            for(int i = 0; i < 1000; i++) { 
                sequence[i] = Flip();
                if (i < 100) {
                    if (sequence[i] == 0)
                        Console.Write("0");
                    else
                        Console.Write("Р");
                }
                
            }
            Console.WriteLine("\n");
        }
        void FindKey() {
            for (int N = 100; N <= 1000; N += 100) {
                int count = 0;
                for (int i = 0; i < N; i++) {
                    if (sequence[i] == key) { count++; }
                }
                Console.WriteLine("Количество бросков: {0}; Присутствует данная комбинация: {1} раз;\n", N, count);
            }
        }
    }
}
