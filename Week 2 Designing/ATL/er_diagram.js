erDiagram
    passengers ||--o{ check_ins : has
    flights ||--o{ check_ins : has
    airlines ||--o{ flights : operates
    concourses ||--o{ airlines : hosts
    airports ||--o{ flights : "departs from"
    airports ||--o{ flights : "arrives at"

    passengers {
        int id PK
        string first_name
        string last_name
        int age
    }
    check_ins {
        int id PK
        int passenger_id FK
        datetime timestamp
        int flight_id FK
    }
    airlines {
        int id PK
        string name
        int concourse_id FK
    }
    concourses {
        int id PK
        string code
    }
    flights {
        int id PK
        int flight_num
        int airline_id FK
        int from_airport_id FK
        int to_airport_id FK
        datetime departure_time
        datetime arrive_time
    }
    airports {
        int id PK
        int code
    }
