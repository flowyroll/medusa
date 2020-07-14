.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x107e, %r15
nop
xor %rax, %rax
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0x94ee, %rsi
nop
nop
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rsi)
inc %r11
lea addresses_UC_ht+0x6a6e, %rsi
lea addresses_normal_ht+0x160de, %rdi
clflush (%rsi)
cmp $10543, %rbp
mov $53, %rcx
rep movsl
cmp %rdi, %rdi
lea addresses_D_ht+0xb722, %rsi
lea addresses_D_ht+0x174e, %rdi
clflush (%rdi)
nop
nop
cmp $49715, %r11
mov $92, %rcx
rep movsq
nop
nop
nop
sub $38113, %r15
lea addresses_WC_ht+0x14cee, %rax
sub %rbp, %rbp
movl $0x61626364, (%rax)
nop
add %rdi, %rdi
lea addresses_normal_ht+0x13cd2, %rdi
nop
nop
nop
nop
and $48200, %rsi
mov (%rdi), %bp
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x1c5ee, %rsi
lea addresses_UC_ht+0xc2ae, %rdi
nop
nop
nop
and %r11, %r11
mov $7, %rcx
rep movsq
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xd0ee, %rsi
lea addresses_normal_ht+0x245e, %rdi
nop
nop
nop
nop
sub $15619, %r15
mov $126, %rcx
rep movsb
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x14fee, %rsi
add %rcx, %rcx
mov (%rsi), %r11d
nop
nop
nop
nop
sub $28742, %rsi
lea addresses_WC_ht+0x1cfde, %rsi
nop
nop
nop
sub $44531, %rax
mov $0x6162636465666768, %r11
movq %r11, %xmm3
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm3, (%rsi)
nop
nop
nop
sub $31074, %r8
lea addresses_WC_ht+0x806e, %r8
nop
sub $34245, %rax
movb (%r8), %cl
nop
nop
nop
cmp $59668, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_US+0x68ee, %rbx
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_US+0x68ee, %r9
clflush (%r9)
sub %r14, %r14
vmovntdqa (%r9), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'46': 7038, '13': 1, 'ab': 4, '3b': 7, '85': 11, '06': 1, 'cb': 6, '00': 14703, 'fb': 5, 'e3': 19, '33': 1, 'f3': 2, 'c3': 6, '3c': 4, 'b3': 1, '4b': 6, '8b': 3, 'db': 2, 'dc': 1, '79': 4, '53': 1, '01': 1, '6b': 2}
06 00 46 46 00 00 00 00 46 00 00 46 46 46 46 46 00 00 00 46 46 00 00 00 46 00 46 46 46 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 46 46 46 00 00 00 00 00 00 00 46 00 46 46 00 00 46 00 46 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 00 00 46 00 46 00 00 46 00 00 46 00 46 00 00 00 00 46 00 00 00 00 46 00 46 00 00 46 00 46 00 00 00 46 00 00 00 46 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 46 46 00 00 00 00 46 00 00 00 00 00 00 00 46 46 00 46 00 46 00 00 00 00 00 00 00 00 46 00 00 46 46 00 46 00 00 46 00 00 46 46 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 00 00 00 00 46 00 00 00 46 00 46 46 46 00 00 00 00 00 00 00 00 00 46 00 46 46 46 00 00 46 00 00 00 00 46 46 00 46 00 00 46 00 00 00 00 00 00 46 46 46 00 00 00 00 46 46 00 00 00 00 00 00 46 00 00 46 00 00 00 46 46 00 00 00 46 46 00 00 00 00 00 46 00 00 46 00 46 00 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 46 00 46 46 00 00 00 46 00 00 00 46 46 00 00 46 00 46 46 00 00 46 00 46 00 00 00 46 46 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 46 00 46 46 46 46 00 46 46 00 46 00 00 00 46 46 46 00 00 00 46 00 00 00 46 00 46 00 00 46 46 00 00 46 00 00 00 46 00 00 00 00 46 00 46 46 00 00 00 00 46 46 46 00 00 00 00 46 46 00 00 00 00 00 00 00 00 46 46 46 46 00 00 00 00 00 46 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 46 00 46 46 00 00 00 46 00 00 00 00 46 00 46 46 46 46 00 46 00 46 00 46 46 46 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 46 46 46 46 00 00 46 00 46 00 00 46 00 46 46 00 00 46 00 00 00 46 00 00 00 46 00 00 46 00 46 00 46 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 46 46 46 00 00 00 00 46 46 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 46 46 46 46 46 00 46 00 00 00 46 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 46 00 46 00 00 00 46 00 00 00 00 00 00 00 46 00 46 00 00 00 46 46 46 46 46 00 46 00 00 00 00 00 00 46 46 00 00 00 00 46 46 46 00 00 00 46 46 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 46 46 46 46 46 46 00 46 00 00 46 46 00 46 00 00 46 00 46 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 85 00 85 46 46 46 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 46 00 46 46 46 00 00 00 00 46 46 00 46 00 00 46 00 00 46 00 00 00 00 00 00 00 46 46 00 00 00 46 46 46 00 46 46 46 46 46 46 00 00 00 46 00 46 46 00 00 00 00 46 46 46 00 46 00 46 46 00 00 00 00 00 00 00 00 00 00 46 00 46 46 46 46 00 46 00 46 46 00 00 46 00 46 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 46 46 00 46 00 00 00 00 00 00 00 46 00 00 46 00 46 00 46 46 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 46 00 46 46 00 46 00 46 00 00 46 46 00 00 00 46 00 00 00 00
*/
