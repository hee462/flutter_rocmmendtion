import '../model/menu.dart';
import 'dart:math';

class LunchMenuViewModel {
  final List<Menu> KoreanMenu = [
    Menu(category: MenuCategory.KOREAN, name: "김치찌개"),
    Menu(category: MenuCategory.KOREAN, name: "불고기"),
    Menu(category: MenuCategory.KOREAN, name: "비빔밥"),
    Menu(category: MenuCategory.KOREAN, name: "된장찌개"),
    Menu(category: MenuCategory.KOREAN, name: "삼겹살"),
    Menu(category: MenuCategory.KOREAN, name: "갈비탕"),
    Menu(category: MenuCategory.KOREAN, name: "계란찜"),
    Menu(category: MenuCategory.KOREAN, name: "순두부찌개"),
    Menu(category: MenuCategory.KOREAN, name: "제육볶음"),
    Menu(category: MenuCategory.KOREAN, name: "잡채"),
    Menu(category: MenuCategory.KOREAN, name: "김치볶음밥"),
    Menu(category: MenuCategory.KOREAN, name: "매운탕"),
    Menu(category: MenuCategory.KOREAN, name: "해물파전"),
    Menu(category: MenuCategory.KOREAN, name: "감자전"),
    Menu(category: MenuCategory.KOREAN, name: "동태찌개"),
    Menu(category: MenuCategory.KOREAN, name: "콩나물국밥"),
    Menu(category: MenuCategory.KOREAN, name: "소불고기"),
    Menu(category: MenuCategory.KOREAN, name: "배추김치"),
    Menu(category: MenuCategory.KOREAN, name: "오징어볶음"),
    Menu(category: MenuCategory.KOREAN, name: "육회"),
    Menu(category: MenuCategory.KOREAN, name: "비빔냉면"),
    Menu(category: MenuCategory.KOREAN, name: "김치전"),
    Menu(category: MenuCategory.KOREAN, name: "갈치조림"),
    Menu(category: MenuCategory.KOREAN, name: "육개장"),
    Menu(category: MenuCategory.KOREAN, name: "잡탕"),
    Menu(category: MenuCategory.KOREAN, name: "떡볶이"),
    Menu(category: MenuCategory.KOREAN, name: "고등어조림"),
    Menu(category: MenuCategory.KOREAN, name: "된장찜"),
    Menu(category: MenuCategory.KOREAN, name: "백숙"),
    Menu(category: MenuCategory.KOREAN, name: "김밥"),
    Menu(category: MenuCategory.KOREAN, name: "매운닭갈비"),
    Menu(category: MenuCategory.KOREAN, name: "순대"),
    Menu(category: MenuCategory.KOREAN, name: "볶음밥"),
    Menu(category: MenuCategory.KOREAN, name: "삼계탕"),
    Menu(category: MenuCategory.KOREAN, name: "무국"),
    Menu(category: MenuCategory.KOREAN, name: "해물찜"),
    Menu(category: MenuCategory.KOREAN, name: "수제비"),
    Menu(category: MenuCategory.KOREAN, name: "물회"),
    Menu(category: MenuCategory.KOREAN, name: "쌀국수"),
    Menu(category: MenuCategory.KOREAN, name: "해물누룽지탕"),
    Menu(category: MenuCategory.KOREAN, name: "보쌈"),
    Menu(category: MenuCategory.KOREAN, name: "삼겹살구이"),
    Menu(category: MenuCategory.KOREAN, name: "청국장"),
    Menu(category: MenuCategory.KOREAN, name: "장어구이"),
    Menu(category: MenuCategory.KOREAN, name: "물냉면"),
    Menu(category: MenuCategory.KOREAN, name: "바지락칼국수"),
    Menu(category: MenuCategory.KOREAN, name: "불고기비빔밥"),
  ];
  final List<Menu> ChineseMenu = [
    Menu(category: MenuCategory.CHINESE, name: "짜장면"),
    Menu(category: MenuCategory.CHINESE, name: "짬뽕"),
    Menu(category: MenuCategory.CHINESE, name: "탕수육"),
    Menu(category: MenuCategory.CHINESE, name: "양장피"),
    Menu(category: MenuCategory.CHINESE, name: "마파두부"),
    Menu(category: MenuCategory.CHINESE, name: "깐풍기"),
    Menu(category: MenuCategory.CHINESE, name: "볶음밥"),
    Menu(category: MenuCategory.CHINESE, name: "깐쇼새우"),
    Menu(category: MenuCategory.CHINESE, name: "고추잡채"),
    Menu(category: MenuCategory.CHINESE, name: "삼선짬뽕"),
    Menu(category: MenuCategory.CHINESE, name: "마라탕"),
    Menu(category: MenuCategory.CHINESE, name: "마라샹궈"),
    Menu(category: MenuCategory.CHINESE, name: "크림새우"),
    Menu(category: MenuCategory.CHINESE, name: "짜장밥"),
    Menu(category: MenuCategory.CHINESE, name: "양장피"),
    Menu(category: MenuCategory.CHINESE, name: "찹쌀탕수육"),
    Menu(category: MenuCategory.CHINESE, name: "팔보채"),
    Menu(category: MenuCategory.CHINESE, name: "유린기"),
    Menu(category: MenuCategory.CHINESE, name: "매운탕수육"),
    Menu(category: MenuCategory.CHINESE, name: "새우찹쌀탕수육"),
    Menu(category: MenuCategory.CHINESE, name: "XO볶음밥"),
    Menu(category: MenuCategory.CHINESE, name: "탕짜면"),
    Menu(category: MenuCategory.CHINESE, name: "깐풍기"),
    Menu(category: MenuCategory.CHINESE, name: "오향장육"),
    Menu(category: MenuCategory.CHINESE, name: "깐쇼새우"),
    Menu(category: MenuCategory.CHINESE, name: "해물짬뽕"),
    Menu(category: MenuCategory.CHINESE, name: "사천탕수육"),
    Menu(category: MenuCategory.CHINESE, name: "팔보채"),
    Menu(category: MenuCategory.CHINESE, name: "매운짬뽕"),
    Menu(category: MenuCategory.CHINESE, name: "황금볶음밥"),
    Menu(category: MenuCategory.CHINESE, name: "물만두"),
    Menu(category: MenuCategory.CHINESE, name: "사천짜장"),
    Menu(category: MenuCategory.CHINESE, name: "고추잡채밥"),
    Menu(category: MenuCategory.CHINESE, name: "지삼선"),
    Menu(category: MenuCategory.CHINESE, name: "울면"),
    Menu(category: MenuCategory.CHINESE, name: "기스면"),
    Menu(category: MenuCategory.CHINESE, name: "백짬뽕"),
    Menu(category: MenuCategory.CHINESE, name: "굴짬뽕"),
    Menu(category: MenuCategory.CHINESE, name: "중화비빔밥"),
    Menu(category: MenuCategory.CHINESE, name: "동파육"),
    Menu(category: MenuCategory.CHINESE, name: "유니짜장"),
    Menu(category: MenuCategory.CHINESE, name: "간짜장"),
    Menu(category: MenuCategory.CHINESE, name: "간짬뽕"),
    Menu(category: MenuCategory.CHINESE, name: "쟁반짜장"),
    Menu(category: MenuCategory.CHINESE, name: "쟁반짬뽕"),
  ];
  final List<Menu> JapaneseMenu = [
    Menu(category: MenuCategory.JAPANESE, name: "초밥"),
    Menu(category: MenuCategory.JAPANESE, name: "라멘"),
    Menu(category: MenuCategory.JAPANESE, name: "돈카츠"),
    Menu(category: MenuCategory.JAPANESE, name: "우동"),
    Menu(category: MenuCategory.JAPANESE, name: "텐동"),
    Menu(category: MenuCategory.JAPANESE, name: "나베"),
    Menu(category: MenuCategory.JAPANESE, name: "불초밥"),
    Menu(category: MenuCategory.JAPANESE, name: "연어롤"),
    Menu(category: MenuCategory.JAPANESE, name: "가츠동"),
    Menu(category: MenuCategory.JAPANESE, name: "야끼니꾸"),
    Menu(category: MenuCategory.JAPANESE, name: "치킨가라아게"),
    Menu(category: MenuCategory.JAPANESE, name: "소바"),
    Menu(category: MenuCategory.JAPANESE, name: "매운연어롤"),
    Menu(category: MenuCategory.JAPANESE, name: "에비동"),
    Menu(category: MenuCategory.JAPANESE, name: "모츠나베"),
    Menu(category: MenuCategory.JAPANESE, name: "가츠롤"),
    Menu(category: MenuCategory.JAPANESE, name: "새우튀김롤"),
    Menu(category: MenuCategory.JAPANESE, name: "오므라이스"),
    Menu(category: MenuCategory.JAPANESE, name: "나폴리탄"),
    Menu(category: MenuCategory.JAPANESE, name: "오이명란"),
    Menu(category: MenuCategory.JAPANESE, name: "텐동세트"),
    Menu(category: MenuCategory.JAPANESE, name: "치킨텐동"),
    Menu(category: MenuCategory.JAPANESE, name: "타코야끼"),
    Menu(category: MenuCategory.JAPANESE, name: "유부우동"),
    Menu(category: MenuCategory.JAPANESE, name: "돈코츠라멘"),
    Menu(category: MenuCategory.JAPANESE, name: "미소라멘"),
    Menu(category: MenuCategory.JAPANESE, name: "소유라멘"),
    Menu(category: MenuCategory.JAPANESE, name: "우동세트"),
    Menu(category: MenuCategory.JAPANESE, name: "매운카레우동"),
    Menu(category: MenuCategory.JAPANESE, name: "사케동"),
    Menu(category: MenuCategory.JAPANESE, name: "치킨카레"),
    Menu(category: MenuCategory.JAPANESE, name: "스시세트"),
    Menu(category: MenuCategory.JAPANESE, name: "연어동"),
    Menu(category: MenuCategory.JAPANESE, name: "부타동"),
    Menu(category: MenuCategory.JAPANESE, name: "장어덮밥"),
    Menu(category: MenuCategory.JAPANESE, name: "새우덮밥"),
    Menu(category: MenuCategory.JAPANESE, name: "돈부리"),
    Menu(category: MenuCategory.JAPANESE, name: "오야꼬동"),
    Menu(category: MenuCategory.JAPANESE, name: "소바세트"),
    Menu(category: MenuCategory.JAPANESE, name: "규가츠"),
    Menu(category: MenuCategory.JAPANESE, name: "초밥세트"),
    Menu(category: MenuCategory.JAPANESE, name: "야끼소바"),
    Menu(category: MenuCategory.JAPANESE, name: "오니기리"),
    Menu(category: MenuCategory.JAPANESE, name: "유부초밥"),
    Menu(category: MenuCategory.JAPANESE, name: "매운돈코츠라멘"),
    Menu(category: MenuCategory.JAPANESE, name: "사시미"),
    Menu(category: MenuCategory.JAPANESE, name: "히레카츠"),
    Menu(category: MenuCategory.JAPANESE, name: "커리스프"),
    Menu(category: MenuCategory.JAPANESE, name: "스시롤"),
    Menu(category: MenuCategory.JAPANESE, name: "치킨난바"),
    Menu(category: MenuCategory.JAPANESE, name: "오꼬노미야끼"),
  ];
  final List<Menu> WesternMenu = [
    Menu(category: MenuCategory.WESTERN, name: "스테이크"),
    Menu(category: MenuCategory.WESTERN, name: "파스타"),
    Menu(category: MenuCategory.WESTERN, name: "피자"),
    Menu(category: MenuCategory.WESTERN, name: "버거"),
    Menu(category: MenuCategory.WESTERN, name: "시저샐러드"),
    Menu(category: MenuCategory.WESTERN, name: "샌드위치"),
    Menu(category: MenuCategory.WESTERN, name: "스파게티"),
    Menu(category: MenuCategory.WESTERN, name: "봉골레"),
    Menu(category: MenuCategory.WESTERN, name: "크림파스타"),
    Menu(category: MenuCategory.WESTERN, name: "로제파스타"),
    Menu(category: MenuCategory.WESTERN, name: "미트볼"),
    Menu(category: MenuCategory.WESTERN, name: "투움바파스타"),
    Menu(category: MenuCategory.WESTERN, name: "치즈버거"),
    Menu(category: MenuCategory.WESTERN, name: "포크립스테이크"),
    Menu(category: MenuCategory.WESTERN, name: "빠네파스타"),
    Menu(category: MenuCategory.WESTERN, name: "마르게리타피자"),
    Menu(category: MenuCategory.WESTERN, name: "페퍼로니피자"),
    Menu(category: MenuCategory.WESTERN, name: "치즈피자"),
    Menu(category: MenuCategory.WESTERN, name: "알리오올리오"),
    Menu(category: MenuCategory.WESTERN, name: "버팔로윙"),
    Menu(category: MenuCategory.WESTERN, name: "치킨텐더"),
    Menu(category: MenuCategory.WESTERN, name: "갈릭새우"),
    Menu(category: MenuCategory.WESTERN, name: "연어스테이크"),
    Menu(category: MenuCategory.WESTERN, name: "불고기피자"),
    Menu(category: MenuCategory.WESTERN, name: "포테이토피자"),
    Menu(category: MenuCategory.WESTERN, name: "프렌치프라이"),
    Menu(category: MenuCategory.WESTERN, name: "쿼터파운드치즈버거"),
    Menu(category: MenuCategory.WESTERN, name: "화덕피자"),
    Menu(category: MenuCategory.WESTERN, name: "양송이 스프"),
    Menu(category: MenuCategory.WESTERN, name: "피쉬앤칩스"),
    Menu(category: MenuCategory.WESTERN, name: "스파이시치킨버거"),
    Menu(category: MenuCategory.WESTERN, name: "바베큐리브"),
    Menu(category: MenuCategory.WESTERN, name: "크림치즈파스타"),
    Menu(category: MenuCategory.WESTERN, name: "어니언 스프"),
    Menu(category: MenuCategory.WESTERN, name: "클램카우더"),
    Menu(category: MenuCategory.WESTERN, name: "맥앤치즈"),
    Menu(category: MenuCategory.WESTERN, name: "캐비지롤"),
    Menu(category: MenuCategory.WESTERN, name: "카프레제"),
    Menu(category: MenuCategory.WESTERN, name: "타코"),
    Menu(category: MenuCategory.WESTERN, name: "부리또"),
    Menu(category: MenuCategory.WESTERN, name: "아메리칸블랙퍼스트"),
    Menu(category: MenuCategory.WESTERN, name: "오믈렛"),
    Menu(category: MenuCategory.WESTERN, name: "에그베네딕트"),
    Menu(category: MenuCategory.WESTERN, name: "치즈스틱"),
    Menu(category: MenuCategory.WESTERN, name: "립아이스테이크"),
    Menu(category: MenuCategory.WESTERN, name: "마르게리타피자"),
    Menu(category: MenuCategory.WESTERN, name: "불고기버거"),
    Menu(category: MenuCategory.WESTERN, name: "프라이피킨"),
    Menu(category: MenuCategory.WESTERN, name: "버거세트"),
  ];
  final List<Menu> menus = [
    // 한식 메뉴 50개
    Menu(category: MenuCategory.KOREAN, name: "김치찌개"),
    Menu(category: MenuCategory.KOREAN, name: "불고기"),
    Menu(category: MenuCategory.KOREAN, name: "비빔밥"),
    Menu(category: MenuCategory.KOREAN, name: "된장찌개"),
    Menu(category: MenuCategory.KOREAN, name: "삼겹살"),
    Menu(category: MenuCategory.KOREAN, name: "갈비탕"),
    Menu(category: MenuCategory.KOREAN, name: "계란찜"),
    Menu(category: MenuCategory.KOREAN, name: "순두부찌개"),
    Menu(category: MenuCategory.KOREAN, name: "제육볶음"),
    Menu(category: MenuCategory.KOREAN, name: "잡채"),
    Menu(category: MenuCategory.KOREAN, name: "김치볶음밥"),
    Menu(category: MenuCategory.KOREAN, name: "매운탕"),
    Menu(category: MenuCategory.KOREAN, name: "해물파전"),
    Menu(category: MenuCategory.KOREAN, name: "감자전"),
    Menu(category: MenuCategory.KOREAN, name: "동태찌개"),
    Menu(category: MenuCategory.KOREAN, name: "콩나물국밥"),
    Menu(category: MenuCategory.KOREAN, name: "소불고기"),
    Menu(category: MenuCategory.KOREAN, name: "배추김치"),
    Menu(category: MenuCategory.KOREAN, name: "오징어볶음"),
    Menu(category: MenuCategory.KOREAN, name: "육회"),
    Menu(category: MenuCategory.KOREAN, name: "비빔냉면"),
    Menu(category: MenuCategory.KOREAN, name: "김치전"),
    Menu(category: MenuCategory.KOREAN, name: "갈치조림"),
    Menu(category: MenuCategory.KOREAN, name: "육개장"),
    Menu(category: MenuCategory.KOREAN, name: "잡탕"),
    Menu(category: MenuCategory.KOREAN, name: "떡볶이"),
    Menu(category: MenuCategory.KOREAN, name: "고등어조림"),
    Menu(category: MenuCategory.KOREAN, name: "된장찜"),
    Menu(category: MenuCategory.KOREAN, name: "백숙"),
    Menu(category: MenuCategory.KOREAN, name: "김밥"),
    Menu(category: MenuCategory.KOREAN, name: "매운닭갈비"),
    Menu(category: MenuCategory.KOREAN, name: "순대"),
    Menu(category: MenuCategory.KOREAN, name: "볶음밥"),
    Menu(category: MenuCategory.KOREAN, name: "삼계탕"),
    Menu(category: MenuCategory.KOREAN, name: "무국"),
    Menu(category: MenuCategory.KOREAN, name: "해물찜"),
    Menu(category: MenuCategory.KOREAN, name: "수제비"),
    Menu(category: MenuCategory.KOREAN, name: "물회"),
    Menu(category: MenuCategory.KOREAN, name: "쌀국수"),
    Menu(category: MenuCategory.KOREAN, name: "해물누룽지탕"),
    Menu(category: MenuCategory.KOREAN, name: "보쌈"),
    Menu(category: MenuCategory.KOREAN, name: "삼겹살구이"),
    Menu(category: MenuCategory.KOREAN, name: "청국장"),
    Menu(category: MenuCategory.KOREAN, name: "장어구이"),
    Menu(category: MenuCategory.KOREAN, name: "물냉면"),
    Menu(category: MenuCategory.KOREAN, name: "바지락칼국수"),
    Menu(category: MenuCategory.KOREAN, name: "불고기비빔밥"),

    // 중식 메뉴 50개
    Menu(category: MenuCategory.CHINESE, name: "짜장면"),
    Menu(category: MenuCategory.CHINESE, name: "짬뽕"),
    Menu(category: MenuCategory.CHINESE, name: "탕수육"),
    Menu(category: MenuCategory.CHINESE, name: "양장피"),
    Menu(category: MenuCategory.CHINESE, name: "마파두부"),
    Menu(category: MenuCategory.CHINESE, name: "깐풍기"),
    Menu(category: MenuCategory.CHINESE, name: "볶음밥"),
    Menu(category: MenuCategory.CHINESE, name: "깐쇼새우"),
    Menu(category: MenuCategory.CHINESE, name: "고추잡채"),
    Menu(category: MenuCategory.CHINESE, name: "삼선짬뽕"),
    Menu(category: MenuCategory.CHINESE, name: "마라탕"),
    Menu(category: MenuCategory.CHINESE, name: "마라샹궈"),
    Menu(category: MenuCategory.CHINESE, name: "크림새우"),
    Menu(category: MenuCategory.CHINESE, name: "짜장밥"),
    Menu(category: MenuCategory.CHINESE, name: "양장피"),
    Menu(category: MenuCategory.CHINESE, name: "찹쌀탕수육"),
    Menu(category: MenuCategory.CHINESE, name: "팔보채"),
    Menu(category: MenuCategory.CHINESE, name: "유린기"),
    Menu(category: MenuCategory.CHINESE, name: "매운탕수육"),
    Menu(category: MenuCategory.CHINESE, name: "새우찹쌀탕수육"),
    Menu(category: MenuCategory.CHINESE, name: "XO볶음밥"),
    Menu(category: MenuCategory.CHINESE, name: "탕짜면"),
    Menu(category: MenuCategory.CHINESE, name: "깐풍기"),
    Menu(category: MenuCategory.CHINESE, name: "오향장육"),
    Menu(category: MenuCategory.CHINESE, name: "깐쇼새우"),
    Menu(category: MenuCategory.CHINESE, name: "해물짬뽕"),
    Menu(category: MenuCategory.CHINESE, name: "사천탕수육"),
    Menu(category: MenuCategory.CHINESE, name: "팔보채"),
    Menu(category: MenuCategory.CHINESE, name: "매운짬뽕"),
    Menu(category: MenuCategory.CHINESE, name: "황금볶음밥"),
    Menu(category: MenuCategory.CHINESE, name: "물만두"),
    Menu(category: MenuCategory.CHINESE, name: "사천짜장"),
    Menu(category: MenuCategory.CHINESE, name: "고추잡채밥"),
    Menu(category: MenuCategory.CHINESE, name: "지삼선"),
    Menu(category: MenuCategory.CHINESE, name: "울면"),
    Menu(category: MenuCategory.CHINESE, name: "기스면"),
    Menu(category: MenuCategory.CHINESE, name: "백짬뽕"),
    Menu(category: MenuCategory.CHINESE, name: "굴짬뽕"),
    Menu(category: MenuCategory.CHINESE, name: "중화비빔밥"),
    Menu(category: MenuCategory.CHINESE, name: "동파육"),
    Menu(category: MenuCategory.CHINESE, name: "유니짜장"),
    Menu(category: MenuCategory.CHINESE, name: "간짜장"),
    Menu(category: MenuCategory.CHINESE, name: "간짬뽕"),
    Menu(category: MenuCategory.CHINESE, name: "쟁반짜장"),
    Menu(category: MenuCategory.CHINESE, name: "쟁반짬뽕"),

    // 일식 메뉴 50개
    Menu(category: MenuCategory.JAPANESE, name: "초밥"),
    Menu(category: MenuCategory.JAPANESE, name: "라멘"),
    Menu(category: MenuCategory.JAPANESE, name: "돈카츠"),
    Menu(category: MenuCategory.JAPANESE, name: "우동"),
    Menu(category: MenuCategory.JAPANESE, name: "텐동"),
    Menu(category: MenuCategory.JAPANESE, name: "나베"),
    Menu(category: MenuCategory.JAPANESE, name: "불초밥"),
    Menu(category: MenuCategory.JAPANESE, name: "연어롤"),
    Menu(category: MenuCategory.JAPANESE, name: "가츠동"),
    Menu(category: MenuCategory.JAPANESE, name: "야끼니꾸"),
    Menu(category: MenuCategory.JAPANESE, name: "치킨가라아게"),
    Menu(category: MenuCategory.JAPANESE, name: "소바"),
    Menu(category: MenuCategory.JAPANESE, name: "매운연어롤"),
    Menu(category: MenuCategory.JAPANESE, name: "에비동"),
    Menu(category: MenuCategory.JAPANESE, name: "모츠나베"),
    Menu(category: MenuCategory.JAPANESE, name: "가츠롤"),
    Menu(category: MenuCategory.JAPANESE, name: "새우튀김롤"),
    Menu(category: MenuCategory.JAPANESE, name: "오므라이스"),
    Menu(category: MenuCategory.JAPANESE, name: "나폴리탄"),
    Menu(category: MenuCategory.JAPANESE, name: "오이명란"),
    Menu(category: MenuCategory.JAPANESE, name: "텐동세트"),
    Menu(category: MenuCategory.JAPANESE, name: "치킨텐동"),
    Menu(category: MenuCategory.JAPANESE, name: "타코야끼"),
    Menu(category: MenuCategory.JAPANESE, name: "유부우동"),
    Menu(category: MenuCategory.JAPANESE, name: "돈코츠라멘"),
    Menu(category: MenuCategory.JAPANESE, name: "미소라멘"),
    Menu(category: MenuCategory.JAPANESE, name: "소유라멘"),
    Menu(category: MenuCategory.JAPANESE, name: "우동세트"),
    Menu(category: MenuCategory.JAPANESE, name: "매운카레우동"),
    Menu(category: MenuCategory.JAPANESE, name: "사케동"),
    Menu(category: MenuCategory.JAPANESE, name: "치킨카레"),
    Menu(category: MenuCategory.JAPANESE, name: "스시세트"),
    Menu(category: MenuCategory.JAPANESE, name: "연어동"),
    Menu(category: MenuCategory.JAPANESE, name: "부타동"),
    Menu(category: MenuCategory.JAPANESE, name: "장어덮밥"),
    Menu(category: MenuCategory.JAPANESE, name: "새우덮밥"),
    Menu(category: MenuCategory.JAPANESE, name: "돈부리"),
    Menu(category: MenuCategory.JAPANESE, name: "오야꼬동"),
    Menu(category: MenuCategory.JAPANESE, name: "소바세트"),
    Menu(category: MenuCategory.JAPANESE, name: "규가츠"),
    Menu(category: MenuCategory.JAPANESE, name: "초밥세트"),
    Menu(category: MenuCategory.JAPANESE, name: "야끼소바"),
    Menu(category: MenuCategory.JAPANESE, name: "오니기리"),
    Menu(category: MenuCategory.JAPANESE, name: "유부초밥"),
    Menu(category: MenuCategory.JAPANESE, name: "매운돈코츠라멘"),
    Menu(category: MenuCategory.JAPANESE, name: "사시미"),
    Menu(category: MenuCategory.JAPANESE, name: "히레카츠"),
    Menu(category: MenuCategory.JAPANESE, name: "커리스프"),
    Menu(category: MenuCategory.JAPANESE, name: "스시롤"),
    Menu(category: MenuCategory.JAPANESE, name: "치킨난바"),
    Menu(category: MenuCategory.JAPANESE, name: "오꼬노미야끼"),

    // 양식 메뉴 50개
    Menu(category: MenuCategory.WESTERN, name: "스테이크"),
    Menu(category: MenuCategory.WESTERN, name: "파스타"),
    Menu(category: MenuCategory.WESTERN, name: "피자"),
    Menu(category: MenuCategory.WESTERN, name: "버거"),
    Menu(category: MenuCategory.WESTERN, name: "시저샐러드"),
    Menu(category: MenuCategory.WESTERN, name: "샌드위치"),
    Menu(category: MenuCategory.WESTERN, name: "스파게티"),
    Menu(category: MenuCategory.WESTERN, name: "봉골레"),
    Menu(category: MenuCategory.WESTERN, name: "크림파스타"),
    Menu(category: MenuCategory.WESTERN, name: "로제파스타"),
    Menu(category: MenuCategory.WESTERN, name: "미트볼"),
    Menu(category: MenuCategory.WESTERN, name: "투움바파스타"),
    Menu(category: MenuCategory.WESTERN, name: "치즈버거"),
    Menu(category: MenuCategory.WESTERN, name: "포크립스테이크"),
    Menu(category: MenuCategory.WESTERN, name: "빠네파스타"),
    Menu(category: MenuCategory.WESTERN, name: "마르게리타피자"),
    Menu(category: MenuCategory.WESTERN, name: "페퍼로니피자"),
    Menu(category: MenuCategory.WESTERN, name: "치즈피자"),
    Menu(category: MenuCategory.WESTERN, name: "알리오올리오"),
    Menu(category: MenuCategory.WESTERN, name: "버팔로윙"),
    Menu(category: MenuCategory.WESTERN, name: "치킨텐더"),
    Menu(category: MenuCategory.WESTERN, name: "갈릭새우"),
    Menu(category: MenuCategory.WESTERN, name: "연어스테이크"),
    Menu(category: MenuCategory.WESTERN, name: "불고기피자"),
    Menu(category: MenuCategory.WESTERN, name: "포테이토피자"),
    Menu(category: MenuCategory.WESTERN, name: "프렌치프라이"),
    Menu(category: MenuCategory.WESTERN, name: "쿼터파운드치즈버거"),
    Menu(category: MenuCategory.WESTERN, name: "화덕피자"),
    Menu(category: MenuCategory.WESTERN, name: "양송이 스프"),
    Menu(category: MenuCategory.WESTERN, name: "피쉬앤칩스"),
    Menu(category: MenuCategory.WESTERN, name: "스파이시치킨버거"),
    Menu(category: MenuCategory.WESTERN, name: "바베큐리브"),
    Menu(category: MenuCategory.WESTERN, name: "크림치즈파스타"),
    Menu(category: MenuCategory.WESTERN, name: "어니언 스프"),
    Menu(category: MenuCategory.WESTERN, name: "클램카우더"),
    Menu(category: MenuCategory.WESTERN, name: "맥앤치즈"),
    Menu(category: MenuCategory.WESTERN, name: "캐비지롤"),
    Menu(category: MenuCategory.WESTERN, name: "카프레제"),
    Menu(category: MenuCategory.WESTERN, name: "타코"),
    Menu(category: MenuCategory.WESTERN, name: "부리또"),
    Menu(category: MenuCategory.WESTERN, name: "아메리칸블랙퍼스트"),
    Menu(category: MenuCategory.WESTERN, name: "오믈렛"),
    Menu(category: MenuCategory.WESTERN, name: "에그베네딕트"),
    Menu(category: MenuCategory.WESTERN, name: "치즈스틱"),
    Menu(category: MenuCategory.WESTERN, name: "립아이스테이크"),
    Menu(category: MenuCategory.WESTERN, name: "마르게리타피자"),
    Menu(category: MenuCategory.WESTERN, name: "불고기버거"),
    Menu(category: MenuCategory.WESTERN, name: "프라이피킨"),
    Menu(category: MenuCategory.WESTERN, name: "버거세트"),
  ];

  Menu getRandomMenu() {
    Random random = Random();
    int result = random.nextInt(menus.length);
    return menus[result];
  }

  Menu getKoreanMenu() {
    Random random = Random();
    int result = random.nextInt(KoreanMenu.length);
    return KoreanMenu[result];
  }

  Menu getChineseMenu() {
    Random random = Random();
    int result = random.nextInt(ChineseMenu.length);
    return ChineseMenu[result];
  }

  Menu getJapaneseMenu() {
    Random random = Random();
    int result = random.nextInt(JapaneseMenu.length);
    return JapaneseMenu[result];
  }

  Menu getWesternMenu() {
    Random random = Random();
    int result = random.nextInt(WesternMenu.length);
    return WesternMenu[result];
  }
}
