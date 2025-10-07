import math

class Node:
    def __init__(self, value) -> None:
        self.__value = value
        self.__next = None

    @property
    def value(self):
        return self.__value

    @value.setter
    def value(self, value):
        self.__value = value
    
    @property
    def next(self):
        return self.__next

    @next.setter
    def next(self, value):
        self.__next = value

    @property
    def list_length(self) -> int:
        if self.next == None:
            return 1
        
        length = 1
        while self.next != None:
            length += 1
            self = self.next
        return length 

    def getTwoThirdsNode(self, n):
        if n <= 1:
            return None

        times = math.floor(2*n / 3) - 1
        for _ in range(times):
            if self == None: return None

            self = self.next
            
        return self
        
if __name__ == "__main__":
    head = Node(0)
    head.next = Node(1)
    head.next.next = Node(2)
    head.next.next.next = Node(3)
    head.next.next.next.next = Node(4)
    
    print(head.getTwoThirdsNode(5).value)