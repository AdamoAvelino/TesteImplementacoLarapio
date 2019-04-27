<?php

namespace Larapio\App\Model;

class ModelColection {

    private $colection;
    private $className;
    private $baseNameSpace = 'Larapio\App\Model\\';

    /**
     * ------------------------------------------------------------------------------------------------------------
     * @param type $className
     * @param type $lista
     */
    public function __construct($className, $lista) {
        $this->className = $className;
        foreach ($lista as $objectData) {
            $this->setColection((array) $objectData);
        }
    }
    /**
     * ------------------------------------------------------------------------------------------------------------
     * @param type $data
     */
    private function setColection($data) {
        $model = $this->baseNameSpace . $this->className;
        $this->colection[] = new $model($data);
    }
    
    /**
     * ------------------------------------------------------------------------------------------------------------
     * @return type
     */
    public function getColection() {
        return $this->colection;
    }

}
