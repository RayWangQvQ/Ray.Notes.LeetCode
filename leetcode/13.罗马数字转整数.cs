/*
 * @lc app=leetcode.cn id=13 lang=csharp
 *
 * [13] 罗马数字转整数
 */

using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Solution13
{

    // @lc code=start
    public class Solution
    {
        private static Dictionary<char, int> dic = new()
        {
            { 'I', 1 },
            { 'V', 5 },
            { 'X', 10 },
            { 'L', 50 },
            { 'C', 100 },
            { 'D', 500 },
            { 'M', 1000 },

            //{"IV", 4},
            //{"IX", 9},
            //{"XL", 40},
            //{"XC", 90},
            //{"CD", 400},
            //{"CM", 900},
        };

        private static Dictionary<string, int> specialDic = new Dictionary<string, int>()
        {
            {"IV", 4},
            {"IX", 9},
            {"XL", 40},
            {"XC", 90},
            {"CD", 400},
            {"CM", 900},
        };

        private static char[] special = new[] { 'I', 'X', 'C' };

        public int RomanToInt(string s)
        {
            var re = 0;
            for (int i = 0; i < s.Length; i++)
            {
                if (special.Contains(s[i]) && i != s.Length - 1)
                {
                    var doubleKey = $"{s[i]}{s[i + 1]}";
                    var suc = specialDic.TryGetValue(doubleKey, out int value);
                    if (suc)
                    {
                        re += value;
                        i++;
                        continue;
                    }
                }
                re += dic[s[i]];
            }
            return re;
        }
    }
    // @lc code=end

    [TestClass]
    public class TestSolution
    {
        [TestMethod]
        [DataRow("III", 3)]
        [DataRow("IV", 4)]
        [DataRow("IX", 9)]
        [DataRow("LVIII", 58)]
        [DataRow("MCMXCIV", 1994)]
        public void Test(string s, int result)
        {
            var re = new Solution().RomanToInt(s);
            Assert.IsTrue(re == result);
        }
    }
}