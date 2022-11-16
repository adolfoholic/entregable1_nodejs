insert
	into
	users (
			id, 
			name, 
			email, 
			"password", 
			age, 
			country, 
			gender,
		)
values (
			'51b42988-86f7-4812-871a-35901d1eff8b', 
			'Adolfo Ruiz', 
			'adolfo.ruiz@academlo.com', 
			'root',
			33, 
			'PER', 
			'male',
			);
			
insert
	into
	roles (
			name)
values (
			'admin');
			
insert
	into
	roles (
			name)
values (
			'student'),
	   ( 
	   		'teacher');
	   		
	   	
insert
	into
	users (
			id, 
			name, 
			email, 
			"password", 
			age, 
			country, 
			gender,
			id_role
		)
values (
			'3a9593e3-82d6-4bc3-a120-6ac5bf75086c', 
			'Juan Delgado', 
			'juan.de@academlo.com', 
			'tsts',
			30, 
			'ARG', 
			'male',
			1
			);
insert
	into
	users (
			id, 
			name, 
			email, 
			"password", 
			age, 
			country, 
			gender,
			id_role
		)
values (
			'7bf3d3bc-bcdc-4dff-9cdd-48d6978fd655', 
			'Karen Bou', 
			'k.bou@academlo.com', 
			'rootroot',
			35, 
			'ECU', 
			'female',
			2
			);
insert
	into
	users (
			id, 
			name, 
			email, 
			"password", 
			age, 
			country, 
			gender,
			id_role
		)
values (
			'eeb9cf73-2829-4648-aa00-14b8caf5ed7a', 
			'Carlos Ruiz', 
			'cruiz8@academlo.com', 
			'carl',
			60, 
			'PER', 
			'male',
			3
			);
			
insert
	into
	categories (
			name)
values (
			'developer technologies'),
	   ( 
	   		'networks and telecomunications');
	   		
	   	
insert
	into
	courses (
			id,
			title,
			description,
			level,
			id_user,
			id_category)
	values (
			'd5b274ba-0497-45e7-86bb-fadf813d3a77',
			'javascript',
			'javascript fundamentals',
			'beginner',
			'7bf3d3bc-bcdc-4dff-9cdd-48d6978fd655',
			1),
			('07b97f42-981e-4092-97b7-f3c2c706e132',
			'CCNA 1',
			'CCNA Essentials',
			'intermediate',
			'51b42988-86f7-4812-871a-35901d1eff8b',
			2
			);
			
insert
	into
	courses_videos (
				id,
				title,
				url,
				id_course)
	values (
			'1f5661a0-5412-4076-bf45-2c62b2de602c',
			'Basic Operators',
			'www.cursosfast.com/js/video1',
			'd5b274ba-0497-45e7-86bb-fadf813d3a77'),
			(
			'5fde7268-ecc5-4e94-b232-feca483e3c0f',
			'Networks concepts',
			'www.cursosfast.com/netw/video1',
			'07b97f42-981e-4092-97b7-f3c2c706e132');
			
insert 
	into
	courses_users (
				id,
				id_course,
				id_user)
	values ('303ff584-5506-46f9-89fb-ac9f53308596',
			'd5b274ba-0497-45e7-86bb-fadf813d3a77',
			'7bf3d3bc-bcdc-4dff-9cdd-48d6978fd655'),
			('3a89e37f-5e3a-483f-9a05-0ed88b68f457',
			 '07b97f42-981e-4092-97b7-f3c2c706e132',
			 '51b42988-86f7-4812-871a-35901d1eff8b');