## **Functional Dependency (FD)**
- describes the relationship between attributes in a table. Value of 1 attribute (or set of attributes) describes other attribute.
  A -> B (A determines B, or B is determined by A)
  A = Determinant (can be composite)
  B = Dependant.
  
An attribute B is said to be functionally dependant on attribute A if each value of attribute A determines exactly one value of attribute B.

**Fully Dependant:** When each non-key values are dependant on the key value (Primary key). All values of att. B are determined by all values of att. A
        - e.g. - student_ID is primary key and student_ID -> Dept
**Partial Dependantcy:** When non-key values are not fully dependent on each key value (composite primary key). Value of att. B can depend on 1 value of A, but not other.
        - e.g - student_ID + course = composite Primary key,  student_ID -> Dept, (dept depends on student_id but not on course. hence dept  partially only dependant.)
**Transitive Dependancy:**: When a non-key attribute is dependant on other non-key attribute which in turn is dependant on a key attribute.
        - e.g - student -> subject -> teacher (teacher is not determined by student but is determined by subject which is determined by student, hence transitively dependent).



<hr>

# Normalization
- Structuring the database to remove the data redundancy
- Improves data integrity
- Easier to understand and enhance (as it makes sure data dependencies makes sense and is logically correct).
- Data is protected from - insertion anomaly, updation anomaly, deletion anomaly.
- It relies heavily on _functional dependencies_ to decompose tables into smaller, well-structured tables.

## Normal Forms: used to determine the level of anomly that can occur and re-structure the DB.
**3 Most important normal forms: 1NF, 2NF, 3NF (other complex ones - BCNF,4NF,5NF,6NF)**

- **1NF**:
    - All attributes must be atomic (indivisible) and multivalued attribues should not be present.
    - Rule: eliminate all duplicate columns and ensure each column contains atomic data.
- **2NF**:
    - Must be in 1NF already.
    - There should be no partial dependacy.
- **3NF**:
    - Must be in 2NF already.
    - There should be no transitive dependancy.
  -    
