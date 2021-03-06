/*
 * @lc app=leetcode.cn id=1 lang=csharp
 *
 * [1] 两数之和
 */
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Solution1
{
    // @lc code=start
    public class Solution
    {
        public int[] TwoSum(int[] nums, int target)
        {
            for (int i = 0; i < nums.Length; i++)
            {
                for (int j = i + 1; j < nums.Length; j++)
                {
                    if (nums[i] + nums[j] == target)
                        return new int[] { i, j };
                }
            }
            return null;
        }
    }
    // @lc code=end

    [TestClass]
    public class TestSolution
    {
        [TestMethod]
        [DataRow(new[] { 2, 7, 11, 15 }, 9)]
        public void Test(int[] nums, int target)
        {
            var t = new Solution1.Solution();
            var re = t.TwoSum(nums, target);

            Assert.IsTrue(nums[re[0]] + nums[re[1]] == target);
        }
    }
}
