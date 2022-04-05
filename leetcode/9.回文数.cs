/*
 * @lc app=leetcode.cn id=9 lang=csharp
 *
 * [9] 回文数
 */

using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Solution9
{
    // @lc code=start
    public class Solution
    {
        public bool IsPalindrome(int x)
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
        public void Test(int x, bool assert)
        {
            var re = new Solution9.Solution().IsPalindrome(x);

            Assert.IsTrue(re == assert);
        }
    }
}
