import { conHello, fnPlusNumbers } from './library_named.js';
console.log(conHello, '이름으로 내보내기입니다.');
console.log('1+2 = ', fnPlusNumbers(1, 2));

import * as mylibrary from './library_named.js';
console.log(mylibrary.conHello, '*을 사용한 이름으로 내보내기입니다.');
console.log('3+4 = ', mylibrary.fnPlusNumbers(3, 4));

import fnMyfunction from './library_default.js';
console.log('안녕하세요! 기본으로 내보내기입니다.')
console.log('5+6 = ', fnMyfunction(5, 6));