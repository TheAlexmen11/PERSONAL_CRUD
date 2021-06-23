<?php 
    class Producto extends Conectar{
        public function get_producto(){
            $conectar = parent::conexion(); //declara una variable conectar
            parent::set_names(); //se llama parent para no tener problema con las Ñ o las tildes 
            $sql="SELECT * FROM tm_producto WHERE est='1'"; //query la consulta que se va hacer
            $sql=$conectar->prepare($sql);  //a la variable sql llamo a conectar y preparo el sql para ejecutarse
            $sql->execute(); //despues con esto lo ejecutamos
            return $resultado=$sql->fetchAll(); //retornamos lo que capturamos en una variable
        }
        public function get_producto_x_id($prod_id){ //nesecita una variable prod_id
            $conectar = parent::conexion();
            parent::set_names();
            $sql="SELECT * FROM tm_productos WHERE prod_id = ?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$prod_id);    //se necesita un parametro el campo del orden 1,prod_id
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }
        public function delete_producto($prod_id){ //nesecita una variable prod_id
            $conectar = parent::conexion();
            parent::set_names();
            $sql="UPDATE tm_producto SET est=0,fech_elim=now() WHERE prod_id = ?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$prod_id);    //se necesita un parametro el campo del orden 1,prod_id
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }
        public function insert_producto($prod_nom){ //nesecita una variable prod_id
            $conectar = parent::conexion();
            parent::set_names();
            $sql="INSERT INTO tm_producto (prod_id, prod_nom, fech_crea, fech_modi, fech_elim, est) VALUES (NULL, 'monitor', '', NULL, NULL, ''), (NULL,?, now(), NULL, NULL, '1');";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$prod_nom);    //se necesita un parametro el campo del orden 1,prod_id
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }
        public function update_producto($prod_id,$prod_nom){ //nesecita una variable prod_id
            $conectar = parent::conexion();
            parent::set_names();
            $sql="UPDATE tm_producto 
            SET 
                prod_nom=?,
                fech_modi=now() 
            WHERE 
                prod_id = ?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1,$prod_nom);  
            $sql->bindValue(2,$prod_id);   //se necesita un parametro el campo del orden 1,prod_id
            $sql->execute();
            return $resultado=$sql->fetchAll();
        }
    }
?>