class Solution:
    def threeSumClosest(self, nums: list[int], target: int) -> int:
        n = len(nums)
        closest = float('inf')
        result = 0

        for i in range(n):
            for j in range(i + 1, n):
                for k in range(j + 1, n):
                    cur_sum = nums[i] + nums[j] + nums[k]
                    if abs(cur_sum - target) < abs(closest - target):
                        closest = cur_sum
        return closest
    
# if __name__ == "__main__":
#         nums = list(map(int, input("Nhập các số trong mảng (cách nhau bởi dấu cách): ").split()))
#         target = int(input("Nhập target: "))
#         solution = Solution()
#         result = solution.threeSumClosest(nums, target)
#         print(f"Tổng gần target nhất là: {result} ")
