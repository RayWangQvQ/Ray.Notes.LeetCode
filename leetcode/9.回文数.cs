/*
 * @lc app=leetcode.cn id=9 lang=csharp
 *
 * [9] 回文数
 */

using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace Solution9
{
    // @lc code=start
    public class Solution
    {
        public bool IsPalindrome(int x)
        {
            //return 转字符串(x);
            //return 倒转数字(x);
            return 倒转一半数字(x);
        }

        private bool 转字符串(int x)
        {
            var s = x.ToString();

            // 判断字符串是否对称
            var length = s.Length;
            for (var i = 0; i < length / 2 + 1; i++)
            {
                if (s[i] != s[length - 1 - i]) return false;
            }
            return true;
        }

        private bool 倒转数字(int x)
        {
            if (x < 0) return false;

            var source = x;
            double reverse = 0;

            int count = 0;
            while (x > 0)
            {
                x /= 10;
                count++;
            }

            x = source;
            for (int i = 1; i <= count; i++)
            {
                var remainder = x % 10;
                reverse += remainder * Math.Pow(10, count - i);

                x /= 10;
            }

            return source == reverse;
        }

        private bool 倒转一半数字(int x)
        {
            if (x < 0) return false;
            if (x % 10 == 0 && x != 0) return false;

            int reverseHalf = 0;

            while (x > reverseHalf)
            {
                var remainder = x % 10;
                reverseHalf = reverseHalf * 10 + remainder;

                x /= 10;
            }

            return x == reverseHalf || x == reverseHalf / 10;
        }
    }
    // @lc code=end

    [TestClass]
    public class TestSolution
    {
        [TestMethod]
        [DataRow(121, true)]
        [DataRow(0, true)]
        [DataRow(12321, true)]
        [DataRow(123, false)]
        [DataRow(21, false)]
        [DataRow(10, false)]
        public void Test(int x, bool assert)
        {
            var re = new Solution9.Solution().IsPalindrome(x);

            Assert.IsTrue(re == assert);
        }
    }
}
