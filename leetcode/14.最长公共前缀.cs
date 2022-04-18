/*
 * @lc app=leetcode.cn id=14 lang=csharp
 *
 * [14] 最长公共前缀
 */

using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Solution14
{

    // @lc code=start
    public class Solution
    {
        public string LongestCommonPrefix(string[] strs)
        {
            var re = "";

            if (strs == null || strs.Length == 0) return re;

            var refer = strs[0];
            for (int i = 0; i < refer.Length; i++)
            {
                for (var j = 1; j < strs.Length; j++)
                {
                    if (strs[j].Length - 1 < i) return re;
                    if (strs[j][i] != refer[i]) return re;
                }
                re += refer[i];
            }

            return re;
        }
    }
    // @lc code=end

    [TestClass]
    public class TestSolution
    {
        [TestMethod]
        [DataRow(new string[] { "flower", "flow", "flight" }, "fl")]
        [DataRow(new string[] { "dog", "racecar", "car" }, "")]
        [DataRow(new string[]{ "" }, "")]
        public void Test(string[] strs, string target)
        {
            var re= new Solution14.Solution().LongestCommonPrefix(strs);
            Assert.IsTrue(re==target);
        }
    }
}