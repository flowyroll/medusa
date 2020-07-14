.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1de34, %rbp
nop
nop
nop
nop
and %r13, %r13
mov (%rbp), %r8d
nop
nop
nop
nop
add $60756, %r10
lea addresses_D_ht+0xf264, %rsi
lea addresses_A_ht+0x117d4, %rdi
sub %r12, %r12
mov $71, %rcx
rep movsw
nop
nop
nop
nop
xor $34621, %rbp
lea addresses_WC_ht+0x13815, %rsi
lea addresses_normal_ht+0x1f14, %rdi
nop
nop
nop
nop
dec %rbp
mov $74, %rcx
rep movsl
nop
nop
nop
nop
sub $22891, %r10
lea addresses_A_ht+0x18314, %rbp
xor %r10, %r10
movw $0x6162, (%rbp)
and $16645, %r8
lea addresses_normal_ht+0x12c28, %rsi
lea addresses_D_ht+0x101e4, %rdi
clflush (%rsi)
clflush (%rdi)
add %r8, %r8
mov $11, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $10299, %r10
lea addresses_WC_ht+0x10fd4, %rsi
lea addresses_A_ht+0xeeb4, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $58, %rcx
rep movsb
nop
nop
nop
nop
add $7390, %rdi
lea addresses_D_ht+0x1b314, %r12
nop
nop
nop
sub %r10, %r10
movb (%r12), %cl
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0xf0d4, %r13
nop
and $52266, %r8
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
xor $1929, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rcx

// Store
lea addresses_A+0xedf4, %r8
nop
nop
sub %rbx, %rbx
movb $0x51, (%r8)
nop
nop
nop
nop
nop
and %r11, %r11

// Store
mov $0x4e8c6f0000000514, %r11
nop
nop
nop
and $12096, %r14
movb $0x51, (%r11)
and $46610, %r12

// Store
mov $0xfd4, %r8
inc %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movntdq %xmm7, (%r8)
nop
nop
xor $32114, %r12

// Store
mov $0x582cd500000001d4, %r14
add $37007, %r8
movb $0x51, (%r14)
nop
nop
nop
nop
nop
and $3912, %r14

// Store
lea addresses_WT+0xcd4, %r14
nop
nop
nop
dec %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
nop
add $9211, %r13

// Load
lea addresses_WT+0xd1d4, %r14
nop
nop
nop
nop
nop
and %r11, %r11
movb (%r14), %r13b
sub $5096, %r8

// Load
mov $0x9a4, %rcx
clflush (%rcx)
nop
sub $55683, %r11
mov (%rcx), %r14w
nop
nop
nop
nop
nop
sub $62524, %r14

// Faulty Load
lea addresses_WC+0x151d4, %r11
cmp %rcx, %rcx
movntdqa (%r11), %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'ef': 2, 'f1': 11, '18': 1, 'bc': 7, '83': 11, '4e': 12, '9e': 2, '8c': 1, 'a0': 1, 'f4': 2, 'c5': 1046, '44': 342, 'ff': 1071, '36': 57, '7b': 75, '40': 350, 'bb': 1, '63': 1, 'd1': 1, '67': 1, 'a5': 4, '02': 7, 'b5': 49, 'ec': 14, 'a8': 4, '27': 5, 'd0': 15, '13': 8, '09': 4, '19': 4, '33': 1, '95': 6, 'fd': 6, 'ee': 6, '99': 1, 'c1': 1, '78': 6, 'd4': 6, '00': 17978, '25': 1, '38': 10, 'd2': 24, '8b': 4, 'c9': 16, 'a1': 4, '42': 192, 'c8': 9, 'b4': 114, '49': 11, '1f': 5, '8a': 10, 'c0': 1, '46': 272, 'f3': 2, '9a': 23, 'f9': 7, 'fe': 2, 'aa': 2}
00 00 25 d0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 40 d0 00 00 00 00 00 00 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 33 00 00 00 00 00 00 00 00 00 00 7b 00 00 00 00 7b 00 00 00 00 00 00 7b 00 00 00 7b 00 00 00 00 00 00 f9 f9 00 00 f9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f9 00 00 00 00 00 00 00 f9 00 00 00 f9 f9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 f4 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff f3 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff f3 00 00 00 00 00 f4 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ee 00 00 00 ee ee 00 00 00 00 00 00 00 00 00 00 ee 00 00 ee 00 00 00 00 00 00 00 00 ee 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 7b 00 00 7b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 7b 7b 7b 00 00 7b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 7b 00 00 00 00 00 00 00 00 00 00 00 00 7b 00 00 00 00 00 00 7b 00 00 00 00 00 00 00 00 00 00 00 7b 00 00 00 00 00 00 00 00 00 00 00 00 00 7b 00 00 00 00 00 00 40 00 00 00 00 00 ff 00 00 ff 00 ff 00 00 ff 00 00 00 00 00 ff 00 00 00 00 00 00 00 00 00 ff 00 00 00 00 00 00 ff 00 00 00 c5 00 00 c5 00 00 00 00 00 00 00 c5 00 00 00 00 00 00 00 00 c5 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c5 00 00 00 00 00 00 c5 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c5 00 00 00 00 00 00 00 00 00 00 00 c5 00 00 00 c5 00 00 00 00 00 00 00 00 00 c5 00 c5 00 00 ff c5 00 00 00 c5 00 00 00 00 00 00 00 00 00 00 00 00 c5 00 00 00 00 00 00 c5 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 c5 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 c5 00 00 00 00 46 00 46 c5 00 00 00 00 00 00
*/
