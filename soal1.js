//original list
var list_cars = ["Volvo", "BMW", "Toyota", "Kijang"];
console.log(`soal a :\t${list_cars}`);

var temp = list_cars[0]; // "Volvo" ditampung ke variable kosong
list_cars[0] = list_cars[1]; // list_cars[0] = "Volvo" diganti dengan "BMW" jadi ["BMW", "BMW", "Toyota", "Kijang"]
list_cars[1] = temp; // list_cars[1] = "BMW" diganti dengan "Volvo" jadi ["BMW", "Volvo", "Toyota", "Kijang"]
console.log(`soal b :\t${list_cars}`);

temp = list_cars[0]; // "BMW" ditampung ke variable temp yang asalnya "Volvo" menjadi "BMW"
list_cars[0] = list_cars[2]; // list_cars[0] = "BMW" diganti dengan "Toyota" jadi ["Toyota", "Volvo", "Toyota", "Kijang"]
list_cars[2] = temp; // list_cars[2] = "Toyota" diganti dengan "BMW" jadi ["Toyota", "Volvo", "BMW", "Kijang"]
console.log(`soal c :\t${list_cars}`);

temp = list_cars[0]; // "Toyota" ditampung ke variable temp yang asalnya "BMW" menjadi "Toyota"
list_cars[0] = list_cars[3]; // list_cars[0] = "Toyota" diganti dengan "Kijang" jadi ["Kijang", "Volvo", "BMW", "Kijang"]
list_cars[3] = temp; // list_cars[3] = "Kijang" diganti dengan "Toyota" jadi ["Kijang", "Volvo", "BMW", "Toyota"]
console.log(`soal d :\t${list_cars}`);

//total pengerjaan 17 menit
