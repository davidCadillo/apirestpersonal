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
        $datos = json_decode(file_get_contents("php://input"), true);
        $datos['id'] = NULL;
        if ($this->db->insert('personas', $datos)) {
            return $this->db->affected_rows() === 1;
        }
        return false;

    }

    public function update($id = NULL) {
        $resultado = false;
        $datos = json_decode(file_get_contents("php://input"), true);
        unset($datos['id']);
        if (!is_null($id)) {
            if ($this->db->update('personas', $datos, ['id' => $id])) {
                if ($this->db->affected_rows() === 1) {
                    $resultado = true;
                }
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

}