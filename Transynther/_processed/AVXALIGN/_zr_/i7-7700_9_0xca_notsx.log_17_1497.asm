.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1d0c5, %r13
nop
xor $44288, %rbp
movb (%r13), %r11b
nop
nop
nop
nop
xor %r14, %r14
lea addresses_UC_ht+0x74c5, %r15
clflush (%r15)
nop
inc %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r15)
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1ac45, %rsi
nop
nop
nop
nop
and %r11, %r11
movb (%rsi), %r15b
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x1af78, %r14
nop
cmp $44404, %rdi
mov (%r14), %rsi
nop
nop
nop
nop
nop
inc %r11
lea addresses_UC_ht+0x1b6c5, %rsi
lea addresses_UC_ht+0xd4c5, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $62, %rcx
rep movsb
nop
nop
nop
and $49058, %r11
lea addresses_UC_ht+0x128c5, %rdi
nop
nop
nop
sub $1328, %rcx
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
nop
cmp %r15, %r15
lea addresses_D_ht+0x1aac5, %r11
nop
nop
nop
nop
nop
add %r15, %r15
movups (%r11), %xmm0
vpextrq $0, %xmm0, %rbp
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x1d485, %r13
nop
nop
nop
nop
and %r14, %r14
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
cmp $41455, %r15
lea addresses_A_ht+0x118c5, %rcx
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%rcx)
sub $40093, %r11
lea addresses_normal_ht+0x195b1, %r13
nop
nop
nop
nop
add %r14, %r14
movups (%r13), %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
sub %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_D+0x18a05, %rax
nop
nop
nop
nop
nop
add $11921, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_US+0x118c5, %r11
add %rdx, %rdx
mov (%r11), %r12w
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 17}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
