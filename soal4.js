const dataDiri = [
  {
    name: "Bimo Nasuti",
    mob: "654544455",
    email: "bimonasuti@gmail.com",
    hp: "08123456787",
  },
  {
    name: "Bimo Nasuti",
    mob: "1231354897",
    email: "bombomi@gmail.com",
  },
  {
    name: "Yuni Salam",
    mob: "512512662",
    email: "yunisalam@gmail.com",
    hp: "08123456787",
  },
];

for (let index = 0; index < dataDiri.length; index++) {
  const element = dataDiri[index];
  if (!element.hp) {
    element.hp = "Tidak Memiliki No Handphone";
  }
  console.log(element);
}

// dikerjakan dengan waktu kurang lebih 4 menit
