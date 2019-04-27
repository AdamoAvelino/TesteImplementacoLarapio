<?php

namespace Larapio\Http;

class Crsf
{
    private $token;

    public function __construct()
    {
        $this->token = sha1(uniqid(rand(), true));
    
    }
  

    public function getCrsf()
    {
        return $this->token;
    }
}
