<?php

namespace App\Controller\Admin;

use App\Entity\Concours;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class ConcoursCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Concours::class;
    }

    /*
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id'),
            TextField::new('title'),
            TextEditorField::new('description'),
        ];
    }
    */
}
