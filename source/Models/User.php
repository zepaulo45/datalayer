<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of User
 *
 * @author JOSE-PAULO
 */
namespace Source\Models;

use CoffeeCode\DataLayer\DataLayer;

class User extends DataLayer 
{

    public function __construct() 
    {
        parent::__construct("users", ["user_name","user_lastname"]);
    }
    public function addresses() 
    {
        return (new Address())->find("user_id = :uid","uid={$this->id}")->fetch(true);
    }
}
