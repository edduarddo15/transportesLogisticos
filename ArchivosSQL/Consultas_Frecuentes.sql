--***************************************************************

-- Query de clientes ordenado por estado y por documento

SELECT 
						nom_cliente as Nombre, 
						ape_cliente as Apellido, 
						num_identificacion as Documento, 
						estado as Estado
FROM public.cliente
ORDER BY 
						Estado desc, Documento ASC 


--***************************************************************

--Query de los servicios con sus ciudades destino y el valor por servicio 

SELECT 
						ser.id_servicio as "Numero Servicio", 
						ciu.nombre as "Ciudad Destino",  
						ser.fecha as "Fecha Servicio", 
						ser.valorservicio as Valor
FROM servicio ser
INNER JOIN ciudad ciu 
						on ser.id_ciudad_destino = ciu.id_ciudad
ORDER BY id_servicio ASC 

--***************************************************************

--Query de los empleados que trabajaron en un periodo determinado 

SELECT 
						con.nom_empleado as "Nombre Conductor", con.ape_empleado as "Apellido Conductor",
						aux.nom_empleado as "Nombre Auxiliar", aux.ape_empleado as "Apellido Auxiliar",
						ser.fecha as "Fecha Servicio"
						
FROM servicio ser
INNER JOIN empleado con
						on ser.id_conductor = con.id_empleado
INNER JOIN empleado aux
						on ser.id_auxiliar= aux.id_empleado
WHERE 
						ser.fecha between '2024-05-01' and '2024-05-31'

--***************************************************************

--Query de los empleados con contrato activo y fecha de inicio de labores

SELECT 
					nom_empleado as "Nombre Empleado", 
					ape_empleado as "Apellido Empleado", 
					fec_inicio_contrato as "Fecha de inicio de labores"
						
FROM empleado con				
WHERE 
					estado = 'Activo'
ORDER BY 3 ASC

--***************************************************************

--Query de los vehiculos actiuvos con su clasificacion

SELECT 
							veh.placa as "Placa",
							tip.descripcion as "Tipo vehiculo"
FROM vehiculo veh
INNER JOIN tipovehiculo tip 
							on veh.id_tip_vehiculo = tip.id_tipo
WHERE 
							veh.estado = 'Activo'
ORDER BY 2 ASC

--***************************************************************
