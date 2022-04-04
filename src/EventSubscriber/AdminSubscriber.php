<?php

namespace App\EventSubscriber;

use App\Model\TimeInterface;
use Doctrine\Common\EventSubscriber;
use EasyCorp\Bundle\EasyAdminBundle\Event\BeforeEntityPersistedEvent;
use EasyCorp\Bundle\EasyAdminBundle\Event\BeforeEntityUpdatedEvent;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;

class AdminSubscriber implements EventSubscriberInterface
{
    public static function getSubscribedEvents() : array
    {
        return [
            BeforeEntityPersistedEvent::class => ['setEntityCreatedAt'],
            BeforeEntityUpdatedEvent::class => ['setEntityUpdatedAt']
    ];
    }

    public function setEntityCreatedAt(BeforeEntityPersistedEvent $event) : void
        {
            $entity = $event->getEntityInstance();
            if (!$entity instanceof TimeInterface) {
                return;
            }

            $entity->setCreatedAt(new \DateTime());
        }

    public function setEntityUpdatedAt(BeforeEntityUpdatedEvent $event) : void
    {
        $entity = $event->getEntityInstance();
        if (!$entity instanceof TimeInterface) {
            return;
        }

        $entity->setUpdatedAt(new \DateTime());
    }
}