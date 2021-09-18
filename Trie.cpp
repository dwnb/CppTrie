//
// Created by dengwei on 2021/9/18.
//

#include "Trie.h"

Trie::Trie():wordd(0){};

Trie::~Trie()=default;

bool Trie::find_word(const std::string& word) {
    Trie *node=this;
    for(auto &C:word){
        if(!node->root.count(C)){
            return false;
        }
        node=node->root[C];
    }
    if(node->wordd!=1) return false;
    return true;
}

int Trie::insert(const std::string& word) {
    Trie *node=this;
    for(auto &C:word){
        if(!node->root.count(C)){
            Trie *new_node=new Trie;
            node->root[C]=new_node;
        }
        node=node->root[C];
    }
    node->wordd=1;
    return 0;
}

bool Trie::find_prefix(const std::string& word_prefix ) {
    Trie *node=this;
    for(auto &C:word_prefix){
        if(!node->root.count(C)){
            return false;
        }
        node=node->root[C];
    }
    return true;
}

bool Trie::delete_word(const std::string &word) {
    std::stack<std::pair<char,Trie*>> ST;
    Trie *node=this;
    for(auto &C:word){
        if(!node->root.count(C)){
            return false;
        }

        node=node->root[C];
        ST.push(std::pair<char,Trie*>(C,node));

    }
    if(node->wordd!=1) return false;

    if(!node->root.empty()){
        node->wordd=0;
        return true;
    }
    while(!ST.empty()){
        if(ST.top().second->root.empty()){
            std::pair<char,Trie*>top=ST.top();
            ST.pop();
            if(ST.empty()){
                this->root.erase(top.first);
                delete top.second;
                return  true;
            }
            ST.top().second->root.erase(top.first);
            delete top.second;
        }else{
            return true;
        }
    }
    return false;
}


