//
//  main.swift
//  MyCreditManager
//
//  Created by 조성빈 on 2022/11/21.
//

import Foundation

var tf = true
var students = [String: [String: Double]]()
var inputGd : [[String]] = []
var gradeDB = ["A+": 4.5, "A": 4.0, "B+": 3.5, "B": 3.0, "C+": 2.5, "C": 2.0, "D+": 1.5, "D": 1.0, "F": 0.0]
//var input = readLine()
//if let input = input {
//    print(input)
//}

while tf == true {
    print("원하는 기능을 입력해주세요.")
    print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")

    let input = readLine()

    //if let 통한 옵셔널 바인딩.
    if let input = input {
        
        //1. 학생 추가할 수 있는 메뉴
        if input == "1" {
            print("추가할 학생의 이름을 입력해주세요")
            let stName = readLine()
            
            //if let 통한 옵셔널 바인딩.
            if let stName = stName {

                if stName != "" {
                    
                    if students.keys.firstIndex(of: stName) == nil {
                        students[stName] = [:]
                        print(stName+" 학생을 추가합니다.")
//                        print(students)
                    }else{
                        print(stName+"은 이미 존재하는 학생입니다. 추가하지 않습니다.")
//                        print(students)
                    }
                    
                    
                }else{
                    print("입력이 잘못되었습니다. 다시 확인해주세요.")
                }
            
            }
        }
        //2. 학생 삭제할 수 있는 메뉴
        else if input == "2" {
            print("삭제할 학생의 이름을 입력해주세요")
            let rmName = readLine()
            
            //if let 통한 옵셔널 바인딩.
            if let rmName = rmName {
                
                if rmName != "" {
                    
                    if students.keys.firstIndex(of: rmName) != nil {
                        students.removeValue(forKey: rmName)
                        print(rmName+" 학생을 삭제하였습니다.")
                        print(students)
                    }else{
                        print(rmName+" 학생을 찾지 못하였습니다.")
                        print(students)
                    }
                    
                }else{
                    print("입력이 잘못되었습니다. 다시 확인해주세요.")
                }
            }
            
        }
        //3. 학생 성적 추가/변경 메뉴
        else if input == "3" {
            print("성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.")
            print("입력예) Mickey Swift A+")
            print("만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.")
            
            let grade = readLine()?.components(separatedBy: " ")
            
            //if let 통한 옵셔널 바인딩.
            if let grade = grade {
                
                if grade.count == 3 {
                    
                    if students.keys.firstIndex(of: grade[0]) != nil {
                        students[grade[0]]?.updateValue(gradeDB[grade[2]]!, forKey: grade[1])
                        print(grade[0]+" 학생의 "+grade[1]+" 과목이 "+grade[2]+"로 추가(변경)되었습니다.")
                        print(students)
                    }
                    
                }else{
                    print("입력이 잘못되었습니다. 다시 확인해주세요.")
                }
                
            }
        }
        else if input == "4" {
            print("성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요.")
            print("입력예) Mickey Swift")
            let rmgrade = readLine()?.components(separatedBy: " ")
            
            //if let 통한 옵셔널 바인딩.
            if let rmgrade = rmgrade {
                
                if rmgrade.count == 2{
                    
                    //딕셔너리 value의 값 접근을 잘 모르겠습니다.
                    
                }
                
            }
            
        }
        else if input == "5" {
            
        }
        else if input == "x" || input == "X" {
            print("프로그램을 종료합니다...")
            break
        }
        else {
            print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
        }
        
    }
}

