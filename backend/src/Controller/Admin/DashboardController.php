<?php

namespace App\Controller\Admin;

use App\Entity\Brief;
use App\Entity\Devis;
use App\Entity\Concours;
use App\Entity\Contacts;
use App\Entity\Candidats;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;

class DashboardController extends AbstractDashboardController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index(): Response
    {
        // return parent::index();        
        $routeBuilder = $this->get(AdminUrlGenerator::class);
        return $this->redirect($routeBuilder->setController(BriefCrudController::class)->generateUrl());
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('Backend');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::linktoDashboard('Dashboard', 'fa fa-home');
        yield MenuItem::linkToCrud('Brief', 'fas fa-list', Brief::class);
        yield MenuItem::linkToCrud('Candidats', 'fas fa-list', Candidats::class);
        yield MenuItem::linkToCrud('Concours', 'fas fa-list', Concours::class);
        yield MenuItem::linkToCrud('Contacts', 'fas fa-list', Contacts::class);
        yield MenuItem::linkToCrud('Devis', 'fas fa-list', Devis::class);
    }
}
