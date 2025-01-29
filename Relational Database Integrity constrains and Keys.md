## Relational Model:
Represents how data is stored in a relational databse.
A collection of relations(tables), where each relation (table) have a distinct name.

## Relations = Tables 
<b>Attribute</b> = Field / Column

<b>Tuple</b> = Row / Records

<b>Degree: </b> no. of attributes/columns

<b>Cardinality: </b> no. of rows

<b>NULL: </b>: Unknown value

<b>Domain: </b> set of allowable values in 1 or more attributes 
            ![image](https://github.com/user-attachments/assets/c472d46f-02fc-4e45-99c4-03085dbed09d)

<hr>

## Data Integrity Constraints:
![image](https://github.com/user-attachments/assets/748a6efe-6f83-41c1-812e-6793761b3952)

- **Domain Integrity**:
- -           ensure values stored in a columm/attribute are valid and within a specific range or domain. ( eg: NOT NULL Constraint, CHECK Constraint)

- **Entity Integrity:**
-             -used to determine individual rows in a relation uniquely.
              - The _primary key_ value must be unique for each row in the table. -> no duplicate values to it.
          
- **Referencial Integrity:**
-             - Value in a column in 1 table must exist as a value of a column in another table.
              - _Foreign key_ in one table must either match a value in the referenced primary key of another table or be NULL.

  <hr>


**Super Key**: 
-               - The set of one or more attributes (columns) that can identify rows in a table is known as Super Key. 
                - It supports NULL values in rows. 
                - Default keys - every keys in a table - e.g. - SId, Branch, Reg_ID, Name, SId+Branch, Branch+Reg_id, Reg_id+SId, SId+Reg_id+Branch
                
**Candidate Key**: 
-                - Minimal set of attributes which can identify the row (Minimum keys only required - all are not required to identify rows - unnecessary)
                - if any subset of the super key is also a super key, then it can't be a candidate key.
                - eg - (SId+Reg_id+Branch) = super key, it's subset (Branch+Reg_id) also super key . Hence it's not = candidate key.
                - (Branch+Reg_id) = S.K, it's subset Branch, Reg_id both super keys. Hence Branch+Reg_id not = C.K
                - Thus SId, Reg_id, branch = Candidate keys.
                
**Primary Key**:
- A candidate key which is used to uniquely identify data. (Can pick any 1, candidate key)

**Alternate key**: 
- All other candidate keys which are not picked as primary key.

**Foreign key**: 
- An attribute in a table which is used to define a relationship with other table.
                - Lets us maintain data integrity 
                -eg- Branch is foreign key in 2 tables - if we change/del value from 1 table it shows error - hence accuracy maintained (Referencial Integrity (read above)).
                
**Composite key**: 
- Keys with more than 1 attribute in it. e.g - SId+Branch, Branch+Reg_id, Reg_id+SId, SId+Reg_id+Branch.

**Compound key**: 
- composite key with atleast one attribute as a foreign key. e.g. - SId+Branch, Branch+Reg_id, SId+Reg_id+Branch (as branch is a foreign key).

**Surrogate key**: 
- When there is no attribute which can be used as a primary key to identify rows in a table, then we create a key.
                  - adds no meaning to data, just for purpose of identifying rows.
