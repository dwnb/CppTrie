//
// Created by dengwei on 2021/9/18.
//

#ifndef CPPTRIE_TRIE_H
#define CPPTRIE_TRIE_H
#include <unordered_map>
#include <stack>

class Trie {
private:
    std::unordered_map<char,Trie *> root;
    int wordd;
public:
    Trie();
    ~Trie();
    int insert(const std::string& word);
    bool find_word(const std::string& word);
    bool find_prefix(const std::string& word_prefix);
    bool delete_word(const std::string& word);
};


#endif //CPPTRIE_TRIE_H
