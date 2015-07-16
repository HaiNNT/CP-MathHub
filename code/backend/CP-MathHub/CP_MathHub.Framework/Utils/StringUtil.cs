using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace CP_MathHub.Framework.Utils
{
    public class StringUtil
    {
        public static double Compare2String(string s1, string s2)
        {
            string s = "";
            s1 = ConvertToUnSign(s1.ToLower());
            s2 = ConvertToUnSign(s2.ToLower());
            if (s1.Length > s2.Length)
            {
                s = s1;
                s1 = s2;
                s2 = s;
            }

            for (int i = 0; i < (s2.Length - s1.Length); i++)
            {
                s1 += " ";
            }

            //this.maxDistance = s1.Length - (int)(s1.Length * percCorrect / 100);



            int nDiagonal = s1.Length - System.Math.Min(s1.Length, s2.Length);
            int mDiagonal = s2.Length - System.Math.Min(s1.Length, s2.Length);

            if (s1.Length == 0) return 100;//s2.Length <= maxDistance;
            if (s2.Length == 0) return 100;// s1.Length <= maxDistance;

            int[,] matrix = new int[s1.Length + 1, s2.Length + 1];

            for (int i = 0; i <= s1.Length; matrix[i, 0] = i++) ;
            for (int j = 0; j <= s2.Length; matrix[0, j] = j++) ;

            int cost;

            for (int i = 1; i <= s1.Length; i++)
            {
                for (int j = 1; j <= s2.Length; j++)
                {
                    if (s2.Substring(j - 1, 1) == s1.Substring(i - 1, 1))
                    {
                        cost = 0;
                    }
                    else
                    {
                        cost = 1;
                    }

                    int valueAbove = matrix[i - 1, j];
                    int valueLeft = matrix[i, j - 1] + 1;
                    int valueAboveLeft = matrix[i - 1, j - 1];
                    matrix[i, j] = Min(valueAbove + 1, valueLeft + 1, valueAboveLeft + cost);
                }

                if (i >= nDiagonal)
                {
                    //if (matrix[nDiagonal, mDiagonal] > maxDistance)
                    //{
                    //    return matrix[nDiagonal, mDiagonal];// false;
                    //}
                    //else
                    //{
                    nDiagonal++;
                    mDiagonal++;

                    if (nDiagonal >= s1.Length || mDiagonal >= s2.Length)
                    {
                        double a = Convert.ToDouble(matrix[nDiagonal, mDiagonal]) / Convert.ToDouble(s1.Length) * 100;
                        //if (s1.Length > s2.Length || s2.Length > s1.Length)
                        //a /= 2;
                        return a;
                    }
                    //}
                }
            }

            return 0;// true;
        }

        private static int Min(int n1, int n2, int n3)
        {
            return System.Math.Min(n1, System.Math.Min(n2, n3));
        }

        public static string ConvertToUnSign(string s)
        {
            Regex regex = new Regex("\\p{IsCombiningDiacriticalMarks}+");
            string temp = s.Normalize(NormalizationForm.FormD);
            return regex.Replace(temp, String.Empty).Replace('\u0111', 'd').Replace('\u0110', 'D');
        }
    }
}
