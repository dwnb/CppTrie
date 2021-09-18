#include <iostream>
#include "Trie.h"
int main() {
    Trie root;
    root.insert("ancd");
    root.insert("ance");
    root.insert("ancf");

    std::cout << "find_word:ancde " <<root.find_word("ancde")<< std::endl;
    std::cout << "find_word:ancd " <<root.find_word("ancd")<< std::endl;
    std::cout << "find_word:ancf " <<root.find_word("ancf")<< std::endl;
    std::cout << "find_word:anc " <<root.find_word("anc")<< std::endl;
    std::cout << "find_prefix:anc " <<root.find_prefix("anc")<< std::endl;
    std::cout << "delete_word:ancf " <<root.delete_word("ancf")<< std::endl;
    std::cout << "find_word:ancf " <<root.find_word("ancf")<< std::endl;
    std::cout << "find_prefix:anc " <<root.find_prefix("anc")<< std::endl;

    std::cout << "delete_word:ancd " <<root.delete_word("ancd")<< std::endl;
    std::cout << "delete_word:ance " <<root.delete_word("ance")<< std::endl;
    std::cout << "find_word:ancd " <<root.find_word("ancd")<< std::endl;
    std::cout << "find_word:ance " <<root.find_word("ance")<< std::endl;
    std::cout << "find_prefix:anc " <<root.find_prefix("anc")<< std::endl;
    std::cout << "find_prefix:a " <<root.find_prefix("a")<< std::endl;
    return 0;
}
