<?php

/**
 * Created by PhpStorm.
 * User: david
 * Date: 26/03/17
 * Time: 02:57 PM
 */
define('TABLE_PERSONAS', 'personas');

class Personas_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function get($id = NULL) {
        /*$sql= $this->db->select('name, surname1, surname2, email')->get_compiled_select('personas');
        $query = $this->db->query($sql);
        return $query->result();*/
        /*Es más sensato devolver el array en el modelo(de esa manera se hace una comprobación sobre lo obtenido),
         que hacecerlo en el controlador*/
        $resultado = false;
        if (is_null($id)) {
            $query = $this->db->get('personas');
            if ($query->num_rows() > 0) {
                $resultado = $query->result_array();
            }
        } else {
            $query = $this->db->get_where('personas', ['id' => $id]);
            if ($query->num_rows() === 1) {
                $resultado = $query->row_array();
            }
        }
        return $resultado;
    }

    public function create() {
        $resultado = false;
        $datos = json_decode(file_get_contents("php://input"), true);
        $datos['id'] = NULL;
        if ($this->db->insert('personas', $datos)) {
            if ($this->db->affected_rows() === 1) {
                $resultado = true;
            }
        }
        return $resultado;
    }

    public function update($id = NULL) {
        $resultado = false;
        $datos = json_decode(file_get_contents("php://input"), true);
        unset($datos['id']);
        if (!is_null($id)) {
            $this->db->update('personas', $datos, ['id' => $id]);
            if ($this->db->affected_rows() === 1) {
                $resultado = true;
            }
        }
        return $resultado;
    }

    public function delete($id = NULL) {
        if (!is_null($id)) {
            $this->db->delete('personas', ['id' => $id]);
        }
        return $this->db->affected_rows() === 1;
    }

    private function getPersona() {
        //Es necesario poner true en la función json_decode para devolver un array asociativo, en vez de un objeto
        $persona = json_decode(file_get_contents("php://input"), true);
        /*Al ser 'id' un atributo de clave primaria y autoincremental, no es necesario enviarlo en la solicitud del post,
        además dicho campo no forma parte del control de quien hace la solicitud, sin embargo, para dotarle de robustez
        a la API y en caso de enviar id en la solicitud se seteará a null para procesarlo correctamente.
        */
        $persona['id'] = NULL;
        return $persona;
    }


}