**ER Model:** It is a model for identifying relationships between entities.
# Uses of ER Model:
- Provides real world modeling of objects.
- Simplified understanding of relationships.
- No technical knowledge required.
- Easy to visualise and design data logically.

## ER Diagram Components:
![image](https://github.com/user-attachments/assets/577aeabc-c32b-4ac5-ab0c-c8e1bb4bfdb3)

- **Enity:** A real-world object on which we intent to collect data.
    - Strong entity: Entity that has a key attribute(primary key) and does not depend on other entity.
    - Weak Entity: Entity which relies over other entity.
  
- **Attribute:** properties which describe an entity.
      - Key attribute: which uniquely identifies an entity from an entity set. e.g. - Roll_No
      - Derived attribute: which is derived from other attribute. e.g - age attribute derived from DOB attribute.
      - Composite attribute: attribute composed of other attributes. e.g - Name - consists of FirstName, MiddleName, lastname.
      - Multivalues attribute: attribute having more than 1 value. e.g - Ph_no.
  
- **Relationship**: shows relationship among entities.
    - Degree: unary, binary, ternary - how many entities are participating in a relation.
    - Cardinality: how many times an element from entity set involved in a relation.
      - One to One: where single element of one entity is associated with a single element from other entity.
      - One to many: where single element of one entity is associated with a multiple elements from other entity.
      - Many to one: where multiple elements of one entity is associated with a single element from other entity.
      - Many to many: where multiple elements of one entity is associated with a multiple elements from other entity.
  

**Participation Constraint**
Participation Constraint is applied to the entity participating in the relationship set.

1. Total Participation – Each entity in the entity set must participate in the relationship. If each student must enroll in a course, the participation of students will be total. Total participation is shown by a double line in the ER diagram.

2. Partial Participation – The entity in the entity set may or may NOT participate in the relationship. If some courses are not enrolled by any of the students, the participation in the course will be partial.


## Functional dependancy and Normalisation**
- ER Concept: Defines the high-level structure of the database, including entities, attributes, and relationships.

- Functional Dependency: Identifies the relationships between attributes within entities, which helps in understanding how data should be organized.

- Normalization: Uses functional dependencies to refine the ER model into a set of well-structured tables that minimize redundancy and ensure data integrity.




