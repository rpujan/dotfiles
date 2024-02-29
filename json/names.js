const names = [
  {
    "guid": "494ca406-1dd2-4d30-9de2-c76b82829610",
    "firstName": "England",
    "lastName": "Hale",
    "gender": "male",
    "age": 23
  },
  {
    "guid": "a2a5fafe-9385-40f5-9fa9-6d4b416ec3ba",
    "firstName": "Byers",
    "lastName": "Oliver",
    "gender": "male",
    "age": 28
  },
  {
    "guid": "6b3fba76-e178-4856-877b-d57a2c9f6db8",
    "firstName": "Callie",
    "lastName": "Williams",
    "gender": "female",
    "age": 28
  },
  {
    "guid": "c49bce93-41f0-48e3-95fc-66aaddb0ad89",
    "firstName": "Letha",
    "lastName": "Gill",
    "gender": "female",
    "age": 23
  },
  {
    "guid": "594d6d32-f484-48cf-838b-4515752e47fe",
    "firstName": "Aurora",
    "lastName": "Bridges",
    "gender": "female",
    "age": 23
  },
  {
    "guid": "77560a5e-42d9-4677-b632-3b53ef4a7663",
    "firstName": "Myrna",
    "lastName": "Morin",
    "gender": "female",
    "age": 30
  },
  {
    "guid": "58b9929f-7186-4236-af00-35b01a9adafd",
    "firstName": "Greta",
    "lastName": "Jenkins",
    "gender": "female",
    "age": 37
  },
  {
    "guid": "c356d8d7-302d-4e54-9202-3bbe071fb42d",
    "firstName": "Melanie",
    "lastName": "Spencer",
    "gender": "female",
    "age": 32
  },
  {
    "guid": "333bfce5-d4fe-40f4-84e1-1a4dae44ec5f",
    "firstName": "Bettye",
    "lastName": "Velazquez",
    "gender": "female",
    "age": 28
  },
  {
    "guid": "7ac81f6a-caae-4947-8ec3-d6681ce4dc54",
    "firstName": "Lenora",
    "lastName": "Howe",
    "gender": "female",
    "age": 31
  },
  {
    "guid": "11cf7789-3245-40e3-af69-c3f6db3c0e97",
    "firstName": "Alejandra",
    "lastName": "Griffin",
    "gender": "female",
    "age": 22
  },
  {
    "guid": "7db2b5d5-516d-4776-8a63-a091f3bd1f30",
    "firstName": "Cox",
    "lastName": "Anderson",
    "gender": "male",
    "age": 27
  },
  {
    "guid": "fc7fd0b5-7427-4fd8-9bf5-54e6cb925eb7",
    "firstName": "Morin",
    "lastName": "Shields",
    "gender": "male",
    "age": 22
  },
  {
    "guid": "eb27e0bf-7d41-4c23-8bc0-daf2b2dd59a4",
    "firstName": "Alyce",
    "lastName": "Workman",
    "gender": "female",
    "age": 35
  },
  {
    "guid": "3979a021-8763-4f87-911c-0384de3a3e94",
    "firstName": "Michael",
    "lastName": "Foster",
    "gender": "female",
    "age": 38
  },
  {
    "guid": "9af2e8cb-40f4-4a85-ba8c-5fcf0f10fe23",
    "firstName": "Barlow",
    "lastName": "Prince",
    "gender": "male",
    "age": 39
  },
  {
    "guid": "ec846a15-36c3-4292-a6c3-3307b65cb046",
    "firstName": "Mueller",
    "lastName": "Simon",
    "gender": "male",
    "age": 40
  },
  {
    "guid": "8447d314-56a7-46ce-9a27-9e5d8749cb16",
    "firstName": "Olivia",
    "lastName": "Rowland",
    "gender": "female",
    "age": 24
  },
  {
    "guid": "ee58b6b0-632b-4f26-867d-95fd75dd7346",
    "firstName": "Della",
    "lastName": "Hughes",
    "gender": "female",
    "age": 29
  },
  {
    "guid": "b481c290-2404-4601-8d90-d5bdb8671f46",
    "firstName": "Sanchez",
    "lastName": "Shelton",
    "gender": "male",
    "age": 25
  },
  {
    "guid": "99755df3-68f6-4881-99f8-57a418f4e3bc",
    "firstName": "Ursula",
    "lastName": "Robbins",
    "gender": "female",
    "age": 35
  },
  {
    "guid": "68ea6c9b-f9ea-4aa8-bb98-9ccd27883ee3",
    "firstName": "West",
    "lastName": "Frank",
    "gender": "male",
    "age": 35
  },
  {
    "guid": "4a40acb9-12e1-4069-9407-eb531be01e63",
    "firstName": "Ruthie",
    "lastName": "Boyd",
    "gender": "female",
    "age": 25
  },
  {
    "guid": "b12d2fb5-9631-4549-bbd0-ac1bce2a606a",
    "firstName": "Crystal",
    "lastName": "Snow",
    "gender": "female",
    "age": 34
  },
  {
    "guid": "acdcc709-6de6-47f8-95c1-ae13abaee14f",
    "firstName": "Herman",
    "lastName": "Hunt",
    "gender": "male",
    "age": 26
  },
  {
    "guid": "fc20459c-7092-4c79-a0d2-e253f032a442",
    "firstName": "Parrish",
    "lastName": "Baird",
    "gender": "male",
    "age": 29
  },
  {
    "guid": "bd58babc-e6af-4535-ad38-d8b954a8894d",
    "firstName": "Buchanan",
    "lastName": "Wyatt",
    "gender": "male",
    "age": 35
  },
  {
    "guid": "4ca105e8-943d-452e-b5fe-82aa1f76cafc",
    "firstName": "Ida",
    "lastName": "Bradshaw",
    "gender": "female",
    "age": 39
  },
  {
    "guid": "b8e64a55-3fe2-4035-aca8-e0b14b0495da",
    "firstName": "Tamra",
    "lastName": "Burnett",
    "gender": "female",
    "age": 34
  },
  {
    "guid": "b11e6c4b-9139-4d18-a6bf-cc9b092347ec",
    "firstName": "Warner",
    "lastName": "Montgomery",
    "gender": "male",
    "age": 26
  },
  {
    "guid": "04beeac5-8da2-45bc-ac1c-d35abbc5c587",
    "firstName": "Sweet",
    "lastName": "Wynn",
    "gender": "male",
    "age": 22
  },
  {
    "guid": "a6f266d6-50fc-425e-8108-94d2caa1f2a9",
    "firstName": "Nelson",
    "lastName": "Macdonald",
    "gender": "male",
    "age": 26
  },
  {
    "guid": "3d27f6df-829a-46b5-b1fe-945b61469984",
    "firstName": "Blackburn",
    "lastName": "Alexander",
    "gender": "male",
    "age": 24
  },
  {
    "guid": "3bf40a2d-a512-44bb-8275-09e98473fdc5",
    "firstName": "Dena",
    "lastName": "Jacobs",
    "gender": "female",
    "age": 22
  },
  {
    "guid": "c1ce8f13-42e9-4267-9ae7-63303ea944a9",
    "firstName": "Molly",
    "lastName": "Whitney",
    "gender": "female",
    "age": 21
  },
  {
    "guid": "6495ad60-d5b7-45cb-883c-b8aee0a57271",
    "firstName": "Alyssa",
    "lastName": "Wheeler",
    "gender": "female",
    "age": 40
  },
  {
    "guid": "65a566d4-5011-4d66-a30d-9dede2d9b219",
    "firstName": "Annmarie",
    "lastName": "Oneill",
    "gender": "female",
    "age": 34
  },
  {
    "guid": "f4f81d39-4bc2-4936-8a65-a5e2d9280ce3",
    "firstName": "Elsa",
    "lastName": "Pearson",
    "gender": "female",
    "age": 38
  },
  {
    "guid": "5f051b7a-e541-4b2f-9049-df3803d155cb",
    "firstName": "Lucille",
    "lastName": "Evans",
    "gender": "female",
    "age": 25
  },
  {
    "guid": "1f1cb9e1-950d-460b-9473-7b47d85f2e0d",
    "firstName": "Marla",
    "lastName": "Bullock",
    "gender": "female",
    "age": 29
  },
  {
    "guid": "017732b4-98fd-4a9f-b689-de4a5d80aed4",
    "firstName": "Terry",
    "lastName": "Mclaughlin",
    "gender": "female",
    "age": 20
  },
  {
    "guid": "4ffec4c2-a8b2-460b-8e7a-094f9ef71b63",
    "firstName": "Grimes",
    "lastName": "Richards",
    "gender": "male",
    "age": 39
  },
  {
    "guid": "2155d191-c015-4b88-a36f-700fb1643042",
    "firstName": "Bullock",
    "lastName": "Delaney",
    "gender": "male",
    "age": 36
  },
  {
    "guid": "7d5fa059-2c14-413f-8633-eefc9ca7e47b",
    "firstName": "Jodi",
    "lastName": "Bowman",
    "gender": "female",
    "age": 29
  },
  {
    "guid": "be94b3d7-cbe9-4e77-9492-c3efc0d720f9",
    "firstName": "Hazel",
    "lastName": "Travis",
    "gender": "female",
    "age": 20
  },
  {
    "guid": "6a0dfc09-a6c6-4f8d-9a84-0b3a18da11ca",
    "firstName": "Kathie",
    "lastName": "Daniels",
    "gender": "female",
    "age": 31
  },
  {
    "guid": "f8844008-233d-4c75-a005-03aa22f464f4",
    "firstName": "Sharp",
    "lastName": "Cote",
    "gender": "male",
    "age": 31
  },
  {
    "guid": "dc16f281-7f16-4925-9cc1-3afbe17de620",
    "firstName": "Callahan",
    "lastName": "Buck",
    "gender": "male",
    "age": 37
  },
  {
    "guid": "d93eb39e-f237-4411-a6ae-4f7c1b4eb856",
    "firstName": "Terry",
    "lastName": "Gould",
    "gender": "male",
    "age": 25
  },
  {
    "guid": "4b1fbf9f-8d55-4ad7-9cff-b3a70a8f1146",
    "firstName": "Goodman",
    "lastName": "Callahan",
    "gender": "male",
    "age": 33
  }
];

export function getUsers() {
  return names;
}