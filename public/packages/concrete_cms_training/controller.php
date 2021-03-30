<?php

namespace Concrete\Package\ConcreteCmsTraining;

use Concrete\Core\Package\Package;
use PortlandLabs\ConcreteCmsTheme\Navigation\HeaderNavigationFactory;

class Controller extends Package
{

    protected $pkgHandle = 'concrete_cms_training';
    protected $appVersionRequired = '9.0.0a1';
    protected $pkgVersion = '0.80';
    protected $pkgAutoloaderMapCoreExtensions = true;
    protected $pkgAutoloaderRegistries = array(
        'src' => '\PortlandLabs\ConcreteCmsTraining'
    );

    public function getPackageDescription()
    {
        return t("The training.concretecms.com extensions.");
    }

    public function getPackageName()
    {
        return t("training.concretecms.com");
    }
    
    public function install()
    {
        parent::install();
        $this->installContentFile('data.xml');
        $this->installContentFile('content.xml');
    }

    public function upgrade()
    {
        parent::upgrade();
        $this->installContentFile('data.xml');
    }
    
    public function on_start()
    {
        $this->app->make('director')->addListener('on_before_render', function($event) {
            // must be done in an event because it must come AFTER the concrete cms package registers the
            // header navigation factory class as a singleton.
            $headerNavigationFactory = app(HeaderNavigationFactory::class);
            $headerNavigationFactory->setActiveSection(HeaderNavigationFactory::SECTION_SUPPORT);
        });

    }
}
