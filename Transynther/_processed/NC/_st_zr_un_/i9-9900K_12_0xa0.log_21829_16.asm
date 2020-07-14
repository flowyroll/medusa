.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x134d5, %rsi
lea addresses_normal_ht+0x1a9d, %rdi
clflush (%rdi)
nop
sub %r12, %r12
mov $125, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x177a9, %rsi
lea addresses_normal_ht+0xc05, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $37986, %rbx
mov $124, %rcx
rep movsq
nop
inc %r12
lea addresses_UC_ht+0x96d5, %rdi
clflush (%rdi)
cmp %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
xor %r12, %r12
lea addresses_D_ht+0xa0e5, %rsi
lea addresses_WC_ht+0x8835, %rdi
nop
nop
nop
nop
inc %r14
mov $75, %rcx
rep movsq
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x6e15, %rsi
lea addresses_A_ht+0x1b9d5, %rdi
nop
inc %r14
mov $8, %rcx
rep movsb
nop
nop
cmp $47069, %r9
lea addresses_WT_ht+0x1981, %r9
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%r9)
nop
sub $35781, %rcx
lea addresses_A_ht+0x18ad5, %rsi
lea addresses_WC_ht+0xdf55, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %r12, %r12
mov $57, %rcx
rep movsw
nop
nop
dec %r9
lea addresses_WC_ht+0x12655, %r9
nop
add %rcx, %rcx
movb $0x61, (%r9)
nop
add %rsi, %rsi
lea addresses_D_ht+0x12195, %r12
nop
nop
nop
and %rbx, %rbx
movb (%r12), %r14b
nop
nop
nop
nop
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdx

// Load
lea addresses_A+0x19795, %r14
nop
nop
nop
nop
cmp %r13, %r13
movups (%r14), %xmm3
vpextrq $0, %xmm3, %r11
and $15128, %r14

// Store
mov $0x71141b0000000355, %r14
nop
nop
nop
sub $28417, %r15
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
nop
inc %r9

// Store
lea addresses_A+0xcb55, %r15
nop
nop
nop
nop
xor $23369, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r15)
nop
nop
and $61755, %r13

// Faulty Load
mov $0x4284980000000355, %r14
nop
nop
xor %rdx, %rdx
mov (%r14), %r13w
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'58': 19141, '5f': 147, '00': 2541}
58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 00 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 5f 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 00 00 58 58 5f 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 58 5f 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 00 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 5f 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 00 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 00 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 5f 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 00 58 58 58 58 58 58 58
*/
