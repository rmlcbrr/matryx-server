<?php
    class Visual{

        public function __construct(){
            $db = new Database();
            $this->conn = $db->getConnection();
        }

        public function getVisualData($upload_stage){
           
            $query = "SELECT * FROM upload WHERE IsVisualTest = ? AND upload_stage = ? AND DATE(registerdate) >= CURDATE()";
            $stmt = $this->conn->prepare($query);
            $stmt->execute([0, $upload_stage]);
            $visual = $stmt->fetchAll();
                
            return $visual;
        }

        public function getVisualDataAbove($code){
           
            $query = "SELECT * FROM visualconfig WHERE code = ?";
            $stmt = $this->conn->prepare($query);
            $stmt->execute([$code]);
            $visual = $stmt->fetchAll();
                
            return $visual;
        }

        public function fetchId($id){
           
            $query = "SELECT id, upload_mvisr, upload_stage FROM upload WHERE id = ?";
            $stmt = $this->conn->prepare($query);
            $stmt->execute([$id]);
            $visual = $stmt->fetch();
        
            return $visual;
        }

        public function updateVisual($id,$speedometer,$desc,$res){

            $data = [
                'id' => $id,
                'visual_desc' => $desc,
                'visual_result' => $res,
                'upload_odmeter' => $speedometer,
                'IsVisualTest' => 1
            ];
           
            $query = "UPDATE upload SET visual_desc = :visual_desc,visual_result =:visual_result, upload_odmeter =:upload_odmeter, IsVisualTest =:IsVisualTest WHERE id = :id";
            $stmt = $this->conn->prepare($query);
            
            return $stmt->execute($data);
        }


    }