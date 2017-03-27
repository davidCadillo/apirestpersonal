<?php

/**
 * Created by PhpStorm.
 * User: david
 * Date: 26/03/17
 * Time: 01:01 PM
 */

require_once APPPATH . 'libraries/REST_Controller.php';

use Restserver\Libraries\REST_Controller;

class Personas extends REST_Controller {


    /**
     * Personas constructor.
     */
    public function __construct() {
        parent::__construct();
    }

    function index_get() {
        $personas = $this->personas_model->get();
        if (is_null($personas)) {
            $this->response(['error' => 'No se ha encontrado información'], 404);
        } else {
            $this->response($personas, 200);
        }
    }

    function find_get($id) {
        if (!$id) {
            //Error 400 ya que la url está mal escrita
            $this->response(NULL, 400);
        }
        $personas = $this->personas_model->get($id);
        if (is_null($personas) || !$personas) {
            $this->response(['error' => 'Persona no encontrada'], 404);
        } else {
            $this->response($personas, 200);
        }
    }

    function index_post() {
        if (!$this->post()) {
            $this->response(NULL, 400);
        }
        $id = $this->personas_model->create($this->post());
        if (is_null($id) || !$id) {
            $this->response(['error' => 'Ha habido un error al guardar los datos.'], 404);
        } else {
            $this->response(['response' => 'ok'], 200);
        }
    }

    function index_put($id) {
        if (!$this->put() || !$id) {
            $this->response(NULL, 400);
        }
        $persona = $this->personas_model->update($id, $this->put());
        if (is_null($persona) || empty($persona)) {
            $this->response(['error' => 'Ha habido un error al actualizar los datos.'], 404);
        } else {
            $this->response(['response' => 'Correcto.'], 200);
        }
    }

    function index_delete($id) {
        if (!$this->delete() || !$id) {
            $this->response(NULL, 400);
        }
        $persona = $this->personas_model->delete($id);
        if (is_null($persona) || empty($persona)) {
            $this->response(['error' => 'Ha habido un error al eliminar.'], 404);
        } else {
            $this->response(['response' => 'Correcto.'], 200);
        }
    }

}