--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4beta3
-- Dumped by pg_dump version 9.4beta3
-- Started on 2015-06-22 15:46:43

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 2384 (class 0 OID 98958)
-- Dependencies: 195
-- Data for Name: content; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO content (id, path, parent_id, name, created_by, created_date, content_type_id, template_id, meta, public_access_members, public_access_member_groups, user_permissions, user_group_permissions, is_abstract) VALUES (1, '1', NULL, 'Home', 1, '2015-03-27 21:22:51.805', 2, 2, '{"title": "Home", "domains": ["localhost:8080", "localhost:8080/test"], "copyright": "&copy; 2014 codeish.com", "site_name": "Collexy test site", "about_text": "<p>This is <strong>TXT</strong>, yet another free responsive site template designed by <a href=\"http://n33.co\">AJ</a> for <a href=\"http://html5up.net\">HTML5 UP</a>. It is released under the <a href=\"http://html5up.net/license/\">Creative Commons Attribution</a> license so feel free to use it for whatever you are working on (personal or commercial), just be sure to give us credit for the design. That is basically it :)</p>", "about_title": "About title here", "banner_link": "http://somelink.test", "hide_banner": false, "hide_in_nav": false, "is_featured": false, "site_tagline": "Test site tagline", "banner_header": "Banner header goes here", "facebook_link": "facebook.com/home", "banner_link_text": "Click Here!", "banner_subheader": "Banner subheader goes here", "banner_background_image": "/media/Sample Images/TXT/banner.jpg"}', NULL, NULL, NULL, NULL, false);
INSERT INTO content (id, path, parent_id, name, created_by, created_date, content_type_id, template_id, meta, public_access_members, public_access_member_groups, user_permissions, user_group_permissions, is_abstract) VALUES (5, '1.5', 1, 'Get Involved', 1, '2015-03-27 21:51:57.503', 5, 3, '{"image": "/media/Sample Images/TXT/pic04.jpg", "title": "Get Involved", "content": "Get Involved content goes here", "hide_in_nav": false, "is_featured": true}', NULL, NULL, NULL, NULL, false);
INSERT INTO content (id, path, parent_id, name, created_by, created_date, content_type_id, template_id, meta, public_access_members, public_access_member_groups, user_permissions, user_group_permissions, is_abstract) VALUES (8, '1.6.8', 6, 'Txt Starter Kit For Collexy Released', 1, '2015-03-27 21:59:24.379', 3, 4, '{"title": "TXT Starter Kit For Collexy Released", "content": "The collexy TXT starter kit is just awesome!", "hide_in_nav": false, "is_featured": true}', NULL, NULL, NULL, NULL, false);
INSERT INTO content (id, path, parent_id, name, created_by, created_date, content_type_id, template_id, meta, public_access_members, public_access_member_groups, user_permissions, user_group_permissions, is_abstract) VALUES (9, '1.6.9', 6, 'You Need To Read This', 1, '2015-03-27 22:03:09.422', 3, 4, '{"title": "You Need To Read This", "content": "See - you really needed to read this post!", "hide_in_nav": false, "is_featured": true}', NULL, NULL, NULL, NULL, false);
INSERT INTO content (id, path, parent_id, name, created_by, created_date, content_type_id, template_id, meta, public_access_members, public_access_member_groups, user_permissions, user_group_permissions, is_abstract) VALUES (6, '1.6', 1, 'Posts', 1, '2015-03-27 21:54:10.787', 4, 5, '{"title": "Posts", "hide_in_nav": false, "is_featured": true}', NULL, NULL, NULL, NULL, false);
INSERT INTO content (id, path, parent_id, name, created_by, created_date, content_type_id, template_id, meta, public_access_members, public_access_member_groups, user_permissions, user_group_permissions, is_abstract) VALUES (2, '1.2', 1, 'Welcome', 1, '2015-03-27 21:31:55.462', 5, 3, '{"image": "/media/Sample Images/TXT/pic01.jpg", "title": "Welcome", "content": "Welcome content goes here", "hide_in_nav": false, "is_featured": true, "test_radio_button_list": ["val2"]}', NULL, NULL, '{"2": {"permissions": ["node_create", "node_delete", "node_update", "node_move", "node_copy", "node_public_access", "node_permissions", "node_send_to_publish", "node_sort", "node_publish", "node_browse", "node_change_content_type"]}}', NULL, false);
INSERT INTO content (id, path, parent_id, name, created_by, created_date, content_type_id, template_id, meta, public_access_members, public_access_member_groups, user_permissions, user_group_permissions, is_abstract) VALUES (3, '1.3', 1, 'Getting Started', 1, '2015-03-27 21:46:13.265', 5, 3, '{"image": "/media/Sample Images/TXT/pic02.jpg", "title": "Getting Started", "content": "Getting Started content goes here", "hide_in_nav": false, "is_featured": true}', NULL, NULL, NULL, '{"1": {"permissions": ["node_create", "node_delete", "node_update", "node_move", "node_copy", "node_public_access", "node_permissions", "node_send_to_publish", "node_sort", "node_publish", "node_browse", "node_change_content_type"]}, "2": {"permissions": ["node_update"]}}', false);
INSERT INTO content (id, path, parent_id, name, created_by, created_date, content_type_id, template_id, meta, public_access_members, public_access_member_groups, user_permissions, user_group_permissions, is_abstract) VALUES (11, '1.6.11', 6, 'Categories', 1, '2015-03-27 22:17:32.659', 6, NULL, '{"title": "Categories", "content": "Categories", "hide_in_nav": false, "is_featured": true}', NULL, NULL, NULL, NULL, false);
INSERT INTO content (id, path, parent_id, name, created_by, created_date, content_type_id, template_id, meta, public_access_members, public_access_member_groups, user_permissions, user_group_permissions, is_abstract) VALUES (4, '1.4', 1, 'Documentation', 1, '2015-03-27 21:50:23.197', 5, 3, '{"image": "/media/Sample Images/TXT/pic03.jpg", "title": "Documentation", "content": "<p>Documentation content goes here1</p>\n", "hide_in_nav": false, "is_featured": true}', '{"1": true}', '{"1": true}', NULL, NULL, false);
INSERT INTO content (id, path, parent_id, name, created_by, created_date, content_type_id, template_id, meta, public_access_members, public_access_member_groups, user_permissions, user_group_permissions, is_abstract) VALUES (13, '1.13', 1, '404', 1, '2015-03-27 22:20:10.169', 5, 9, '{"title": "404", "content": "404 content goes here", "hide_in_nav": true, "is_featured": false}', NULL, NULL, NULL, NULL, false);
INSERT INTO content (id, path, parent_id, name, created_by, created_date, content_type_id, template_id, meta, public_access_members, public_access_member_groups, user_permissions, user_group_permissions, is_abstract) VALUES (14, '1.14', 1, 'Login', 1, '2015-03-27 22:21:19.482', 5, 7, '{"title": "Login", "content": "Login content goes here", "hide_in_nav": true, "is_featured": false}', NULL, NULL, NULL, NULL, false);
INSERT INTO content (id, path, parent_id, name, created_by, created_date, content_type_id, template_id, meta, public_access_members, public_access_member_groups, user_permissions, user_group_permissions, is_abstract) VALUES (12, '1.6.11.12', 11, 'Category 1', 1, '2015-03-27 22:18:45.865', 7, 6, '{"title": "Category 1", "content": "Category 1 content", "hide_in_nav": false, "is_featured": true}', NULL, NULL, NULL, NULL, false);
INSERT INTO content (id, path, parent_id, name, created_by, created_date, content_type_id, template_id, meta, public_access_members, public_access_member_groups, user_permissions, user_group_permissions, is_abstract) VALUES (7, '1.6.7', 6, 'Hello World', 1, '2015-03-27 21:55:03.797', 3, 4, '{"image": "/media/Sample Images/TXT/pic05.jpg", "title": "Hello World", "content": "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel tellus venenatis, iaculis eros eu, pellentesque felis. Mauris eleifend venenatis maximus. Fusce condimentum nulla augue, sed elementum nisl dictum ut. Sed ex arcu, efficitur eu finibus ac, convallis ut eros. Ut faucibus elit erat, ac venenatis velit cursus quis. Phasellus sapien elit, ullamcorper ac placerat at, consectetur eget ex. Integer augue sem, tempor nec hendrerit et, ullamcorper ut arcu.</p>\n\n<p>Pellentesque auctor et arcu at tristique. Suspendisse ipsum sapien, vulputate quis cursus eu, rhoncus sed nisi. Nulla euismod mauris vitae tellus iaculis convallis. Sed sodales, risus id sollicitudin aliquet, purus justo convallis dui, sit amet imperdiet elit mauris accumsan velit. Suspendisse dapibus sit amet quam in porta. Nam eleifend sodales dolor eget tempor. Sed pharetra aliquam dui, ultricies scelerisque orci luctus at. Proin eleifend neque quis dolor facilisis sollicitudin. Integer vel ligula nec metus sagittis lacinia at quis arcu. Sed in sem ut mauris laoreet euismod. Integer eu tincidunt lectus, nec varius libero. Proin nec interdum ex. Quisque non lacinia lectus, luctus molestie mi. Fusce lacus est, rhoncus sed nunc at, fermentum luctus ipsum.</p>\n\n<h3>Nunc pulvinar metus a erat fermentum bibendum</h3>\n\n<p>Phasellus mattis tempor dolor vitae feugiat. Sed aliquet massa nisi, in imperdiet mauris auctor in. Nam consectetur ut erat at suscipit. Integer faucibus eleifend rhoncus. Praesent vel bibendum elit, ut molestie metus. Maecenas efficitur, magna vel scelerisque pretium, magna elit vehicula massa, dignissim posuere felis enim a lectus. Donec eget semper urna. Praesent vel nisi id lacus tincidunt pretium vitae eu sapien. Duis varius nisi velit, nec maximus arcu blandit sit amet. Proin dapibus dui et elit dapibus, sit amet rhoncus nisl lobortis. Nunc pretium, lorem eu dignissim mollis, ex nisi mollis lectus, eu blandit arcu nisl vel elit. Mauris risus ipsum, elementum quis eleifend ut, venenatis sit amet orci. Donec ac orci aliquam, vulputate odio eget, pulvinar elit. Cras molestie urna eget justo hendrerit aliquam.</p>\n", "categories": [12], "sub_header": "Subheader for Hello World", "hide_in_nav": false, "is_featured": true, "date_published": "2015-16-03 20:55:38"}', NULL, NULL, NULL, NULL, false);
INSERT INTO content (id, path, parent_id, name, created_by, created_date, content_type_id, template_id, meta, public_access_members, public_access_member_groups, user_permissions, user_group_permissions, is_abstract) VALUES (10, '1.6.10', 6, 'Amazing Post', 1, '2015-03-27 22:05:14.042', 3, 4, '{"image": "/media/Sample Images/TXT/pic05.jpg", "title": "Amazing Post", "content": "<p>What an amazing post. What an amazing post. What an amazing post. What an amazing post. What an amazing post. What an amazing post. What an amazing post.</p>\n", "sub_header": "Amazing subheader here!", "hide_in_nav": false, "is_featured": true}', NULL, NULL, NULL, NULL, false);


