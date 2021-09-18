# CPP字典树写法

## 前言

在网上查询了许久，并未找到C++的字典树的标准库，做题时经常用到，所以在此专门学习与写一个字典树，供以后使用

## 描述

> 1、采用哈希表当做树的节点
>
> 2、用int 整型判断到达该节点是否为完整单词
>
> 3、采用栈的方式删除单词

## Trie.h

```cpp
#ifndef CPPTRIE_TRIE_H
#define CPPTRIE_TRIE_H
#include <unordered_map>
#include <stack>

class Trie {
private:
    std::unordered_map<char,Trie *> root;//存储节点
    int wordd;//存储是否为单词
public:
    Trie();
    ~Trie();
    int insert(const std::string& word);//插入
    bool find_word(const std::string& word);//寻找单词
    bool find_prefix(const std::string& word_prefix);//寻找前缀
    bool delete_word(const std::string& word);//删除单词
};


#endif //CPPTRIE_TRIE_H
```

## Trie.cpp

```cpp
include "Trie.h"

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
    std::stack<std::pair<char,Trie*>> ST;//采用栈先寻找字符串然后从尾部依次删除字符
    Trie *node=this;
    for(auto &C:word){
        if(!node->root.count(C)){
            return false;
        }

        node=node->root[C];
        ST.push(std::pair<char,Trie*>(C,node));

    }
    if(node->wordd!=1) return false;//未发现该单词

    if(!node->root.empty()){//如果尾部后还有字符，直接把标志位清零即可
        node->wordd=0;
        return true;
    }
    while(!ST.empty()){
        if(ST.top().second->root.empty()){
            std::pair<char,Trie*>top=ST.top();
            ST.pop();
            if(ST.empty()){
                this->root.erase(top.first);
                delete top.second;//释放堆内存
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
```

## 测试



![](https://cdn.jsdelivr.net/gh/dwnb/Picture/20210918161649.png)

力扣测试题目不带删除，自测删除是可以的，如下代码

```cpp
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
```

![](https://cdn.jsdelivr.net/gh/dwnb/Picture/20210918161937.png)