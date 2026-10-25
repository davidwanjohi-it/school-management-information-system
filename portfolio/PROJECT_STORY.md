\# School Management Information System (SMIS)

\## Full Story and Future Development Plan



\### Project overview



The School Management Information System (SMIS) is a personal software development project designed to explore how a training institution can manage student information, courses, intakes and enrolments through a relational database and a web application.



The project combines MySQL database design, SQL, Python, Django and Django REST Framework. My aim is to build the system incrementally, test each component, document the implementation and develop it towards a more complete school management platform.



\### What I have implemented



The current application includes:



\- \*\*Relational database:\*\* MySQL database connectivity and structured data models for the core academic records.

\- \*\*Course management:\*\* Course providers and courses, allowing courses to be organized by provider.

\- \*\*Student records:\*\* Student information managed through the Django application.

\- \*\*Intake management:\*\* Records of academic or training intakes.

\- \*\*Enrolments:\*\* Relationships connecting students with the relevant courses and intakes.

\- \*\*Web dashboard:\*\* A login-protected dashboard displaying counts of students, courses, intakes and enrolments.

\- \*\*REST API:\*\* Django REST Framework endpoints for accessing the core records, with authentication and CRUD operations.

\- \*\*Database administration:\*\* SQL scripts and documentation covering application database access, permissions, and backup and restore procedures.

\- \*\*Testing and documentation:\*\* Django system checks, database connection verification, automated tests and project setup documentation.



The implementation is being developed and tested locally. The repository documentation and screenshots provide supporting evidence of the current application.



\### Technical approach



The project uses a practical development workflow:



1\. Design the data structure and relationships.

2\. Implement the models and database integration.

3\. Build application views and API endpoints.

4\. Test functionality and troubleshoot errors.

5\. Document configuration, setup and administration.

6\. Track changes with Git and prepare the project for GitHub.



This approach helps me understand not only how to write application code, but also how database design, authentication, API development, testing and deployment preparation fit together.



\### Planned future upgrades



The current application is a foundation, not a finished commercial school management system. The following improvements are planned as separate development milestones.



\*\*1. Finance and payments\*\*

\- Introduce configurable fee structures.

\- Record student payments and payment history.

\- Calculate outstanding balances and produce fee collection reports.



\*\*2. Academic records\*\*

\- Add examination records and results.

\- Introduce attendance tracking.

\- Generate academic performance and attendance reports.



\*\*3. Graduation and certificates\*\*

\- Track completion and graduation status.

\- Record certificate issuance.

\- Implement and test eligibility rules, including outstanding-balance checks where required.



\*\*4. User roles and permissions\*\*

\- Develop role-based access for administrative, academic and accounts staff.

\- Restrict sensitive functions and records according to each user's responsibilities.

\- Expand authentication and authorization testing.



\*\*5. Reporting and database performance\*\*

\- Build more advanced SQL reports and dashboard summaries.

\- Review indexes, query execution plans and data integrity.

\- Test larger sample datasets and improve performance where needed.



\*\*6. Public-facing school website and API integration\*\*

\- Develop a separate public-facing website for prospective students.

\- Present institution information, courses, admissions guidance and relevant announcements.

\- Integrate the public website with the SMIS through API endpoints where appropriate.

\- Keep public information separate from private student and administrative records.



\*\*7. Deployment and operational readiness\*\*

\- Prepare a secure deployment configuration.

\- Separate development and production settings.

\- Improve logging, error handling, backup and recovery procedures.

\- Add deployment documentation and repeatable testing.



\### Current status and direction



The core Django application, MySQL connection, dashboard and initial REST API are implemented and have passed the current local checks and tests. Additional business modules, broader permissions, deployment and public website integration remain future work unless specifically documented as completed.



The long-term goal is to turn this foundation into a more complete, maintainable and secure school management platform while continuing to build practical skills in backend development, database engineering, API integration and application operations.



This is an evolving personal project. Features will be added and verified in stages, with the documentation updated to distinguish implemented functionality from planned improvements.
