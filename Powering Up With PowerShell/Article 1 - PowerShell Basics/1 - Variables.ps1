### Text and Integers

# Number variables being added
$Variable1 = 2
$Variable2 = 2
$Variable3 = $Variable1 + $Variable2
echo $Variable3

# Text variables being concatenated together
$Variable1 = "Rivia"
$Variable2 = ".io"
$Variable3 = $Variable1 + $Variable2
echo $Variable3

### Arrays

# Create empty array (Note Arrays use () brackets while Hastables use {})
$Array1 = @()

# Count how many values in the array
$Array1.count

# Create Array with data
$Array2 = @(0,1,2,3,4,5)

# Display Array 
echo $Array2

# Count how many values in the array
$Array2.count

# Other ways of creating Arrays
$Array3 = 'Zero','One','Two','Three'
echo $Array3

# Retrieve specific point of data from an array (Starts at 0 and counts up)
$Array3[1]

# Retrieve specific point of data from an array in reverse
$Array3[-1]

# Retrieve multiple points of data from the array
$Array3[0,3,1]

# Retrieve all data between two points
$Array3[0..3]

# Retrieve all data between two points in reverse
$Array3[3..0]

# Update an item in an array
$Array3[1] = 'Uno'
echo $Array3[1]


### Hash Tables


# Create empty HashTable variable (Note HashTables use {} brackets while Arrays use {})
$HashTable = @{}
echo $HashTable

# Create HashTable with pre-defined values
$HashTable = @{"John Doe" = 26; "Jane Doe" = 24}
echo $HashTable

# Count of how many key pairs are in the HashTable
$HashTable.Count

# Display the value for a specific key, in this case showing the age of the referenced name
$HashTable['John Doe']

# Display the value for a multiple keys, in this case showing the age of the referenced names
$HashTable['John Doe','Jane Doe']

# Add value to HashTable
$HashTable.add('Sam Smith' ,32)
echo $HashTable

# Remove value to HashTable
$HashTable.remove('John Doe')
echo $HashTable


### Custom Objects

# Create Custom Object, unlike arrays or hashtables objects represent a single entity
$Object = [PSCustomObject]@{
    Name = 'Jane Doe'
    Age = 29
    State = 'CA'
    ZipCode = 94102
}

# Display entire object as a default table
echo $Object

# Display entire object as a list
echo $Object | Format-List

# Display specific value
echo $Object.Name

# Add properties to Object
$Object | Add-Member -MemberType NoteProperty -name 'Gender' -Value 'F'
echo @Object