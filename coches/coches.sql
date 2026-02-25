CREATE TABLE coches (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    anno INT,
    color VARCHAR(30),
    tipo_combustible VARCHAR(20),  -- gasolina, diesel, electrico, hibrido
    precio DECIMAL(10,2),
    kilometros INT,
    potencia_cv INT,
    puertas INT,
    transmision VARCHAR(20),       -- manual, automatica
    pais_origen VARCHAR(50),
    disponible BOOLEAN,
    fecha_registro DATE
);


INSERT INTO coches (marca, modelo, anno, color, tipo_combustible, precio, kilometros, potencia_cv, puertas, transmision, pais_origen, disponible, fecha_registro) VALUES
('Toyota', 'Corolla', 2020, 'Blanco', 'gasolina', 18000, 35000, 120, 5, 'manual', 'Japón', TRUE, '2023-01-10'),
('Ford', 'Focus', 2019, 'Rojo', 'diesel', 15000, 60000, 115, 5, 'manual', 'USA', TRUE, '2023-02-15'),
('Tesla', 'Model 3', 2022, 'Negro', 'electrico', 42000, 10000, 283, 5, 'automatica', 'USA', FALSE, '2023-03-20'),
('BMW', '320i', 2021, 'Azul', 'gasolina', 35000, 20000, 184, 4, 'automatica', 'Alemania', TRUE, '2023-04-18'),
('Toyota', 'Yaris', 2018, 'Gris', 'hibrido', 14000, 70000, 100, 5, 'manual', 'Japón', TRUE, '2023-05-12'),
('Ford', 'Mustang', 2021, 'Rojo', 'gasolina', 50000, 15000, 450, 3, 'manual', 'USA', FALSE, '2023-06-01'),
('BMW', 'X5', 2022, 'Blanco', 'diesel', 60000, 8000, 265, 5, 'automatica', 'Alemania', TRUE, '2023-06-15'),
('Tesla', 'Model Y', 2023, 'Blanco', 'electrico', 48000, 5000, 350, 5, 'automatica', 'USA', TRUE, '2023-07-01');

INSERT INTO coches (marca, modelo, anno, color, tipo_combustible, precio, kilometros, potencia_cv, puertas, transmision, pais_origen, disponible, fecha_registro) VALUES
('Audi', 'A3', 2020, 'Gris', 'diesel', 22000, 40000, 150, 5, 'manual', 'Alemania', TRUE, '2023-08-10'),
('Mercedes', 'Clase C', 2021, 'Negro', 'gasolina', 38000, 25000, 204, 4, 'automatica', 'Alemania', TRUE, '2023-09-05'),
('Hyundai', 'i30', 2019, 'Azul', 'gasolina', 16000, 55000, 120, 5, 'manual', 'Corea del Sur', TRUE, '2023-10-12'),
('Kia', 'Sportage', 2022, 'Blanco', 'hibrido', 27000, 18000, 150, 5, 'automatica', 'Corea del Sur', FALSE, '2023-11-01'),
('Nissan', 'Qashqai', 2018, 'Rojo', 'diesel', 17000, 75000, 130, 5, 'manual', 'Japón', TRUE, '2023-12-03'),
('Volkswagen', 'Golf', 2020, 'Negro', 'gasolina', 21000, 30000, 140, 5, 'manual', 'Alemania', TRUE, '2024-01-15'),
('Peugeot', '3008', 2021, 'Gris', 'diesel', 26000, 22000, 180, 5, 'automatica', 'Francia', TRUE, '2024-02-10'),
('Renault', 'Clio', 2019, 'Blanco', 'gasolina', 13000, 65000, 90, 5, 'manual', 'Francia', FALSE, '2024-03-05'),
('Seat', 'León', 2022, 'Azul', 'hibrido', 24000, 12000, 150, 5, 'automatica', 'España', TRUE, '2024-04-18'),
('Volvo', 'XC40', 2023, 'Verde', 'electrico', 52000, 7000, 408, 5, 'automatica', 'Suecia', TRUE, '2024-05-22');