--
-- TOC entry 2378 (class 0 OID 98785)
-- Dependencies: 189
-- Data for Name: content_backup; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (1, '1', NULL, 'Home', 'home', 1, '2015-03-27 21:22:51.805', 2, '{"title": "Home", "domains": ["localhost:8080", "localhost:8080/test"], "copyright": "&copy; 2014 codeish.com", "site_name": "Collexy test site", "about_text": "<p>This is <strong>TXT</strong>, yet another free responsive site template designed by <a href=\"http://n33.co\">AJ</a> for <a href=\"http://html5up.net\">HTML5 UP</a>. It is released under the <a href=\"http://html5up.net/license/\">Creative Commons Attribution</a> license so feel free to use it for whatever you are working on (personal or commercial), just be sure to give us credit for the design. That is basically it :)</p>", "about_title": "About title here", "banner_link": "http://somelink.test", "hide_banner": false, "hide_in_nav": false, "is_featured": false, "template_id": 2, "site_tagline": "Test site tagline", "banner_header": "Banner header goes here", "facebook_link": "facebook.com/home", "banner_link_text": "Click Here!", "banner_subheader": "Banner subheader goes here", "banner_background_image": "/media/Sample Images/TXT/banner.jpg"}', NULL, NULL, NULL, 1, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (5, '1.5', 1, 'Get Involved', 'get_involved', 1, '2015-03-27 21:51:57.503', 5, '{"image": "/media/Sample Images/TXT/pic04.jpg", "title": "Get Involved", "content": "Get Involved content goes here", "hide_in_nav": false, "is_featured": true, "template_id": 3}', NULL, NULL, NULL, 1, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (10, '1.6.10', 6, 'Amazing Post', 'amazing_post', 1, '2015-03-27 22:05:14.042', 3, '{"image": "/media/Sample Images/TXT/pic05.jpg", "title": "Amazing Post", "content": "<p>What an amazing post. What an amazing post. What an amazing post. What an amazing post. What an amazing post. What an amazing post. What an amazing post.</p>", "sub_header": "Amazing subheader here", "hide_in_nav": false, "is_featured": true, "template_id": 4}', NULL, NULL, NULL, 1, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (11, '11', NULL, 'Sample Images', 'sample_images', 1, '2015-03-27 22:08:29.415', 6, '{"path": "media\\Sample Images"}', NULL, NULL, NULL, 2, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (12, '11.12', 11, 'TXT', 'txt', 1, '2015-03-27 22:09:40.207', 6, '{"path": "media\\Sample Images\\TXT"}', NULL, NULL, NULL, 2, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (19, '1.6.19', 6, 'Categories', 'categories', 1, '2015-03-27 22:17:32.659', 8, '{"title": "Categories", "content": "Categories", "hide_in_nav": false, "is_featured": true}', NULL, NULL, NULL, 1, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (20, '1.6.19.20', 19, 'Category 1', 'category_1', 1, '2015-03-27 22:18:45.865', 9, '{"title": "Category 1", "content": "Category 1 content", "hide_in_nav": false, "is_featured": true, "template_id": 6}', NULL, NULL, NULL, 1, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (21, '1.21', 1, '404', '404', 1, '2015-03-27 22:20:10.169', 5, '{"title": "404", "content": "404 content goes here", "hide_in_nav": true, "is_featured": false, "template_id": 9}', NULL, NULL, NULL, 1, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (22, '1.22', 1, 'Login', 'login', 1, '2015-03-27 22:21:19.482', 5, '{"title": "Login", "content": "Login content goes here", "hide_in_nav": true, "is_featured": false, "template_id": 7}', NULL, NULL, NULL, 1, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (8, '1.6.8', 6, 'Txt Starter Kit For Collexy Released', 'collexy_starter_kit', 1, '2015-03-27 21:59:24.379', 3, '{"title": "TXT Starter Kit For Collexy Released", "content": "The collexy TXT starter kit is just awesome!", "hide_in_nav": false, "is_featured": true, "template_id": 4}', NULL, NULL, NULL, 1, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (9, '1.6.9', 6, 'You Need To Read This', 'read_this', 1, '2015-03-27 22:03:09.422', 3, '{"title": "You Need To Read This", "content": "See - you really needed to read this post!", "hide_in_nav": false, "is_featured": true, "template_id": 4}', NULL, NULL, NULL, 1, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (6, '1.6', 1, 'Posts', 'posts', 1, '2015-03-27 21:54:10.787', 4, '{"title": "Posts", "hide_in_nav": false, "is_featured": true, "template_id": 5}', NULL, NULL, NULL, 1, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (15, '11.12.15', 12, 'pic03.jpg', 'pic3', 1, '2015-03-27 22:13:10.64', 7, '{"alt": "pic03.jpg", "path": "media\\Sample Images\\TXT\\pic03.jpg", "title": "pic03.jpg", "caption": "pic03.jpg", "description": "pic03.jpg", "attached_file": {"name": "pic03.jpg", "size": 8984, "type": "image/jpeg", "lastModified": 1427893165426, "lastModifiedDate": "2015-04-01T12:59:25.426Z", "webkitRelativePath": ""}}', NULL, NULL, NULL, 2, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (4, '1.4', 1, 'Documentation', 'documentation', 1, '2015-03-27 21:50:23.197', 5, '{"image": "/media/Sample Images/TXT/pic03.jpg", "title": "Documentation", "content": "<p>Documentation content goes here1</p>\n", "hide_in_nav": false, "is_featured": true, "template_id": 3}', '{"groups": [1], "members": [1]}', NULL, NULL, 1, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (16, '11.12.16', 12, 'pic04.jpg', 'pic4', 1, '2015-03-27 22:13:35.245', 7, '{"alt": "pic04.jpg", "path": "media\\Sample Images\\TXT\\pic04.jpg", "title": "pic04.jpg", "caption": "pic04.jpg", "description": "pic04.jpg", "attached_file": {"name": "pic04.jpg", "size": 23592, "type": "image/jpeg", "lastModified": 1427893165426, "lastModifiedDate": "2015-04-01T12:59:25.426Z", "webkitRelativePath": ""}}', NULL, NULL, NULL, 2, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (14, '11.12.14', 12, 'pic02.jpg', 'pic2', 1, '2015-03-27 22:12:24.478', 7, '{"alt": "pic02.jpg", "path": "media\\Sample Images\\TXT\\pic02.jpg", "title": "pic02.jpg", "caption": "pic02.jpg", "description": "pic02.jpg", "attached_file": {"name": "pic02.jpg", "size": 19811, "type": "image/jpeg", "lastModified": 1427893165425, "lastModifiedDate": "2015-04-01T12:59:25.425Z", "webkitRelativePath": ""}}', NULL, NULL, NULL, 2, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (2, '1.2', 1, 'Welcome', 'welcome', 1, '2015-03-27 21:31:55.462', 5, '{"image": "/media/Sample Images/TXT/pic01.jpg", "title": "Welcome", "content": "Welcome content goes here", "hide_in_nav": false, "is_featured": true, "template_id": 3, "test_radio_button_list": ["val2"]}', NULL, '{"2": {"permissions": ["node_create", "node_delete", "node_update", "node_move", "node_copy", "node_public_access", "node_permissions", "node_send_to_publish", "node_sort", "node_publish", "node_browse", "node_change_content_type"]}}', NULL, 1, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (3, '1.3', 1, 'Getting Started', 'getting_started', 1, '2015-03-27 21:46:13.265', 5, '{"image": "/media/Sample Images/TXT/pic02.jpg", "title": "Getting Started", "content": "Getting Started content goes here", "hide_in_nav": false, "is_featured": true, "template_id": 3}', NULL, NULL, '{"1": {"permissions": ["node_create", "node_delete", "node_update", "node_move", "node_copy", "node_public_access", "node_permissions", "node_send_to_publish", "node_sort", "node_publish", "node_browse", "node_change_content_type"]}, "2": {"permissions": ["node_update"]}}', 1, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (7, '1.6.7', 6, 'Hello World', 'hello_world', 1, '2015-03-27 21:55:03.797', 3, '{"image": "/media/Sample Images/TXT/pic05.jpg", "title": "Hello World", "content": "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel tellus venenatis, iaculis eros eu, pellentesque felis. Mauris eleifend venenatis maximus. Fusce condimentum nulla augue, sed elementum nisl dictum ut. Sed ex arcu, efficitur eu finibus ac, convallis ut eros. Ut faucibus elit erat, ac venenatis velit cursus quis. Phasellus sapien elit, ullamcorper ac placerat at, consectetur eget ex. Integer augue sem, tempor nec hendrerit et, ullamcorper ut arcu.</p>\n\n<p>Pellentesque auctor et arcu at tristique. Suspendisse ipsum sapien, vulputate quis cursus eu, rhoncus sed nisi. Nulla euismod mauris vitae tellus iaculis convallis. Sed sodales, risus id sollicitudin aliquet, purus justo convallis dui, sit amet imperdiet elit mauris accumsan velit. Suspendisse dapibus sit amet quam in porta. Nam eleifend sodales dolor eget tempor. Sed pharetra aliquam dui, ultricies scelerisque orci luctus at. Proin eleifend neque quis dolor facilisis sollicitudin. Integer vel ligula nec metus sagittis lacinia at quis arcu. Sed in sem ut mauris laoreet euismod. Integer eu tincidunt lectus, nec varius libero. Proin nec interdum ex. Quisque non lacinia lectus, luctus molestie mi. Fusce lacus est, rhoncus sed nunc at, fermentum luctus ipsum.</p>\n\n<h3>Nunc pulvinar metus a erat fermentum bibendum</h3>\n\n<p>Phasellus mattis tempor dolor vitae feugiat. Sed aliquet massa nisi, in imperdiet mauris auctor in. Nam consectetur ut erat at suscipit. Integer faucibus eleifend rhoncus. Praesent vel bibendum elit, ut molestie metus. Maecenas efficitur, magna vel scelerisque pretium, magna elit vehicula massa, dignissim posuere felis enim a lectus. Donec eget semper urna. Praesent vel nisi id lacus tincidunt pretium vitae eu sapien. Duis varius nisi velit, nec maximus arcu blandit sit amet. Proin dapibus dui et elit dapibus, sit amet rhoncus nisl lobortis. Nunc pretium, lorem eu dignissim mollis, ex nisi mollis lectus, eu blandit arcu nisl vel elit. Mauris risus ipsum, elementum quis eleifend ut, venenatis sit amet orci. Donec ac orci aliquam, vulputate odio eget, pulvinar elit. Cras molestie urna eget justo hendrerit aliquam.</p>\n", "categories": [20], "sub_header": "Subheader for Hello World", "hide_in_nav": false, "is_featured": true, "template_id": 4, "date_published": "2015-16-03 20:55:38"}', NULL, NULL, NULL, 1, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (13, '11.12.13', 12, 'pic01.jpg', 'pic1', 1, '2015-03-27 22:10:35.745', 7, '{"alt": "pic01.jpg", "path": "media\\Sample Images\\TXT\\pic01.jpg", "title": "pic01.jpg", "caption": "pic01.jpg", "description": "pic01.jpg", "attached_file": {"name": "pic01.jpg", "size": 22026, "type": "image/jpeg", "lastModified": 1427893165424, "lastModifiedDate": "2015-04-01T12:59:25.424Z", "webkitRelativePath": ""}}', NULL, NULL, NULL, 2, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (17, '11.12.17', 12, 'pic05.jpg', 'pic5', 1, '2015-03-27 22:14:05.966', 7, '{"alt": "pic05.jpg", "path": "media\\Sample Images\\TXT\\pic05.jpg", "title": "pic05.jpg", "caption": "pic05.jpg", "description": "pic05.jpg", "attached_file": {"name": "pic05.jpg", "size": 74874, "type": "image/jpeg", "lastModified": 1427893165427, "lastModifiedDate": "2015-04-01T12:59:25.427Z", "webkitRelativePath": ""}}', NULL, NULL, NULL, 2, false);
INSERT INTO content_backup (id, path, parent_id, name, alias, created_by, created_date, content_type_id, meta, public_access, user_permissions, user_group_permissions, type_id, is_abstract) VALUES (18, '11.12.18', 12, 'banner.jpg', 'banner', 1, '2015-03-27 22:14:35.241', 7, '{"alt": "banner.jpg", "path": "media\\Sample Images\\TXT\\banner.jpg", "title": "banner.jpg", "caption": "banner.jpg", "description": "banner.jpg", "attached_file": {"name": "banner.jpg", "size": 269179, "type": "image/jpeg", "lastModified": 1427893165424, "lastModifiedDate": "2015-04-01T12:59:25.424Z", "webkitRelativePath": ""}}', NULL, NULL, NULL, 2, false);


--
-- TOC entry 2395 (class 0 OID 0)
-- Dependencies: 188
-- Name: content_backup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('content_backup_id_seq', 1, false);


--
-- TOC entry 2396 (class 0 OID 0)
-- Dependencies: 194
-- Name: content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('content_id_seq', 14, true);


--
-- TOC entry 2382 (class 0 OID 98944)
-- Dependencies: 193
-- Data for Name: content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO content_type (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids, template_id, allowed_template_ids) VALUES (7, '1.7', 1, 'Category', 'category', 1, '2015-03-27 18:02:14.279', 'Category content type description', 'fa fa-folder-o fa-fw', 'fa fa-folder-o fa-fw', NULL, '[{"name": "Content", "properties": [{"name": "content", "order": 2, "help_text": "Help text for category contentent", "description": "Category content description", "data_type_id": 19}]}]', false, false, false, '{7}', '{8}', 6, '{6}');
INSERT INTO content_type (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids, template_id, allowed_template_ids) VALUES (4, '1.4', 1, 'Post Overview', 'post_overview', 1, '2015-03-27 17:53:03.252', 'Post Overview content type description', 'fa fa-newspaper-o fa-fw', 'fa fa-newspaper-o fa-fw', NULL, '[]', false, false, false, '{3,6}', '{8}', 5, '{5}');
INSERT INTO content_type (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids, template_id, allowed_template_ids) VALUES (6, '1.6', 1, 'Categories', 'categories', 1, '2015-03-27 17:59:30.925', 'Categories content type description', 'fa fa-folder-open-o fa-fw', 'fa fa-folder-open-o fa-fw', NULL, '[{"name": "Content", "properties": [{"name": "content", "order": 2, "help_text": "Help text for category contentent", "description": "Category content description", "data_type_id": 19}]}]', false, false, false, '{7}', NULL, NULL, NULL);
INSERT INTO content_type (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids, template_id, allowed_template_ids) VALUES (1, '1', NULL, 'Master', 'master', 1, '2015-03-27 17:46:05.405', 'Master content type description', 'fa fa-folder-o fa-fw', 'fa fa-folder-o fa-fw', NULL, '[{"name": "Content", "properties": [{"name": "title", "order": 1, "help_text": "help text", "description": "The page title overrides the name the page has been given.", "data_type_id": 1}]}, {"name": "Properties", "properties": [{"name": "hide_in_nav", "order": 1, "help_text": "help text2", "description": "description2", "data_type_id": 18}]}]', false, false, true, NULL, NULL, NULL, NULL);
INSERT INTO content_type (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids, template_id, allowed_template_ids) VALUES (3, '1.3', 1, 'Post', 'post', 1, '2015-03-27 17:51:17.53', 'Post content type description', 'fa fa-file-text-o fa-fw', 'fa fa-file-text-o fa-fw', NULL, '[{"name": "Content", "properties": [{"name": "is_featured", "order": 2, "help_text": "help text2", "description": "description2", "data_type_id": 18}, {"name": "image", "order": 3, "help_text": "Help text for image", "description": "Image url", "data_type_id": 1}, {"name": "sub_header", "order": 4, "help_text": "Help text for subheader", "description": "Subheader description", "data_type_id": 1}, {"name": "content", "order": 5, "help_text": "Help text for post content", "description": "Post content description", "data_type_id": 19}, {"name": "categories", "order": 6, "help_text": "help text2", "description": "description2", "data_type_id": 12}, {"name": "date_published", "order": 7, "help_text": "help date picker with time", "description": "date picker w time", "data_type_id": 11}]}]', false, false, false, '{3}', '{8}', 4, '{4}');
INSERT INTO content_type (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids, template_id, allowed_template_ids) VALUES (5, '1.5', 1, 'Page', 'page', 1, '2015-03-27 17:54:15.03', 'Page content type description', 'fa fa-file-o fa-fw', 'fa fa-file-o fa-fw', NULL, '[{"name": "Content", "properties": [{"name": "content", "order": 2, "help_text": "Help text for page contentent", "description": "Page content description", "data_type_id": 19}, {"name": "test_radio_button_list", "order": 3, "help_text": "Help text for test radio button", "description": "Page test radio button desc", "data_type_id": 4}]}]', false, false, false, '{5}', '{8}', 3, '{3,7,8,9,10}');
INSERT INTO content_type (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids, template_id, allowed_template_ids) VALUES (8, '8', NULL, 'SEO', 'seo', 1, '2015-04-20 14:03:59.172', 'Search Engine Optimization content type', 'fa fa-folder-o fa-fw', 'fa fa-folder-o fa-fw', NULL, '[{"name": "SEO", "properties": [{"name": "meta_title", "order": 1, "help_text": "Help text for meta title", "description": "Meta title description", "data_type_id": 1}, {"name": "meta_description", "order": 2, "help_text": "Help text for meta description", "description": "Mets description description", "data_type_id": 3}]}]', false, false, true, NULL, '{8}', NULL, NULL);
INSERT INTO content_type (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids, template_id, allowed_template_ids) VALUES (2, '1.2', 1, 'Home', 'home', 1, '2015-03-27 17:47:50.897', 'Home content type description', 'fa fa-home fa-fw', 'fa fa-home fa-fw', NULL, '[{"name": "Content", "properties": [{"name": "site_name", "order": 2, "help_text": "help text", "description": "Site name goes here.", "data_type_id": 1}, {"name": "site_tagline", "order": 3, "help_text": "help text", "description": "Site tagline goes here.", "data_type_id": 1}, {"name": "copyright", "order": 4, "help_text": "help text", "description": "Copyright here.", "data_type_id": 1}, {"name": "domains", "order": 5, "help_text": "help text", "description": "Domains goes here.", "data_type_id": 17}]}, {"name": "Social", "properties": [{"name": "facebook_link", "order": 1, "help_text": "help text", "description": "Enter your facebook link here.", "data_type_id": 1}, {"name": "twitter_link", "order": 2, "help_text": "help text", "description": "Enter your twitter link here.", "data_type_id": 1}, {"name": "linkedin_link", "order": 3, "help_text": "help text", "description": "Enter your linkedin link here.", "data_type_id": 1}, {"name": "google_link", "order": 4, "help_text": "help text", "description": "Enter your Google+ profile link here.", "data_type_id": 1}, {"name": "rss_link", "order": 5, "help_text": "help text", "description": "Enter your RSS feed link here.", "data_type_id": 1}]}, {"name": "Banner", "properties": [{"name": "hide_banner", "order": 1, "help_text": "help text2", "description": "description2", "data_type_id": 18}, {"name": "banner_header", "order": 2, "help_text": "help text", "description": "Banner header.", "data_type_id": 1}, {"name": "banner_subheader", "order": 3, "help_text": "help text", "description": "Banner subheader.", "data_type_id": 1}, {"name": "banner_link_text", "order": 4, "help_text": "help text", "description": "Banner link text.", "data_type_id": 1}, {"name": "banner_link", "order": 5, "help_text": "help text", "description": "Banner link should ideally use a content picker data type.", "data_type_id": 1}, {"name": "banner_background_image", "order": 6, "help_text": "help text", "description": "This should ideally use the upload data type.", "data_type_id": 1}]}, {"name": "About", "properties": [{"name": "about_title", "order": 1, "help_text": "help text", "description": "About title.", "data_type_id": 1}, {"name": "about_text", "order": 2, "help_text": "help text", "description": "About text.", "data_type_id": 19}]}]', true, false, false, '{3,4,5}', '{8}', 2, '{2}');


--
-- TOC entry 2380 (class 0 OID 98797)
-- Dependencies: 191
-- Data for Name: content_type_backup; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO content_type_backup (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, type_id, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids) VALUES (9, '1.9', 1, 'Category', 'category', 1, '2015-03-27 18:02:14.279', 'Category content type description', 'fa fa-folder-o fa-fw', 'fa fa-folder-o fa-fw', '{"template_id": 6, "allowed_template_ids": [6]}', '[{"name": "Content", "properties": [{"name": "content", "order": 2, "help_text": "Help text for category contentent", "description": "Category content description", "data_type_id": 19}]}]', 1, false, false, false, '{9}', '{10}');
INSERT INTO content_type_backup (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, type_id, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids) VALUES (4, '1.4', 1, 'Post Overview', 'post_overview', 1, '2015-03-27 17:53:03.252', 'Post Overview content type description', 'fa fa-newspaper-o fa-fw', 'fa fa-newspaper-o fa-fw', '{"template_id": 5, "allowed_template_ids": [5]}', '[]', 1, false, false, false, '{3,8}', '{10}');
INSERT INTO content_type_backup (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, type_id, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids) VALUES (8, '1.8', 1, 'Categories', 'categories', 1, '2015-03-27 17:59:30.925', 'Categories content type description', 'fa fa-folder-open-o fa-fw', 'fa fa-folder-open-o fa-fw', NULL, '[{"name": "Content", "properties": [{"name": "content", "order": 2, "help_text": "Help text for category contentent", "description": "Category content description", "data_type_id": 19}]}]', 1, false, false, false, '{9}', NULL);
INSERT INTO content_type_backup (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, type_id, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids) VALUES (1, '1', NULL, 'Master', 'master', 1, '2015-03-27 17:46:05.405', 'Master content type description', 'fa fa-folder-o fa-fw', 'fa fa-folder-o fa-fw', NULL, '[{"name": "Content", "properties": [{"name": "title", "order": 1, "help_text": "help text", "description": "The page title overrides the name the page has been given.", "data_type_id": 1}]}, {"name": "Properties", "properties": [{"name": "hide_in_nav", "order": 1, "help_text": "help text2", "description": "description2", "data_type_id": 18}]}]', 1, false, false, true, NULL, NULL);
INSERT INTO content_type_backup (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, type_id, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids) VALUES (3, '1.3', 1, 'Post', 'post', 1, '2015-03-27 17:51:17.53', 'Post content type description', 'fa fa-file-text-o fa-fw', 'fa fa-file-text-o fa-fw', '{"template_id": 4, "allowed_template_ids": [4]}', '[{"name": "Content", "properties": [{"name": "is_featured", "order": 2, "help_text": "help text2", "description": "description2", "data_type_id": 18}, {"name": "image", "order": 3, "help_text": "Help text for image", "description": "Image url", "data_type_id": 1}, {"name": "sub_header", "order": 4, "help_text": "Help text for subheader", "description": "Subheader description", "data_type_id": 1}, {"name": "content", "order": 5, "help_text": "Help text for post content", "description": "Post content description", "data_type_id": 19}, {"name": "categories", "order": 6, "help_text": "help text2", "description": "description2", "data_type_id": 12}, {"name": "date_published", "order": 7, "help_text": "help date picker with time", "description": "date picker w time", "data_type_id": 11}]}]', 1, false, false, false, '{3}', '{10}');
INSERT INTO content_type_backup (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, type_id, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids) VALUES (5, '1.5', 1, 'Page', 'page', 1, '2015-03-27 17:54:15.03', 'Page content type description', 'fa fa-file-o fa-fw', 'fa fa-file-o fa-fw', '{"template_id": 3, "allowed_template_ids": [3, 7, 8, 9, 10]}', '[{"name": "Content", "properties": [{"name": "content", "order": 2, "help_text": "Help text for page contentent", "description": "Page content description", "data_type_id": 19}, {"name": "test_radio_button_list", "order": 3, "help_text": "Help text for test radio button", "description": "Page test radio button desc", "data_type_id": 4}]}]', 1, false, false, false, '{5}', '{10}');
INSERT INTO content_type_backup (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, type_id, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids) VALUES (2, '1.2', 1, 'Home', 'home', 1, '2015-03-27 17:47:50.897', 'Home content type description', 'fa fa-home fa-fw', 'fa fa-home fa-fw', '{"template_id": 2, "allowed_template_ids": [2]}', '[{"name": "Content", "properties": [{"name": "site_name", "order": 2, "help_text": "help text", "description": "Site name goes here.", "data_type_id": 1}, {"name": "site_tagline", "order": 3, "help_text": "help text", "description": "Site tagline goes here.", "data_type_id": 1}, {"name": "copyright", "order": 4, "help_text": "help text", "description": "Copyright here.", "data_type_id": 1}, {"name": "domains", "order": 5, "help_text": "help text", "description": "Domains goes here.", "data_type_id": 17}]}, {"name": "Social", "properties": [{"name": "facebook_link", "order": 1, "help_text": "help text", "description": "Enter your facebook link here.", "data_type_id": 1}, {"name": "twitter_link", "order": 2, "help_text": "help text", "description": "Enter your twitter link here.", "data_type_id": 1}, {"name": "linkedin_link", "order": 3, "help_text": "help text", "description": "Enter your linkedin link here.", "data_type_id": 1}, {"name": "google_link", "order": 4, "help_text": "help text", "description": "Enter your Google+ profile link here.", "data_type_id": 1}, {"name": "rss_link", "order": 5, "help_text": "help text", "description": "Enter your RSS feed link here.", "data_type_id": 1}]}, {"name": "Banner", "properties": [{"name": "hide_banner", "order": 1, "help_text": "help text2", "description": "description2", "data_type_id": 18}, {"name": "banner_header", "order": 2, "help_text": "help text", "description": "Banner header.", "data_type_id": 1}, {"name": "banner_subheader", "order": 3, "help_text": "help text", "description": "Banner subheader.", "data_type_id": 1}, {"name": "banner_link_text", "order": 4, "help_text": "help text", "description": "Banner link text.", "data_type_id": 1}, {"name": "banner_link", "order": 5, "help_text": "help text", "description": "Banner link should ideally use a content picker data type.", "data_type_id": 1}, {"name": "banner_background_image", "order": 6, "help_text": "help text", "description": "This should ideally use the upload data type.", "data_type_id": 1}]}, {"name": "About", "properties": [{"name": "about_title", "order": 1, "help_text": "help text", "description": "About title.", "data_type_id": 1}, {"name": "about_text", "order": 2, "help_text": "help text", "description": "About text.", "data_type_id": 19}]}]', 1, true, false, false, '{3,4,5}', '{10}');
INSERT INTO content_type_backup (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, type_id, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids) VALUES (6, '6', NULL, 'Folder', 'folder', 1, '2015-03-27 17:55:47.388', 'Folder media type description', 'fa fa-folder-o fa-fw', 'fa fa-folder-o fa-fw', NULL, '[{"name": "Folder", "properties": [{"name": "folder_browser", "order": 1, "help_text": "prop help text", "description": "prop description", "data_type_id": 14}, {"name": "path", "order": 1, "help_text": "prop help text", "description": "prop description", "data_type_id": 1}]}, {"name": "Properties"}]', 2, true, false, false, '{6,7}', NULL);
INSERT INTO content_type_backup (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, type_id, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids) VALUES (10, '10', NULL, 'SEO', 'seo', 1, '2015-04-20 14:03:59.172', 'Search Engine Optimization content type', 'fa fa-folder-o fa-fw', 'fa fa-folder-o fa-fw', NULL, '[{"name": "SEO", "properties": [{"name": "meta_title", "order": 1, "help_text": "Help text for meta title", "description": "Meta title description", "data_type_id": 1}, {"name": "meta_description", "order": 2, "help_text": "Help text for meta description", "description": "Mets description description", "data_type_id": 3}]}]', 1, false, false, true, NULL, '{10}');
INSERT INTO content_type_backup (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, type_id, allow_at_root, is_container, is_abstract, allowed_content_type_ids, composite_content_type_ids) VALUES (7, '7', NULL, 'Image', 'image', 1, '2015-03-27 17:57:48.335', 'Image media type description', 'fa fa-image fa-fw', 'fa fa-image fa-fw', NULL, '[{"name": "Image", "properties": [{"name": "path", "order": 1, "help_text": "help text", "description": "URL goes here.", "data_type_id": 1}, {"name": "title", "order": 2, "help_text": "help text", "description": "The title entered here can override the above one.", "data_type_id": 1}, {"name": "caption", "order": 3, "help_text": "help text", "description": "Caption goes here.", "data_type_id": 3}, {"name": "alt", "order": 4, "help_text": "help text", "description": "Alt goes here.", "data_type_id": 3}, {"name": "description", "order": 5, "help_text": "help text", "description": "Description goes here.", "data_type_id": 3}, {"name": "file_upload", "order": 1, "help_text": "prop help text", "description": "prop description", "data_type_id": 16}]}, {"name": "Properties", "properties": [{"name": "temporary property", "order": 1, "help_text": "help text", "description": "Temporary description goes here.", "data_type_id": 1}]}]', 2, true, false, false, NULL, NULL);


--
-- TOC entry 2397 (class 0 OID 0)
-- Dependencies: 190
-- Name: content_type_backup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('content_type_backup_id_seq', 1, false);


--
-- TOC entry 2398 (class 0 OID 0)
-- Dependencies: 192
-- Name: content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('content_type_id_seq', 8, true);


--
-- TOC entry 2369 (class 0 OID 98158)
-- Dependencies: 180
-- Data for Name: data_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (2, 'Numeric Input', 'numeric_input', 0, '2015-03-26 23:47:44.854', '<input type="number" id="{{prop.name}}" ng-model="data.meta[prop.name]">', NULL, NULL);
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (3, 'Textarea', 'textarea', 0, '2015-03-26 23:47:44.854', '<textarea id="{{prop.name}}" ng-model="data.meta[prop.name]">', NULL, NULL);
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (18, 'True/False', 'true_false', 0, '2015-03-26 23:47:44.854', '<div><label><input type="checkbox" 
        ng-model="data.meta[prop.name]"
        ng-true-value="true"
        ng-false-value="false"
       ></label> {{prop.name}}
</div>', '', NULL);
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (5, 'Dropdown', 'dropdown', 0, '2015-03-26 23:47:44.854', '', NULL, NULL);
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (6, 'Dropdown Multiple', 'dropdown_multiple', 0, '2015-03-26 23:47:44.854', '', NULL, NULL);
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (8, 'Label', 'label', 0, '2015-03-26 23:47:44.854', '', NULL, NULL);
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (9, 'Color Picker', 'color_picker', 0, '2015-03-26 23:47:44.854', '<colorpicker>The color picker data type is not implemented yet!</colorpicker>', NULL, NULL);
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (10, 'Date Picker', 'date_picker', 0, '2015-03-26 23:47:44.854', '', NULL, NULL);
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (11, 'Date Picker With Time', 'date_picker_time', 0, '2015-03-26 23:47:44.854', '<div class="well">
  <div id="datetimepicker1" class="input-append date">
    <input data-format="dd-MM-yyyy hh:mm:ss" type="text" id="{{prop.name}}" ng-model="data.meta[prop.name]"></input>
    <span class="add-on">
      <i class="fa fa-calendar" data-time-icon="icon-time" data-date-icon="icon-calendar">
      </i>
    </span>
  </div>
</div>

<script type="text/javascript">
  $(function() {
    $("#datetimepicker1").datetimepicker({
      language: "en"
    });
  });
</script>', NULL, NULL);
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (13, 'Media Picker', 'media_picker', 0, '2015-03-26 23:47:44.854', '', NULL, NULL);
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (19, 'Richtext Editor', 'richtext_editor', 0, '2015-03-26 23:47:44.854', '<textarea ck-editor id="{{prop.name}}" name="{{prop.name}}" ng-model="data.meta[prop.name]" rows="10" cols="80"></textarea>', NULL, NULL);
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (12, 'Content Picker', 'content_picker', 0, '2015-03-26 23:47:44.854', '<div ng-controller="Collexy.DataTypePropertyEditor.ContentPicker">
<div ng-repeat="cn in contentNodes"><label><input type="checkbox" checklist-model="data.meta[prop.name]" checklist-value="cn.id"></label> {{cn.name}}</div>
<br>
<button type="button" ng-click="checkAll()">check all</button>
<button type="button" ng-click="uncheckAll()">uncheck all</button>
</div>', 'Collexy.DataTypeEditor.ContentPicker', '{"content_type_id": 7}');
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (4, 'Radio Button List', 'radio_button_list', 0, '2015-03-26 23:47:44.854', '<div ng-controller="Collexy.DataTypePropertyEditor.RadioButtonList.Controller">
    <ul>
    	<li ng-repeat="option in dataType.meta.options">
    		<label>
    			<input type="radio" name="radio-button-list-{{dataType.alias}}" ng-value="option.value" ng-model="data.meta[prop.name]"/>
    			{{option.label}}
    		</label>
    	</li>
    </ul>
</div>', 'Collexy.DataTypeEditor.RadioButtonList', '{"options": [{"label": "Value 1", "value": "val1"}, {"label": "Value 2", "value": "val2"}]}');
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (7, 'Checkbox List', 'checkbox_list', 0, '2015-03-26 23:47:44.854', '', NULL, NULL);
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (1, 'Text Input', 'text_input', 0, '2015-03-26 23:47:44.854', '<input type="text" id="{{prop.name}}" ng-model="data.meta[prop.name]"/>', '', 'null');
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (17, 'Domains', 'domains', 0, '2015-03-26 23:47:44.854', '<div ng-controller="Collexy.DataTypeEditor.Domains.Controller">
    <input type="text" ng-model="domainToAdd"/> <button type="button" ng-click="addDomain()">Add domain</button><br>
    <ul>
        <li ng-repeat="domain in data.meta[prop.name]">
            {{domain}} <button type="button" ng-click="removeDomain(domain)">x</button>
        </li>
    </ul>
    
</div>', '', NULL);
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (14, 'Folder Browser', 'folder_browser', 0, '2015-03-26 23:47:44.854', '<style>
    .col-ulist-3 {
	columns: 4;
	-webkit-columns: 4;
	-moz-columns: 4;
	padding-left: 0;
    }
    .col-ulist-3 img {
	max-width: 100%;
    } 
    .collexy-folder-browser li a{ 
	display: block; 
	background-color: whitesmoke;
	text-align: center;
	max-width: 100%;
	position: relative;
    }
    .folder-browser-img-placeholder{
	display: inline-block;
	padding: 1em;
    }
    .collexy-folder-browser .folder-browser-img-placeholder i { font-size: 3em; }
    .collexy-folder-browser-img-overlay {
	position: absolute;
	top: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(255,255,255,0.8);
	opacity: 0;
	/**-webkit-transition: all 0.5s ease;
	-moz-transition: all 0.5s ease;
	-o-transition: all 0.5s ease;
	transition: all 0.5s ease;*/
	z-index: 10;
	font-size: 0.8em;
    }
    .collexy-folder-browser-img-overlay:hover {
	opacity:1;
    }
    .collexy-folder-browser img {
	z-index: 1;
    }
</style>
<div ng-controller="Collexy.DataTypePropertyEditor.FolderBrowser" class="collexy-folder-browser">
    <div ng-show="folder.children.length > 0">
        <ul class="col-ulist-3">
            <li ng-repeat="child in folder.children">
		<a ui-sref="media.edit({id:child.id})">
		    <span ng-if="child.meta.attached_file.type == undefined || child.meta.attached_file.type.indexOf(''image'') < 0" class="folder-browser-img-placeholder">
		        <i ng-class="child.content_type.icon"></i><br>
		        {{child.name}}
		    </span>
		    <span class="collexy-folder-browser-img-overlay" ng-if="child.meta.attached_file.type != undefined && child.meta.attached_file.type.indexOf(''image'') > -1">
			Name: {{child.meta.attached_file.name}}<br>
			Type: {{child.meta.attached_file.type}}<br>
			Size: {{child.meta.attached_file.size}} bytes
		    </span>
		    <img ng-if="child.meta.attached_file.type != undefined && child.meta.attached_file.type.indexOf(''image'') > -1" src="{{location_url}}/{{data.name}}/{{child.meta.attached_file.name}}"/>
		</a>
                <!--<img src="{{location_url}}/{{child.name}}"/>-->
            </li>
        </ul>
    </div>
</div>', NULL, NULL);
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (16, 'Upload Multiple', 'upload_multiple', 0, '2015-03-26 23:47:44.854', '<div ng-controller="Collexy.DataTypeEditor.FileUpload.Controller">
    <pre>{{originalData.meta}}</pre>
    <div ng-show="data.meta.attached_file">
	<input type="text" ng-readonly="true" ng-model="data.meta.attached_file">
    </div>
    <div ng-if="!originalData.meta.attached_file">
        <img style="max-width: 100%;" src="{{location_url}}/{{data.meta.attached_file.name}}"/>
    </div>
    <div ng-if="originalData.meta.attached_file">
		<img style="max-width: 100%;" src="{{location_url}}/{{originalData.meta.attached_file.name}}"/>
    </div>
    <input type="checkbox" ng-model="clearFiles" id="clearFiles" name="clearFiles"/>
    <label for="clearFiles">Remove file</label>
    <div ng-hide="clearFiles">
        <hr>
        <input type="file" file-input="files"/>
        <ul ng-show="files.length > 0">
            <li ng-repeat="file in files">{{file.name}}</li>
        </ul>
    </div>

    <!--<pre>{{originalData.meta}}</pre>
    <div ng-show="data.meta[prop.name].persisted_files.length > 0">
	<input type="text" ng-readonly="true" ng-model="data.meta[prop.name].persisted_files[$index]" ng-repeat="file in data.meta[prop.name].persisted_files">
    </div>
    <div ng-show="originalData.meta[prop.name].persisted_files.length > 0">
        <ul>
            <li ng-repeat="file in originalData.meta[prop.name].persisted_files">
                <img style="max-width: 100%;" src="{{location_url}}/{{file.name}}"/>
            </li>
        </ul>
    </div>
    <input type="checkbox" ng-model="clearFiles" id="clearFiles" name="clearFiles"/>
    <label for="clearFiles">Remove file(s)</label>
    <div ng-hide="clearFiles">
        <hr>
        <input type="file" file-input="files" prop-name="{{prop.name}}" multiple />
        <ul ng-show="files.length > 0">
            <li ng-repeat="file in files">{{file.name}}</li>
        </ul>
    </div>-->
</div>', '', NULL);
INSERT INTO data_type (id, name, alias, created_by, created_date, html, editor_alias, meta) VALUES (15, 'Upload', 'upload', 0, '2015-03-26 23:47:44.854', '<!--<div ng-controller="Collexy.DataTypeEditor.FileUpload.Controller" collexy-file-upload>
    <div ng-show="persistedFiles.length > 0">
        <ul>
            <li ng-repeat="file in persistedFiles">
                {{file}}
            </li>
        </ul>
    </div>
    <input type="file" file-input="files" multiple />
	<button ng-click="upload()" type="button">Upload</button>
    <ul ng-show="files.length > 0">
        <li ng-repeat="file in files">{{file.name}}</li>
    </ul>
</div>-->
<div ngf-drop ngf-select ng-model="$parent.$parent.$parent.files" class="drop-box" 
     ngf-drag-over-class="dragover" ngf-multiple="true" ngf-allow-dir="true" accept="image/*,application/pdf">Drop file(s) here or click to upload</div>

<div ngf-no-file-drop>File Drag/Drop is not supported for this browser</div>
Files:
<ul>
    <li ng-repeat="f in files" style="font:smaller">{{f.name}} <img ng-show="f != null" ngf-src="f" class="thumb"></li>
</ul>
Upload Log:
<pre>{{log}}</pre>
<style>
    .button {
        -moz-appearance: button;
        /* Firefox */
        -webkit-appearance: button;
        /* Safari and Chrome */
        padding: 10px;
        margin: 10px;
        width: 70px;
    }
    .drop-box {
        background: #F8F8F8;
        border: 5px dashed #DDD;
        /*width: 200px;
        height: 65px;*/
        text-align: center;
        padding: 25px;
        margin: 10px 0;
    }
    .dragover {
        border: 5px dashed blue;
    }
</style>', '', NULL);


--
-- TOC entry 2399 (class 0 OID 0)
-- Dependencies: 181
-- Name: data_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('data_type_id_seq', 19, true);


--
-- TOC entry 2374 (class 0 OID 98724)
-- Dependencies: 185
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO media (id, path, parent_id, name, created_by, created_date, media_type_id, meta, user_permissions, user_group_permissions) VALUES (1, '1', NULL, 'Sample Images', 1, '2015-03-27 22:08:29.415', 1, '{"path": "media\\Sample Images"}', NULL, NULL);
INSERT INTO media (id, path, parent_id, name, created_by, created_date, media_type_id, meta, user_permissions, user_group_permissions) VALUES (3, '1.2.3', 2, 'pic01.jpg', 1, '2015-03-27 22:10:35.745', 2, '{"alt": "pic01.jpg", "path": "media\\Sample Images\\TXT\\pic01.jpg", "title": "pic01.jpg", "caption": "pic01.jpg", "description": "pic01.jpg", "attached_file": {"name": "pic01.jpg", "size": 22026, "type": "image/jpeg", "lastModified": 1427893165424, "lastModifiedDate": "2015-04-01T12:59:25.424Z", "webkitRelativePath": ""}}', NULL, NULL);
INSERT INTO media (id, path, parent_id, name, created_by, created_date, media_type_id, meta, user_permissions, user_group_permissions) VALUES (4, '1.2.4', 2, 'pic02.jpg', 1, '2015-03-27 22:12:24.478', 2, '{"alt": "pic02.jpg", "path": "media\\Sample Images\\TXT\\pic02.jpg", "title": "pic02.jpg", "caption": "pic02.jpg", "description": "pic02.jpg", "attached_file": {"name": "pic02.jpg", "size": 19811, "type": "image/jpeg", "lastModified": 1427893165425, "lastModifiedDate": "2015-04-01T12:59:25.425Z", "webkitRelativePath": ""}}', NULL, NULL);
INSERT INTO media (id, path, parent_id, name, created_by, created_date, media_type_id, meta, user_permissions, user_group_permissions) VALUES (5, '1.2.5', 2, 'pic03.jpg', 1, '2015-03-27 22:13:10.64', 2, '{"alt": "pic03.jpg", "path": "media\\Sample Images\\TXT\\pic03.jpg", "title": "pic03.jpg", "caption": "pic03.jpg", "description": "pic03.jpg", "attached_file": {"name": "pic03.jpg", "size": 8984, "type": "image/jpeg", "lastModified": 1427893165426, "lastModifiedDate": "2015-04-01T12:59:25.426Z", "webkitRelativePath": ""}}', NULL, NULL);
INSERT INTO media (id, path, parent_id, name, created_by, created_date, media_type_id, meta, user_permissions, user_group_permissions) VALUES (2, '1.2', 1, 'TXT', 1, '2015-03-27 22:09:40.207', 1, '{"path": "media\\Sample Images\\TXT"}', NULL, NULL);
INSERT INTO media (id, path, parent_id, name, created_by, created_date, media_type_id, meta, user_permissions, user_group_permissions) VALUES (7, '1.2.7', 2, 'pic05.jpg', 1, '2015-03-27 22:14:05.966', 2, '{"alt": "pic05.jpg", "path": "media\\Sample Images\\TXT\\pic05.jpg", "title": "pic05.jpg", "caption": "pic05.jpg", "description": "pic05.jpg", "attached_file": {"name": "pic05.jpg", "size": 74874, "type": "image/jpeg", "lastModified": 1427893165427, "lastModifiedDate": "2015-04-01T12:59:25.427Z", "webkitRelativePath": ""}}', NULL, NULL);
INSERT INTO media (id, path, parent_id, name, created_by, created_date, media_type_id, meta, user_permissions, user_group_permissions) VALUES (8, '1.2.8', 2, 'banner.jpg', 1, '2015-03-27 22:14:35.241', 2, '{"alt": "banner.jpg", "path": "media\\Sample Images\\TXT\\banner.jpg", "title": "banner.jpg", "caption": "banner.jpg", "description": "banner.jpg", "attached_file": {"name": "banner.jpg", "size": 269179, "type": "image/jpeg", "lastModified": 1427893165424, "lastModifiedDate": "2015-04-01T12:59:25.424Z", "webkitRelativePath": ""}}', NULL, NULL);
INSERT INTO media (id, path, parent_id, name, created_by, created_date, media_type_id, meta, user_permissions, user_group_permissions) VALUES (6, '1.2.6', 2, 'pic04.jpg', 1, '2015-03-27 22:13:35.245', 2, '{"alt": "pic04.jpg", "path": "media\\Sample Images\\TXT\\pic04.jpg", "title": "pic04.jpg", "caption": "pic04.jpg", "description": "pic04.jpg", "attached_file": {"name": "pic04.jpg", "size": 23592, "type": "image/jpeg", "lastModified": 1427893165426, "lastModifiedDate": "2015-04-01T12:59:25.426Z", "webkitRelativePath": ""}}', NULL, NULL);


--
-- TOC entry 2400 (class 0 OID 0)
-- Dependencies: 184
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('media_id_seq', 8, true);


--
-- TOC entry 2376 (class 0 OID 98772)
-- Dependencies: 187
-- Data for Name: media_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO media_type (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, allow_at_root, is_container, is_abstract, allowed_media_type_ids, composite_media_type_ids) VALUES (1, '1', NULL, 'Folder', 'folder', 0, '2015-03-27 17:55:47.388', 'Folder media type description1', 'fa fa-folder-o fa-fw', 'fa fa-folder-o fa-fw', NULL, '[{"name": "Folder", "properties": [{"name": "folder_browser", "order": 1, "data_type": {"id": 14, "html": "<style>\n    .col-ulist-3 {\n\tcolumns: 4;\n\t-webkit-columns: 4;\n\t-moz-columns: 4;\n\tpadding-left: 0;\n    }\n    .col-ulist-3 img {\n\tmax-width: 100%;\n    } \n    .collexy-folder-browser li a{ \n\tdisplay: block; \n\tbackground-color: whitesmoke;\n\ttext-align: center;\n\tmax-width: 100%;\n\tposition: relative;\n    }\n    .folder-browser-img-placeholder{\n\tdisplay: inline-block;\n\tpadding: 1em;\n    }\n    .collexy-folder-browser .folder-browser-img-placeholder i { font-size: 3em; }\n    .collexy-folder-browser-img-overlay {\n\tposition: absolute;\n\ttop: 0;\n\twidth: 100%;\n\theight: 100%;\n\tbackground-color: rgba(255,255,255,0.8);\n\topacity: 0;\n\t/**-webkit-transition: all 0.5s ease;\n\t-moz-transition: all 0.5s ease;\n\t-o-transition: all 0.5s ease;\n\ttransition: all 0.5s ease;*/\n\tz-index: 10;\n\tfont-size: 0.8em;\n    }\n    .collexy-folder-browser-img-overlay:hover {\n\topacity:1;\n    }\n    .collexy-folder-browser img {\n\tz-index: 1;\n    }\n</style>\n<div ng-controller=\"Collexy.DataTypePropertyEditor.FolderBrowser\" class=\"collexy-folder-browser\">\n    <div ng-show=\"folder.children.length > 0\">\n        <ul class=\"col-ulist-3\">\n            <li ng-repeat=\"child in folder.children\">\n\t\t<a ui-sref=\"media.edit({id:child.id})\">\n\t\t    <span ng-if=\"child.meta.attached_file.type == undefined || child.meta.attached_file.type.indexOf(''image'') < 0\" class=\"folder-browser-img-placeholder\">\n\t\t        <i ng-class=\"child.content_type.icon\"></i><br>\n\t\t        {{child.name}}\n\t\t    </span>\n\t\t    <span class=\"collexy-folder-browser-img-overlay\" ng-if=\"child.meta.attached_file.type != undefined && child.meta.attached_file.type.indexOf(''image'') > -1\">\n\t\t\tName: {{child.meta.attached_file.name}}<br>\n\t\t\tType: {{child.meta.attached_file.type}}<br>\n\t\t\tSize: {{child.meta.attached_file.size}} bytes\n\t\t    </span>\n\t\t    <img ng-if=\"child.meta.attached_file.type != undefined && child.meta.attached_file.type.indexOf(''image'') > -1\" src=\"{{location_url}}/{{data.name}}/{{child.meta.attached_file.name}}\"/>\n\t\t</a>\n                <!--<img src=\"{{location_url}}/{{child.name}}\"/>-->\n            </li>\n        </ul>\n    </div>\n</div>", "name": "Folder Browser", "alias": "folder_browser", "created_by": 1}, "help_text": "prop help text", "description": "prop description", "data_type_id": 14}, {"name": "upload_multiple", "order": 1, "data_type": {"id": 15, "html": "<!--<div ng-controller=\"Collexy.DataTypeEditor.FileUpload.Controller\" collexy-file-upload>\n    <div ng-show=\"persistedFiles.length > 0\">\n        <ul>\n            <li ng-repeat=\"file in persistedFiles\">\n                {{file}}\n            </li>\n        </ul>\n    </div>\n    <input type=\"file\" file-input=\"files\" multiple />\n\t<button ng-click=\"upload()\" type=\"button\">Upload</button>\n    <ul ng-show=\"files.length > 0\">\n        <li ng-repeat=\"file in files\">{{file.name}}</li>\n    </ul>\n</div>-->\n<div ngf-drop ngf-select ng-model=\"$parent.$parent.$parent.files\" class=\"drop-box\" \n     ngf-drag-over-class=\"dragover\" ngf-multiple=\"true\" ngf-allow-dir=\"true\" accept=\"image/*,application/pdf\">Drop file(s) here or click to upload</div>\n\n<div ngf-no-file-drop>File Drag/Drop is not supported for this browser</div>\nFiles:\n<ul>\n    <li ng-repeat=\"f in files\" style=\"font:smaller\">{{f.name}} <img ng-show=\"f != null\" ngf-src=\"f\" class=\"thumb\"></li>\n</ul>\nUpload Log:\n<pre>{{log}}</pre>\n<style>\n    .button {\n        -moz-appearance: button;\n        /* Firefox */\n        -webkit-appearance: button;\n        /* Safari and Chrome */\n        padding: 10px;\n        margin: 10px;\n        width: 70px;\n    }\n    .drop-box {\n        background: #F8F8F8;\n        border: 5px dashed #DDD;\n        /*width: 200px;\n        height: 65px;*/\n        text-align: center;\n        padding: 25px;\n        margin: 10px 0;\n    }\n    .dragover {\n        border: 5px dashed blue;\n    }\n</style>", "name": "Upload", "alias": "upload", "created_by": 1}, "help_text": "prop help text", "description": "prop description", "data_type_id": 15}]}, {"name": "Properties"}]', true, false, false, '{1,2}', '{0}');
INSERT INTO media_type (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, allow_at_root, is_container, is_abstract, allowed_media_type_ids, composite_media_type_ids) VALUES (2, '2', NULL, 'Image', 'image', 1, '2015-03-27 17:57:48.335', 'Image media type description', 'fa fa-image fa-fw', 'fa fa-image fa-fw', NULL, '[{"name": "Image", "properties": [{"name": "title", "order": 2, "data_type": {"id": 1, "html": "<input type=\"text\" id=\"{{prop.name}}\" ng-model=\"data.meta[prop.name]\"/>", "name": "Text Input", "alias": "text_input", "created_by": 1}, "help_text": "help text", "description": "The title entered here can override the above one.", "data_type_id": 1}, {"name": "caption", "order": 3, "data_type": {"id": 3, "html": "<textarea id=\"{{prop.name}}\" ng-model=\"data.meta[prop.name]\">", "name": "Textarea", "alias": "textarea", "created_by": 1}, "help_text": "help text", "description": "Caption goes here.", "data_type_id": 3}, {"name": "alt", "order": 4, "data_type": {"id": 3, "html": "<textarea id=\"{{prop.name}}\" ng-model=\"data.meta[prop.name]\">", "name": "Textarea", "alias": "textarea", "created_by": 1}, "help_text": "help text", "description": "Alt goes here.", "data_type_id": 3}, {"name": "description", "order": 5, "data_type": {"id": 3, "html": "<textarea id=\"{{prop.name}}\" ng-model=\"data.meta[prop.name]\">", "name": "Textarea", "alias": "textarea", "created_by": 1}, "help_text": "help text", "description": "Description goes here.", "data_type_id": 3}, {"name": "file_upload", "order": 1, "data_type": {"id": 16, "html": "<div ng-controller=\"Collexy.DataTypeEditor.FileUpload.Controller\">\n    <pre>{{originalData.meta}}</pre>\n    <div ng-show=\"data.meta.attached_file\">\n\t<input type=\"text\" ng-readonly=\"true\" ng-model=\"data.meta.attached_file\">\n    </div>\n    <div ng-if=\"!originalData.meta.attached_file\">\n        <img style=\"max-width: 100%;\" src=\"{{location_url}}/{{data.meta.attached_file.name}}\"/>\n    </div>\n    <div ng-if=\"originalData.meta.attached_file\">\n\t\t<img style=\"max-width: 100%;\" src=\"{{location_url}}/{{originalData.meta.attached_file.name}}\"/>\n    </div>\n    <input type=\"checkbox\" ng-model=\"clearFiles\" id=\"clearFiles\" name=\"clearFiles\"/>\n    <label for=\"clearFiles\">Remove file</label>\n    <div ng-hide=\"clearFiles\">\n        <hr>\n        <input type=\"file\" file-input=\"files\"/>\n        <ul ng-show=\"files.length > 0\">\n            <li ng-repeat=\"file in files\">{{file.name}}</li>\n        </ul>\n    </div>\n\n    <!--<pre>{{originalData.meta}}</pre>\n    <div ng-show=\"data.meta[prop.name].persisted_files.length > 0\">\n\t<input type=\"text\" ng-readonly=\"true\" ng-model=\"data.meta[prop.name].persisted_files[$index]\" ng-repeat=\"file in data.meta[prop.name].persisted_files\">\n    </div>\n    <div ng-show=\"originalData.meta[prop.name].persisted_files.length > 0\">\n        <ul>\n            <li ng-repeat=\"file in originalData.meta[prop.name].persisted_files\">\n                <img style=\"max-width: 100%;\" src=\"{{location_url}}/{{file.name}}\"/>\n            </li>\n        </ul>\n    </div>\n    <input type=\"checkbox\" ng-model=\"clearFiles\" id=\"clearFiles\" name=\"clearFiles\"/>\n    <label for=\"clearFiles\">Remove file(s)</label>\n    <div ng-hide=\"clearFiles\">\n        <hr>\n        <input type=\"file\" file-input=\"files\" prop-name=\"{{prop.name}}\" multiple />\n        <ul ng-show=\"files.length > 0\">\n            <li ng-repeat=\"file in files\">{{file.name}}</li>\n        </ul>\n    </div>-->\n</div>", "name": "Upload Multiple", "alias": "upload_multiple", "created_by": 1}, "help_text": "prop help text", "description": "prop description", "data_type_id": 16}]}, {"name": "Properties", "properties": [{"name": "temporary property", "order": 1, "data_type": {"id": 1, "html": "<input type=\"text\" id=\"{{prop.name}}\" ng-model=\"data.meta[prop.name]\"/>", "name": "Text Input", "alias": "text_input", "created_by": 1}, "help_text": "help text", "description": "Temporary description goes here.", "data_type_id": 1}]}]', true, false, false, '{0}', '{0}');


--
-- TOC entry 2401 (class 0 OID 0)
-- Dependencies: 186
-- Name: media_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('media_type_id_seq', 2, true);


--
-- TOC entry 2361 (class 0 OID 98009)
-- Dependencies: 172
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO member (id, username, password, email, meta, created_date, updated_date, login_date, accessed_date, status, sid, member_type_id, member_group_ids) VALUES (1, 'default_member', '$2a$10$f9qZyhrTnjirqK53kY3jRu93AgSXUryUZwwFhOFxhh1R9t7LgHRGa', 'default_member@mail.com', '{"comments": "default user comments"}', '2015-01-22 14:25:38.904', NULL, '2015-06-13 03:51:35.925', NULL, 1, 'J4CNIJQH2JY5XOYR5MQFKYBDMM7572YF7GDYJA5JZ6GHZ7XGGE6A', 1, '{1}');


--
-- TOC entry 2368 (class 0 OID 98131)
-- Dependencies: 179
-- Data for Name: member_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO member_group (id, name, alias, created_by, created_date) VALUES (1, 'Authenticated Member', 'authenticated_member', 1, '2015-03-26 17:09:34.18');
INSERT INTO member_group (id, name, alias, created_by, created_date) VALUES (2, 'Member Group 2', 'member_group_2', 1, '2015-06-05 09:48:29.034');


--
-- TOC entry 2402 (class 0 OID 0)
-- Dependencies: 178
-- Name: member_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('member_group_id_seq', 2, true);


--
-- TOC entry 2403 (class 0 OID 0)
-- Dependencies: 173
-- Name: member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('member_id_seq', 1, true);


--
-- TOC entry 2386 (class 0 OID 98969)
-- Dependencies: 197
-- Data for Name: member_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO member_type (id, path, parent_id, name, alias, created_by, created_date, description, icon, thumbnail, meta, tabs, is_abstract, composite_member_type_ids) VALUES (1, '1', NULL, 'Member', 'member', 1, '2015-03-26 19:56:03.85', 'This is the default member type for Collexy members.', 'fa fa-user fa-fw', 'fa fa-user fa-fw', NULL, '[{"name": "Membership", "properties": [{"name": "comments", "order": 1, "help_text": "Help text for membership comments", "description": "Membership comments description", "data_type_id": 3}]}]', false, NULL);


--
-- TOC entry 2404 (class 0 OID 0)
-- Dependencies: 196
-- Name: member_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('member_type_id_seq', 1, true);


--
-- TOC entry 2389 (class 0 OID 99012)
-- Dependencies: 200
-- Data for Name: mime_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO mime_type (id, name, media_type_id) VALUES (2, 'image/png', 2);
INSERT INTO mime_type (id, name, media_type_id) VALUES (3, 'image/svg+xml', 2);
INSERT INTO mime_type (id, name, media_type_id) VALUES (1, 'image/jpeg', 2);


--
-- TOC entry 2405 (class 0 OID 0)
-- Dependencies: 201
-- Name: mime_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('mime_type_id_seq', 3, true);


--
-- TOC entry 2388 (class 0 OID 99001)
-- Dependencies: 199
-- Data for Name: permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO permission (id, name) VALUES (1, 'all');
INSERT INTO permission (id, name) VALUES (2, 'content_all');
INSERT INTO permission (id, name) VALUES (3, 'content_create');
INSERT INTO permission (id, name) VALUES (4, 'content_delete');
INSERT INTO permission (id, name) VALUES (5, 'content_update');
INSERT INTO permission (id, name) VALUES (6, 'content_section');
INSERT INTO permission (id, name) VALUES (7, 'content_browse');
INSERT INTO permission (id, name) VALUES (8, 'media_all');
INSERT INTO permission (id, name) VALUES (9, 'media_create');
INSERT INTO permission (id, name) VALUES (10, 'media_delete');
INSERT INTO permission (id, name) VALUES (11, 'media_update');
INSERT INTO permission (id, name) VALUES (12, 'media_section');
INSERT INTO permission (id, name) VALUES (13, 'media_browse');
INSERT INTO permission (id, name) VALUES (14, 'user_all');
INSERT INTO permission (id, name) VALUES (15, 'user_create');
INSERT INTO permission (id, name) VALUES (16, 'user_delete');
INSERT INTO permission (id, name) VALUES (17, 'user_update');
INSERT INTO permission (id, name) VALUES (18, 'user_section');
INSERT INTO permission (id, name) VALUES (19, 'user_browse');
INSERT INTO permission (id, name) VALUES (20, 'user_type_all');
INSERT INTO permission (id, name) VALUES (21, 'user_type_create');
INSERT INTO permission (id, name) VALUES (22, 'user_type_delete');
INSERT INTO permission (id, name) VALUES (23, 'user_type_update');
INSERT INTO permission (id, name) VALUES (24, 'user_type_section');
INSERT INTO permission (id, name) VALUES (25, 'user_type_browse');
INSERT INTO permission (id, name) VALUES (26, 'user_group_all');
INSERT INTO permission (id, name) VALUES (27, 'user_group_create');
INSERT INTO permission (id, name) VALUES (28, 'user_group_delete');
INSERT INTO permission (id, name) VALUES (29, 'user_group_update');
INSERT INTO permission (id, name) VALUES (30, 'user_group_section');
INSERT INTO permission (id, name) VALUES (31, 'user_group_browse');
INSERT INTO permission (id, name) VALUES (32, 'permission_all');
INSERT INTO permission (id, name) VALUES (33, 'permission_create');
INSERT INTO permission (id, name) VALUES (34, 'permission_delete');
INSERT INTO permission (id, name) VALUES (35, 'permission_update');
INSERT INTO permission (id, name) VALUES (36, 'permission_section');
INSERT INTO permission (id, name) VALUES (37, 'permission_browse');
INSERT INTO permission (id, name) VALUES (38, 'asset_all');
INSERT INTO permission (id, name) VALUES (39, 'asset_create');
INSERT INTO permission (id, name) VALUES (40, 'asset_delete');
INSERT INTO permission (id, name) VALUES (41, 'asset_update');
INSERT INTO permission (id, name) VALUES (42, 'asset_browse');
INSERT INTO permission (id, name) VALUES (43, 'asset_section');
INSERT INTO permission (id, name) VALUES (44, 'member_all');
INSERT INTO permission (id, name) VALUES (45, 'member_create');
INSERT INTO permission (id, name) VALUES (46, 'member_delete');
INSERT INTO permission (id, name) VALUES (47, 'member_update');
INSERT INTO permission (id, name) VALUES (48, 'member_section');
INSERT INTO permission (id, name) VALUES (49, 'member_browse');
INSERT INTO permission (id, name) VALUES (50, 'member_type_all');
INSERT INTO permission (id, name) VALUES (51, 'member_type_create');
INSERT INTO permission (id, name) VALUES (52, 'member_type_delete');
INSERT INTO permission (id, name) VALUES (53, 'member_type_update');
INSERT INTO permission (id, name) VALUES (54, 'member_type_section');
INSERT INTO permission (id, name) VALUES (55, 'member_type_browse');
INSERT INTO permission (id, name) VALUES (56, 'member_group_all');
INSERT INTO permission (id, name) VALUES (57, 'member_group_create');
INSERT INTO permission (id, name) VALUES (58, 'member_group_delete');
INSERT INTO permission (id, name) VALUES (59, 'member_group_update');
INSERT INTO permission (id, name) VALUES (60, 'member_group_section');
INSERT INTO permission (id, name) VALUES (61, 'member_group_browse');
INSERT INTO permission (id, name) VALUES (62, 'template_all');
INSERT INTO permission (id, name) VALUES (63, 'template_create');
INSERT INTO permission (id, name) VALUES (64, 'template_delete');
INSERT INTO permission (id, name) VALUES (65, 'template_update');
INSERT INTO permission (id, name) VALUES (66, 'template_section');
INSERT INTO permission (id, name) VALUES (67, 'template_browse');
INSERT INTO permission (id, name) VALUES (68, 'settings_section');
INSERT INTO permission (id, name) VALUES (69, 'settings_all');
INSERT INTO permission (id, name) VALUES (70, 'script_all');
INSERT INTO permission (id, name) VALUES (71, 'script_create');
INSERT INTO permission (id, name) VALUES (72, 'script_delete');
INSERT INTO permission (id, name) VALUES (73, 'script_update');
INSERT INTO permission (id, name) VALUES (74, 'script_section');
INSERT INTO permission (id, name) VALUES (75, 'script_browse');
INSERT INTO permission (id, name) VALUES (76, 'stylesheet_all');
INSERT INTO permission (id, name) VALUES (77, 'stylesheet_create');
INSERT INTO permission (id, name) VALUES (78, 'stylesheet_delete');
INSERT INTO permission (id, name) VALUES (79, 'stylesheet_update');
INSERT INTO permission (id, name) VALUES (80, 'stylesheet_section');
INSERT INTO permission (id, name) VALUES (81, 'stylesheet_browse');
INSERT INTO permission (id, name) VALUES (82, 'content_type_all');
INSERT INTO permission (id, name) VALUES (83, 'content_type_create');
INSERT INTO permission (id, name) VALUES (84, 'content_type_delete');
INSERT INTO permission (id, name) VALUES (85, 'content_type_update');
INSERT INTO permission (id, name) VALUES (86, 'content_type_section');
INSERT INTO permission (id, name) VALUES (87, 'content_type_browse');
INSERT INTO permission (id, name) VALUES (88, 'media_type_all');
INSERT INTO permission (id, name) VALUES (89, 'media_type_create');
INSERT INTO permission (id, name) VALUES (90, 'media_type_delete');
INSERT INTO permission (id, name) VALUES (91, 'media_type_update');
INSERT INTO permission (id, name) VALUES (92, 'media_type_section');
INSERT INTO permission (id, name) VALUES (93, 'media_type_browse');
INSERT INTO permission (id, name) VALUES (94, 'data_type_all');
INSERT INTO permission (id, name) VALUES (95, 'data_type_create');
INSERT INTO permission (id, name) VALUES (96, 'data_type_delete');
INSERT INTO permission (id, name) VALUES (97, 'data_type_update');
INSERT INTO permission (id, name) VALUES (98, 'data_type_section');
INSERT INTO permission (id, name) VALUES (99, 'data_type_browse');
INSERT INTO permission (id, name) VALUES (100, 'node_create');
INSERT INTO permission (id, name) VALUES (101, 'node_delete');
INSERT INTO permission (id, name) VALUES (102, 'node_update');
INSERT INTO permission (id, name) VALUES (103, 'node_move');
INSERT INTO permission (id, name) VALUES (104, 'node_copy');
INSERT INTO permission (id, name) VALUES (105, 'node_public_access');
INSERT INTO permission (id, name) VALUES (106, 'node_permissions');
INSERT INTO permission (id, name) VALUES (107, 'node_send_to_publish');
INSERT INTO permission (id, name) VALUES (108, 'node_publish');
INSERT INTO permission (id, name) VALUES (109, 'node_browse');
INSERT INTO permission (id, name) VALUES (110, 'node_change_content_type');
INSERT INTO permission (id, name) VALUES (111, 'node_sort');
INSERT INTO permission (id, name) VALUES (112, 'mime_type_all');
INSERT INTO permission (id, name) VALUES (113, 'mime_type_create');
INSERT INTO permission (id, name) VALUES (114, 'mime_type_delete');
INSERT INTO permission (id, name) VALUES (115, 'mime_type_update');
INSERT INTO permission (id, name) VALUES (116, 'mime_type_section');
INSERT INTO permission (id, name) VALUES (117, 'mime_type_browse');


--
-- TOC entry 2406 (class 0 OID 0)
-- Dependencies: 198
-- Name: permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('permission_id_seq', 117, true);


--
-- TOC entry 2372 (class 0 OID 98211)
-- Dependencies: 183
-- Data for Name: template; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (1, '1', NULL, 'Layout', 'layout', 1, '2015-03-27 03:46:27.018', false);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (2, '1.2', 1, 'Home', 'home', 1, '2015-03-27 03:46:27.018', false);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (3, '1.3', 1, 'Page', 'page', 1, '2015-03-27 03:46:27.018', false);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (4, '1.4', 1, 'Post', 'post', 1, '2015-03-27 03:46:27.018', false);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (5, '1.5', 1, 'Post Overview', 'post_overview', 1, '2015-03-27 03:46:27.018', false);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (6, '1.6', 1, 'Category', 'category', 1, '2015-03-27 03:46:27.018', false);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (7, '1.7', 1, 'Login', 'login', 1, '2015-03-27 03:46:27.018', false);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (8, '1.8', 1, 'Register', 'register', 1, '2015-03-27 03:46:27.018', false);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (9, '1.9', 1, '404', '404', 1, '2015-03-27 03:46:27.018', false);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (10, '1.10', 1, 'Unauthorized', 'unauthorized', 1, '2015-03-27 03:46:27.018', false);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (11, '11', NULL, 'Top Navigation', 'top_navigation', 1, '2015-03-27 03:52:39.752', true);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (12, '12', NULL, 'Featured Pages Widget', 'featured_pages_widget', 1, '2015-03-27 03:52:39.752', true);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (13, '13', NULL, 'Recent Posts Widget', 'recent_posts_widget', 1, '2015-03-27 03:52:39.752', true);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (14, '14', NULL, 'Post Overview Widget', 'post_overview_widget', 1, '2015-03-27 03:52:39.752', true);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (15, '15', NULL, 'Category List Widget', 'category_list_widget', 1, '2015-03-27 03:52:39.752', true);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (16, '16', NULL, 'Social Widget', 'social_widget', 1, '2015-03-27 03:52:39.752', true);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (17, '17', NULL, 'About Widget', 'about_widget', 1, '2015-03-27 03:52:39.752', true);
INSERT INTO template (id, path, parent_id, name, alias, created_by, created_date, is_partial) VALUES (18, '18', NULL, 'Login Widget', 'login_widget', 1, '2015-03-27 03:52:39.752', true);


--
-- TOC entry 2407 (class 0 OID 0)
-- Dependencies: 182
-- Name: template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('template_id_seq', 19, true);


--
-- TOC entry 2363 (class 0 OID 98067)
-- Dependencies: 174
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "user" (id, username, first_name, last_name, password, email, created_date, updated_date, login_date, accessed_date, status, sid, user_group_ids, permissions) VALUES (1, 'admin', 'Admin', 'Demo', '$2a$10$CWn3i3CKMJzhRGJ3B9TIeO.ePxgzajTFoB2cH5fpXkiZ7Az9jrmue', 'soren@codeish.com', '2014-11-15 16:51:00.215', NULL, '2015-06-22 15:21:43.878', NULL, 1, 'TGVJDTPJV3OPVQJWU3IQGTNDR4I5Z753HAHP5HB63BZ7YZJ3O27Q', '{1}', NULL);


--
-- TOC entry 2364 (class 0 OID 98074)
-- Dependencies: 175
-- Data for Name: user_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO user_group (id, name, alias, permissions) VALUES (2, 'Editor', 'editor', '{}');
INSERT INTO user_group (id, name, alias, permissions) VALUES (3, 'Writer', 'writer', '{}');
INSERT INTO user_group (id, name, alias, permissions) VALUES (1, 'Administrator', 'administrator', '{all,content_create,content_delete,content_update,content_section,content_browse,media_all,media_create,media_delete,media_update,media_section,media_browse,user_all,user_create,user_delete,user_update,user_section,user_browse,user_type_all,user_type_create,user_type_delete,user_type_update,user_type_section,user_type_browse,user_group_all,user_group_create,user_group_delete,user_group_update,user_group_section,user_group_browse,permission_all,permission_create,permission_delete,permission_update,permission_section,permission_browse,asset_all,asset_create,asset_delete,asset_update,asset_browse,asset_section,member_all,member_create,member_delete,member_update,member_section,member_browse,member_type_all,member_type_create,member_type_delete,member_type_update,member_type_section,member_type_browse,member_group_all,member_group_create,member_group_delete,member_group_update,member_group_section,member_group_browse,template_all,template_create,template_delete,template_update,template_section,template_browse,settings_section,settings_all,script_all,script_create,script_delete,script_update,script_section,script_browse,stylesheet_all,stylesheet_create,stylesheet_delete,stylesheet_update,stylesheet_section,stylesheet_browse,content_type_all,content_type_create,content_type_delete,content_type_update,content_type_section,content_type_browse,media_type_all,media_type_create,media_type_delete,media_type_update,media_type_section,media_type_browse,data_type_all,data_type_create,data_type_delete,data_type_update,data_type_section,data_type_browse,node_create,node_delete,node_update,node_move,node_copy,node_public_access,node_permissions,node_send_to_publish,node_publish,node_browse,node_change_content_type,node_sort,content_all,mime_type_all,mime_type_create,mime_type_delete,mime_type_update,mime_type_section,mime_type_browse}');


--
-- TOC entry 2408 (class 0 OID 0)
-- Dependencies: 176
-- Name: user_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_group_id_seq', 3, true);


--
-- TOC entry 2409 (class 0 OID 0)
-- Dependencies: 177
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('user_id_seq', 1, true);


-- Completed on 2015-06-22 15:46:43

--
-- PostgreSQL database dump complete
--

