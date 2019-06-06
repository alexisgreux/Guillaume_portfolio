<?php

// Home
$app
    ->get(
        '/',
        function($request, $response)
        {
            $query = $this->db->query('SELECT*FROM category');
            $categorys = $query->fetchAll();

            // View data

            $viewData = [];
            $viewData['categorys'] = $categorys;

            return $this->view->render($response, 'pages/home.twig', $viewData);
        }
    )
    ->setName('home')
;


// Projects
$app
    ->get(
        '/projects/{slug:[a-z_-]+}',
        function($request, $response, $arguments)
        {
            $prepare = $this->db->prepare('SELECT * FROM category WHERE slug = ?');
            $prepare->execute(array($arguments['slug']));
            $category = $prepare->fetch();

            $prepare = $this->db->prepare('SELECT * FROM project WHERE id_category = ?');
            $prepare->execute(array($category->id_category));
            $projects = $prepare->fetchAll();


            // View data
            $viewData = [];
            $viewData['category'] = $category;
            $viewData['projects'] = $projects;
            $viewData['name'] = $category->title;
            $viewData['style'] = "projects";

            return $this->view->render($response, 'pages/projects.twig', $viewData);
        }
    )
    ->setName('projects')
;

// Project
$app
    ->get(
        '/project/{slug:[a-z_-]+}',
        function($request, $response, $arguments)
        {
            $prepare = $this->db->prepare('SELECT * FROM project WHERE slug = ?');
            $prepare->execute(array($arguments['slug']));
            $project = $prepare->fetchAll();

            // $prepare = $this->db->prepare('SELECT * FROM project WHERE id_category = ?');
            // $prepare->execute(array($category->id_category));
            // $projects = $prepare->fetchAll();


            // View data
            $viewData = [];
            $viewData['project'] = $project;
            $viewData['style'] = "project";


            return $this->view->render($response, 'pages/project.twig', $viewData);
        }
    )
    ->setName('project')
;

// About
$app
    ->get(
        '/about',
        function($request, $response)
        {
            $query = $this->db->query('SELECT * FROM about');
            $about = $query->fetchAll();


            // View data
            $viewData = [];
            $viewData['about'] = $about;
            $viewData['style_about'] = "about";


            return $this->view->render($response, 'pages/about.twig', $viewData);
        }
    )
    ->setName('about')
;