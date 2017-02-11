data MyNestedList a = Elem a | List [MyNestedList a]

myFlatten :: MyNestedList a  -> [a]
myFlatten (Elem x) = [x]
myFlatten (List (x:xs)) = myFlatten x ++ myFlatten (List xs)
myFlatten (List []) = []
