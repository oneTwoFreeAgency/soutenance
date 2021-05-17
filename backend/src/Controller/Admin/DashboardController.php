<?php

namespace App\Controller\Admin;

use App\Entity\Contacts;
use App\Controller\ContactsCrudController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
// use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
// use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;

class DashboardController extends AbstractDashboardController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index(): Response
    {
        return parent::index();
        /* $routeBuilder = $this->get(AdminUrlGenerator::class);
        return $this->redirect($routeBuilder->setController(ContactsCrudController::class)->generateUrl()); */

    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('Backend');
    }

    public function configureMenuItems(): iterable
    {
         yield MenuItem::linktoDashboard('Dashboard', 'fa fa-home');
        //  yield MenuItem::linkToCrud('contacts_crud_index', 'fas fa-list', Contacts::class);

        /* return [
            yield MenuItem::linktoDashboard('Dashboard', 'fa fa-home'),
            yield MenuItem::linkToCrud('contacts_crud_index', 'fa fa-tags', Contacts::class),
        ]; */
    }
}
