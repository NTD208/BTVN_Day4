//
//  main.swift
//  BaitapBuoi4
//
//  Created by Chu Du on 25/05/2021.
//

import Foundation

// MARK: - Bài 1: Liệt kê tất cả các ước số của một số tự nhiên n.

func timUoc(_ n:Int) {
    if n <= 0 {
        print("Cần nhập số lớn hơn 0")
        return
    }
    for i in 1...n {
        if n % i == 0 {
            print(i, terminator: " ")
        }
    }
    print()
}

timUoc(6)

// MARK: - Bài 2: In ra họ và tên của một họ tên cho trước.

func inHoVaTen(_ str:String) {
    let arr = str.split(separator: " ")
    print(arr[0], arr[arr.endIndex - 1])
}

inHoVaTen("Phan Thanh Hoa")

// MARK: - Bài 3: Viết hàm cho phép người dùng chọn đáp án
/*
 Question: Đâu không phải là một ngôn ngữ lập trình?

 a - Golang

 b - Swift

 c - Ruby

 d - Daily

 Cho người dùng chọn a, b, c, d để trả lời!
*/

print("Question: Đâu không phải là một ngôn ngữ lập trình?")
print("a - Golang\nb - Swift\nc - Ruby\nd - Daily")
print("Câu trả lời:", terminator: "\t")
var answer:String = readLine() ?? " "
let arr:[String] = ["a", "b", "c", "d"]
repeat {
    if !arr.contains(answer) {
        print("Nhập lại đáp án:", terminator: "\t")
        answer = readLine() ?? " "
    }
} while !arr.contains(answer)

switch answer {
case "d":
    print("Câu trả lời chính xác.")
default:
    print("Câu trả lời sai.")
}

// MARK: - Bài 4: Viết chương trình nhập vào số nguyên dương N (N<=32767), in ra màn hình những số hoàn hảo nhỏ hơn N (số hoàn hảo là số bằng tổng các ước số của nó mà không kể chính nó)

func perfectNum(num:Int) -> [Int] {
    var nums:[Int] = []

    for i in 4...num {
        var sum:Int = 1
        for j in 2...(i/2) {
            if i % j == 0 {
                sum += j
            }
        }
        if i == sum {
            nums.append(i)
        }
    }
    return nums
}

print(perfectNum(num: 5000))
