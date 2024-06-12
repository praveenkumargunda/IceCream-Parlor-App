
CREATE TABLE IF NOT EXISTS seasonal_flavors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT,
    ingredients TEXT
);

CREATE TABLE IF NOT EXISTS ingredients (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    allergen BOOLEAN DEFAULT 0
);

CREATE TABLE IF NOT EXISTS customer_suggestions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    suggested_flavor TEXT NOT NULL,
    allergens TEXT
);

CREATE TABLE IF NOT EXISTS cart (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    flavor_id INTEGER,
    FOREIGN KEY (flavor_id) REFERENCES seasonal_flavors (id)
);
