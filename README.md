\# School Management Information System (SMIS)



A hands-on portfolio project combining MySQL database development, Python, Django and Django REST Framework to explore how a school management system can be built.



I started with the database design and SQL work, then developed a Django web application and REST API around the core academic records. Through this project, I have been practising relational database design, backend development, authentication, API endpoints, database connectivity and troubleshooting.



\## Project Overview



The system is designed around common academic administration tasks, including maintaining course information, managing student records and tracking enrollments.



The project combines database development with a working web application and REST API. I use it to practise backend development, test endpoints, troubleshoot database issues and understand how the different components of a web application work together.



\## Features



\### Django Web Application



\- Dashboard displaying summary counts for students, courses, intakes and enrollments.

\- Login-protected dashboard.

\- Django authentication and session handling.

\- MySQL integration through Django's database configuration and ORM.



\### REST API



The API is built with Django REST Framework and exposes endpoints for these resources:



\- Course providers

\- Courses

\- Intakes

\- Students

\- Enrollments



The implemented API viewsets support standard CRUD operations and require authentication. Related database records are retrieved using `select\_related()` where appropriate.



\*\*Local API base URL:\*\* `http://127.0.0.1:8000/api/`



\### Database and SQL Development



The wider database work covers:



\- Course providers, courses and intakes.

\- Students, guardians and enrollments.

\- Component-based fees and partial payments.

\- Outstanding balance calculations.

\- Exams, results and attendance.

\- Graduation and certificate records.

\- Advanced SQL reporting.



These topics form part of the broader database design and SQL work. The current Django application and API focus on the core provider, course, intake, student and enrollment resources.



\## Technology Stack



| Technology | Purpose |

|---|---|

| MySQL 8.4 | Relational database |

| MySQL Workbench | Database access, inspection and administration |

| Python 3.12 | Backend programming |

| Django 5.2 | Web application framework |

| Django REST Framework | REST API development |

| Django ORM | Database access and model relationships |

| Postman | API exploration and testing |

| Git and GitHub | Version control and project sharing |




The application follows a straightforward structure:



## Architecture

```text
                 Users
                   |
          +--------+--------+
          |                 |
     Web Dashboard        REST API
          |                 |
          +--------+--------+
                   |
                 Django
          (Views, Models, Logic)
                   |
                MySQL
             (Database)
```

Postman can be used to test the REST API. Git and GitHub manage source control and project publication.



Django handles the web application and authentication, while Django REST Framework exposes the implemented resources through API endpoints. Both use MySQL as the persistent data store.



\## Project Structure



```text

SMIS\_Full\_Portfolio\_Project/

├── docs/

│   ├── screenshots/

│   ├── ARCHITECTURE.md

│   └── ROADMAP\_COMPLETION.md

├── mysql\_admin/

│   ├── 01\_create\_app\_user.sql

│   └── 02\_backup\_restore.md

├── portfolio/

│   ├── ANDELA\_PROJECT\_ENTRY.md

│   └── WHISTIC\_PROJECT\_STORY.md

├── postman/

│   └── API\_GUIDE.md

├── smis\_web/

│   ├── config/

│   ├── core/

│   └── manage.py

├── sql/

│   └── advanced\_reports\_42\_50.sql

├── .env.example

├── .gitignore

├── README.md

└── requirements.txt

```



\## Screenshots



\### Application Dashboard



!\[SMIS Dashboard](docs/screenshots/Dashboard.png)



\### REST API



\*\*API root\*\*



!\[API Root](docs/screenshots/Api%20Root%20Dashboard.png)



\*\*Students\*\*



!\[Students API](docs/screenshots/Api%20Students%20list.png)



\*\*Courses\*\*



!\[Courses API](docs/screenshots/Api%20Course%20list.png)



\*\*Intakes\*\*



!\[Intakes API](docs/screenshots/Api%20Intakes%20List.png)



\*\*Enrollments\*\*



!\[Enrollments API](docs/screenshots/Api%20Enrollments%20List.png)



\## Running the Project Locally



\### Prerequisites



\- Python 3.12

\- MySQL 8.4

\- Git

\- A MySQL database and account configured for the application



\### 1. Clone the repository



After the project has been published to GitHub, clone it using the repository's actual URL:



```bash

git clone https://github.com/davidwanjohi-it/school-management-information-system.git

cd school-management-information-system

```



\### 2. Create and activate a virtual environment



From the project root, run:



```powershell

python -m venv smis\_web\\.venv

.\\smis\_web\\.venv\\Scripts\\Activate.ps1

```



\### 3. Install dependencies



```powershell

python -m pip install -r requirements.txt

```



\### 4. Configure environment variables



Create a `.env` file in the project root using `.env.example` as a template.



Configure the Django secret key, debug setting and MySQL connection details for your local environment. Do not commit `.env` or publish real database passwords or secret keys.



\### 5. Prepare the database



Create or configure the MySQL database and ensure the configured account has the required permissions. Apply Django migrations as appropriate for the database and migration state:



```powershell

cd smis\_web

python manage.py migrate

```



\### 6. Start the development server



```powershell

python manage.py runserver

```



Open `http://127.0.0.1:8000/` in your browser.



The API root is available at `http://127.0.0.1:8000/api/`. API resources require authentication.



\## Testing and Verification



The project includes basic Django model tests. During development, I have also checked Django's system configuration, verified migration status and tested the application's connection to MySQL.



The API can be explored using Postman or Django REST Framework's browsable API.



\## Skills I Am Developing



Through this project, I am building practical experience in:



\- Relational database design and SQL queries.

\- MySQL database access and administration using MySQL Workbench.

\- Django models and database relationships.

\- Connecting a Python application to MySQL.

\- Developing REST API endpoints.

\- Authentication and session handling.

\- Troubleshooting configuration and database connectivity.

\- Organizing code, dependencies and documentation for version control.



\## Future Plans



One of my longer-term goals is to develop a school-focused commercial website that can work alongside this SMIS project.



The public-facing website could provide school information, programmes, admissions details and enquiry functionality, while the management system would focus on internal academic records and administration.



I plan to explore how the two systems could communicate securely through APIs, with appropriate authentication and access controls. This would be a separate stage of development; the commercial website and its integration are not yet implemented.



\## Other Projects



SMIS is part of my ongoing hands-on learning in backend development, databases, systems administration and security.



I also work on other technical projects and practical labs, exploring different tools and documenting what I learn.



\- \*\*GitHub profile:\*\* \[github.com/davidwanjohi-it](https://github.com/davidwanjohi-it)

\- \*\*Network Security Auditing Lab:\*\* \[github.com/davidwanjohi-it/network-security-auditing](https://github.com/davidwanjohi-it/network-security-auditing)



The security lab explores security monitoring and log analysis, including Splunk and an alert workflow integrating Splunk with Jira. Together, these projects reflect my interest in both application development and practical IT systems.

## Copyright and Usage

Copyright © 2026 David Wanjohi Rubucwa. All rights reserved.

This repository is published for portfolio review and demonstration of my software development work. Unless I grant explicit written permission or applicable law provides otherwise, no permission is granted to reproduce, redistribute, modify, or commercially exploit my original source code or documentation.

Third-party libraries and components remain subject to their respective licenses.

Viewing this repository does not transfer ownership of the original work.

\## Project Status



This is an ongoing hands-on learning and portfolio project. It includes an implemented Django application and REST API for core academic records, alongside broader MySQL database design and SQL development work.



It is not presented as a fully deployed production school management system. My next steps include expanding the test coverage, strengthening the API, continuing the database work and exploring the planned public-facing school website.
