def designerPdfViewer(h, word):
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    dict_height = {}
    for i in range(len(h)):
        dict_height[alphabet[i]] = h[i]
    
    list_word = []
    for j in word:
        list_word.append(dict_height[j])
    area = max(list_word)*len(list_word)
    return area


h = [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,7]
word = 'zaba'
result = designerPdfViewer(h, word)
print(result)
