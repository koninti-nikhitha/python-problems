class Solution:
    def nextLargerElement(self, arr):
        # code here
        ans=[]
        stack=[]
        for ind in range(len(arr)-1,-1,-1):
            currele=arr[ind]
            while(len(stack)!=0 and stack[-1]<=currele):
                stack.pop()
            if len(stack)==0:
                ans.append(-1)
            else:
                ans.append(stack[-1])
            stack.append(currele)
        return (ans[::-1])
        


class Solution:
    def preGreaterElement(self, arr):
        ans = []
        stack = []

        for i in range(len(arr)):
            curr = arr[i]

            # Pop smaller or equal elements
            while stack and stack[-1] <= curr:
                stack.pop()

            # If stack is empty, no previous greater element
            if not stack:
                ans.append(-1)
            else:
                ans.append(stack[-1])

            # Push current element
            stack.append(curr)

        return ans

class Solution:
	def preSMALLESTEle(self, arr):
		# code here
		ans=[]
		stack=[]
		n=len(arr)
		for ind in range(0,n):
		    currele=arr[ind]
		    while(len(stack)!=0 and stack[-1]>=currele):
		        stack.pop()
		    if len(stack)==0:
		        
		        ans.append(-1)
		    else:
		        ans.append(stack[-1])
		    stack.append(currele)
		return ans
		  
