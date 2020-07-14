.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x91dd, %rdi
sub $6412, %r11
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
nop
nop
nop
nop
cmp $64039, %r8
lea addresses_normal_ht+0xb501, %rsi
lea addresses_WC_ht+0xc25d, %rdi
nop
nop
nop
nop
lfence
mov $49, %rcx
rep movsq
nop
nop
and $22795, %rsi
lea addresses_WC_ht+0x117dd, %rsi
lea addresses_D_ht+0xa7dd, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $28, %rcx
rep movsw
nop
nop
nop
nop
cmp $3198, %r15
lea addresses_WC_ht+0x1ebdd, %rsi
lea addresses_WT_ht+0x1cc0d, %rdi
nop
xor %rax, %rax
mov $40, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rax
lea addresses_WC_ht+0x91dd, %r8
nop
nop
nop
nop
nop
add $1728, %r15
vmovups (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
add %rcx, %rcx
lea addresses_D_ht+0x1ef5d, %rax
xor %r11, %r11
movb $0x61, (%rax)
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x159dd, %rsi
lea addresses_UC_ht+0x189dd, %rdi
nop
and %rax, %rax
mov $68, %rcx
rep movsb
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0x10ddd, %rcx
clflush (%rcx)
nop
nop
cmp $30339, %rsi
mov (%rcx), %eax
sub %r8, %r8
lea addresses_normal_ht+0x1855d, %r15
nop
nop
nop
dec %r9
mov (%r15), %r11d
nop
add %rsi, %rsi
lea addresses_D_ht+0x16ddd, %rsi
lea addresses_UC_ht+0x51dd, %rdi
nop
nop
nop
nop
inc %r15
mov $28, %rcx
rep movsw
nop
nop
and $46347, %rsi
lea addresses_D_ht+0xa7dd, %rax
nop
nop
and %r11, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rax)
xor %rdi, %rdi
lea addresses_WC_ht+0xe1ad, %r11
nop
nop
nop
cmp %rcx, %rcx
mov (%r11), %eax
nop
nop
nop
nop
sub $41433, %rcx
lea addresses_A_ht+0x4fdd, %r8
add $8180, %rdi
movb (%r8), %r9b
nop
xor $1712, %r15
lea addresses_WC_ht+0x14dd, %rsi
lea addresses_D_ht+0x17d29, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $40, %rcx
rep movsq
nop
sub %rax, %rax
lea addresses_D_ht+0x13967, %rsi
lea addresses_WT_ht+0x17f1d, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $16, %rcx
rep movsb
nop
nop
add $60290, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Load
lea addresses_US+0x17a9d, %r9
add %r13, %r13
movups (%r9), %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
add %rdx, %rdx

// Store
lea addresses_RW+0x65dd, %r9
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
nop
dec %rbx

// Store
lea addresses_RW+0x65dd, %r9
nop
nop
and $42984, %r13
mov $0x5152535455565758, %rbp
movq %rbp, (%r9)
nop
xor $49247, %r9

// Store
lea addresses_normal+0x1a3dd, %r9
nop
nop
nop
nop
and %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, (%r9)
sub %rbp, %rbp

// Store
lea addresses_RW+0x65dd, %rdx
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovaps %ymm7, (%rdx)
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_normal+0x16e85, %rbx
nop
nop
and $28888, %r13
movw $0x5152, (%rbx)
nop
nop
nop
nop
and $33095, %r9

// Faulty Load
lea addresses_RW+0x65dd, %rbx
nop
nop
nop
cmp $40077, %rdi
mov (%rbx), %r11w
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
