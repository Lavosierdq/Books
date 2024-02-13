# README

* Ruby version
ruby 3.0.1

### Database initialization
- PostgreeSql
### Database creation
1. System Dependencies
2. FrameWork Configuration
3. Define SGBD and ER Model usage
4. Create Database 

### 1.Create CRUD

  1. Register authors
  2. Register Books refered with Author
  3. Register Suppliers with an Account
  4. Register Parts refered with Supliers
  5. Register Assemblies with several Pieces linked to Books

### 2.Create API
  1. Register authors
  2. Register Books refered with Author
  3. Register Suppliers with an Account
  4. Register Parts refered with Supliers
  5. Register Assemblies with several  
  Pieces linked to Books

### 3.Rules
#### To alter
  1. add field in cnpj
  2. Add Checker Digit Field to Account
  3. Add ISBN Field in Book
  4. Add CPF Field in Author
- Calculate
  1. Check Digit in Account
- Validate
  1. CNPJ in Supplier
  2. ISBN in Book
  3. CPF  in Author
### 4.Filtros
#### Adicionar
  1. title field in Book
  2. name field in Part
- Filter
  1. Supplier by name
  2. Supplier by account number In Account
  3. Books by title
  4. Books by name in Author
  5. Assembly by name in Part
  6. Supplier by name of Author

### 5.Reports
#### To add
  1. value field in Part
- Report
  1. Author (with all the information) with his Books (with all the information) and the total number of books published
  2. Supplier (with all information) with all authors (with all information) and books (with all information)
  3. Book with the assembly (with all the information) with its parts (with all the information), the total number of parts and the total cost of the assembly
  4. testing the file.
