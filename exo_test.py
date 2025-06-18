#        0   1  2      3        4
array = [5, 88, 12, "salut", [1, 2, 3][2], [[5, ["5"]]], 4.5, True][3][1]


def afficher_array(array):
    "affiche les elements d'un tableau"
    print(array[0])
    print(array[1])
    print(array[2])
    print(array[3])
    print(array[4][0])
    print(array[4][1])
    print(array[4][2])
    print(array[5][0][0])
    print(array[5][0][1][0])
    print(array[6])
    print(array[7])

afficher_array(array)