<?php

namespace Concrete\Package\ConcreteCmsTraining;

use Concrete\Core\Package\Package;

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
        
    }
}
