# Ada Array Index Out of Bounds Bug

This repository demonstrates a common runtime error in Ada programs: accessing an array element outside of its declared bounds.  The `bug.ada` file contains the erroneous code. The `bugSolution.ada` file provides a corrected version.

The error occurs because Ada's array indexing is strictly checked at runtime.  Attempting to access an element beyond the array's limits results in a `Constraint_Error` exception, causing the program to terminate.

**How to Reproduce:**
1. Compile `bug.ada` using an Ada compiler (like GNAT).
2. Run the compiled executable.  The program will crash with a `Constraint_Error` exception.

**Solution:**
The corrected code in `bugSolution.ada` addresses the issue by ensuring that all array accesses are within the valid index range (1..10 in this case).  Appropriate error handling or checks should be incorporated to prevent such errors in production code.