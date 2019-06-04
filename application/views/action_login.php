<?php
// session_start();
error_reporting(0);
// $_SESSION['login']='login';
if(isset($_POST['login']))
    {
    if ($_POST["vercode"] != $_SESSION["vercode"] OR $_SESSION["vercode"]=='')  {
            echo "<script>alert('Incorrect verification code');</script>" ;
            // echo "oke";
            redirect ('sign', 'refresh');
    }
    else {
        $username=$_POST['username'];
        $password=md5($_POST['password']);
        
        $this->db->where('username', $username);
        $this->db->where('password', $password);
        $this->db->from('admin');

        $query = $this->db->count_all_results();
        if($query == 1)
        {
            // echo "oke2";
            $_SESSION['username'] = $username;
            $_SESSION['password'] = $password; 
            $_SESSION['login']='login';
            redirect ('sign','refresh');
        } 
        else{
            // echo "oke3";
            echo "<script>alert('Invalid Details');</script>";
        }
    }
}
?>