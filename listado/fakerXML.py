from faker import Faker # Això serveix per crear les receptes XML falses
fake = Faker()
receta = """
<receta>
    <position>{}</position>
    <nombre>{}</nombre>
    <subtitulo>{}</subtitulo>
    <dificultad>{}</dificultad>
    <cocina>{}</cocina>
    <vegetariana>{}</vegetariana>
    <celíacos>{}</celíacos>
    <anticáncer>{}</anticáncer>
    <autor>{}</autor>
</receta>
""".format(
    fake.random_number(digits=1),
    fake.sentence(),
    fake.sentence(),
    fake.word(),
    fake.word(),
    fake.boolean(),
    fake.boolean(),
    fake.boolean(),
    fake.name(),
)
print(receta)
