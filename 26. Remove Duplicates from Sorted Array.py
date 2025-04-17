from typing import List
class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        if not nums:
            return 0
        k = 1
        for i in range(1, len(nums)):  
            if nums[i] != nums[i-1]:
                nums[k] = nums[i]
                k += 1
        
        return k

# if __name__ == "__main__":
#     input_str = input("Input từng số vào mảng đây: ")
#     nums = list(map(int, input_str.split()))
#     solution = Solution()
#     k = solution.removeDuplicates(nums)
#     print(f"Còn: {k} số trong mảng bao gồm {nums[:k]}")