
def ListToString(s):

	# initialize an empty string
	str1 = ""

	# traverse in the string
	for ele in s:
		str1 += ele

	# return string
	return str1

def ChargeList(input):

    temp_int = 0
    temp_str = ""
    temp_list = []

    for i in range(len(input)):
        SampleListElement = input[i]

        if int(SampleListElement.isnumeric()) == True:
            temp_int = SampleListElement
            temp_list.append(int(temp_int))
        else:
            temp_list.append(SampleListElement)

    return temp_list


def Convert(string):
	li = list(string.split(","))
	return li

def CleaningBracket(s):
    str1 = ""
    ForbiddenString = "]'["

    for i in s:
        if i in ForbiddenString:
            continue
        else:
            str1 += i
    return str1

def CleaningApostrophe(string):
    li = list(string.split(","))
    return li


if __name__ == "__main__":
    InputList = []
    InputList = input(">>")

    # listeyi str ye çevirir
    StringedList = ListToString(InputList)
    print(StringedList)

    # köşeli parantezleri temizler
    BracketLessList = CleaningBracket(StringedList)
    print(BracketLessList)

    # string i diziye dönüştürür
    ListedString = []
    ListedString = Convert(BracketLessList)
    print(ListedString)

    # dizideki herbir elementi kontrol ederek yeni diziye int-str özel olarak ekler
    BrandNewList = []
    BrandNewList = ChargeList(ListedString)
    print("Sonuç >>", BrandNewList)
