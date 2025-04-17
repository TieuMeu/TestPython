class Solution:
    def isPalindrome(self, x: int) -> bool:
         return str(x) == str(x)[::-1]

if __name__ == "__main__":
    x = int(input("Nhập số: "))
    solution = Solution()  
    if solution.isPalindrome(x):  
        print("giống")
    else:
        print("dell phải")
    
