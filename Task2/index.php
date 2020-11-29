<?php 

class StroopTest{

    private $result = [];

    // Функция перемешивания массивов и получения результата
    public function mixColoursAndWords($colours, $words){
        // Перемешивание обоих массивов
        shuffle($colours);
        shuffle($words);
        
        for($i = 0; $i < count($colours); $i++){
            if($colours[$i] != $words[$i]){ // сравнение элементов массивов цветов и слов
                // Создание вспомогательных массивов ключей и значений
                $colours1[] = $colours[$i];
                $words1[] = $words[$i];
                // Сбор результирующего массива из массивов ключей и значений
                // и срез первых 5 элементов 
                $this->result = array_slice(array_combine($colours1, $words1), 5);
            }
        }
    }

    // Фугкция вывода результата на экран
    public function print(){

        for($i = 0; $i < 5; $i++){
            foreach($this->result as $key => $value){
                echo '<label style="color:' . $key .'">' . $value . "  " .'</label>';
            }
            echo "<br>";
        }
    }
}

// Массив названий цветов
$colours = ["red", "blue", "green", "yellow", "lime", "magenta", "black", "gold", "gray", "tomato"];
// Массив слов (копия массива цветов)
$words = $colours;

$stroop = new StroopTest();
$stroop->mixColoursAndWords($colours, $words); 
$stroop->print();