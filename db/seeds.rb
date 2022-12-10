adventures = Adventure.create([
    {
        title: "Kilimambogo Hike",
        image_url: "https://alchetron.com/cdn/ol-donyo-sabuk-b09cbac9-1d48-4f0d-b8d0-248709fda39-resize-750.jpeg",
    },
    {
        title: "Ngong Hills Trip",
        image_url: "http://howandwhere.co.ke/outdoorskenya/wp-content/uploads/sites/3/2017/05/ngonghillskenya-jpg.jpeg",
    }, 
    {
        title: "Mt Longonot Day Trip",
        image_url: "https://bountifulsafaris.com/wp-content/uploads/2016/05/Mt-Longonot_the-crater.jpg",
    }
])


birds = Bird.create([
    {
        name: "Black Drongo",
        image_url: "https://pbs.twimg.com/media/FjHUdYHaUAALvFT.jpg",
        description: "The black drongo is a small Asian passerine bird of the drongo family Dicruridae. Very nice but appears groomy",
        likes: 4,
        adventure: adventures.first
    },
    {
        name: " Red Chested Coocko",
        image_url: "https://inaturalist-open-data.s3.amazonaws.com/photos/103680/medium.jpg",
        description: " The Red-chested Cuckoo (Cuculus solitarius) is a species of cuckoo in the Cuculidae family. It is a medium-sized bird (28 to 30 cm), found in Africa south of the Sahara. In Afrikaans, it is known as \"Piet-my-vrou\", after its call.",
        likes: 5,
        adventure: adventures.first
    },
    {
        name: "Grey-Crowned Crane",
        image_url: "https://i.pinimg.com/originals/7c/25/12/7c2512485ab80a53fb5031dd7303e9cc.jpg",
        description: "The grey crowned crane (Balearica regulorum), also known as the African crowned crane, golden crested crane, golden crowned crane. Very beautiful bird. A treassure and a national bird for Uganda",
        likes: 5,
        adventure: adventures.first
    }
])