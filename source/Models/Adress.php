<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Source\Models;

use CoffeeCode\DataLayer\DataLayer;
/**
 * Description of Adress
 *
 * @author JOSE-PAULO
 */
class Adress extends DataLayer {
    
    public function __construct() {
        parent::__construct("address", ["user_id"], "addr_id", false);
    }
    
    public function add(User $user, string $street, string $number): Address
    {
        $this->user_id = $user-> id;
        $this->addr_street = $street;
        $this->addr_number = $number;
        
        return $this;
    }
}
