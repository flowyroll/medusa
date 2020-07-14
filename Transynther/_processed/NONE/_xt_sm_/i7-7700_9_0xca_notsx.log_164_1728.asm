.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x3d6e, %r15
dec %rax
mov (%r15), %r11w
nop
sub $56361, %rsi
lea addresses_WT_ht+0x1916e, %r13
nop
nop
nop
nop
sub %rbx, %rbx
mov (%r13), %r8
nop
nop
nop
nop
sub $8431, %r15
lea addresses_WT_ht+0xe23e, %r15
nop
nop
nop
nop
xor %r11, %r11
movw $0x6162, (%r15)
nop
add $59256, %rbx
lea addresses_WT_ht+0x1776e, %rsi
nop
nop
nop
nop
nop
xor $64992, %r15
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
xor $7790, %r8
lea addresses_A_ht+0xe72e, %rbx
nop
nop
nop
and $64607, %r15
mov $0x6162636465666768, %r13
movq %r13, (%rbx)
nop
nop
sub $38999, %rax
lea addresses_UC_ht+0xea6e, %rsi
lea addresses_normal_ht+0x9516, %rdi
clflush (%rdi)
inc %r8
mov $36, %rcx
rep movsb
nop
nop
sub $49764, %rsi
lea addresses_WT_ht+0x15b6e, %r11
and $40017, %r15
movb $0x61, (%r11)
nop
sub $35953, %rcx
lea addresses_WT_ht+0x9e6e, %rbx
nop
nop
dec %r13
mov (%rbx), %r15d
nop
and %r11, %r11
lea addresses_WC_ht+0x135ae, %rsi
lea addresses_A_ht+0x936e, %rdi
nop
nop
nop
xor $49789, %rbx
mov $82, %rcx
rep movsl
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x1c62e, %r13
nop
nop
nop
nop
xor $34319, %r15
movups (%r13), %xmm2
vpextrq $0, %xmm2, %r11
nop
nop
sub $57837, %r13
lea addresses_A_ht+0xf56e, %r13
nop
nop
cmp %rsi, %rsi
movups (%r13), %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
nop
nop
and $26231, %rdi
lea addresses_D_ht+0x19c5e, %rsi
nop
nop
nop
sub $54868, %r8
mov (%rsi), %cx
nop
and %r11, %r11
lea addresses_D_ht+0x1aa2e, %rsi
lea addresses_UC_ht+0x3f2e, %rdi
clflush (%rsi)
nop
nop
nop
dec %r13
mov $77, %rcx
rep movsw
nop
add $12849, %r8
lea addresses_D_ht+0x4142, %rbx
clflush (%rbx)
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%rbx)
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rdi
push %rsi

// Store
lea addresses_A+0x385b, %r14
nop
dec %rsi
mov $0x5152535455565758, %r13
movq %r13, (%r14)
nop
nop
add $30007, %r9

// Store
mov $0xb6e, %r14
nop
nop
nop
nop
lfence
movb $0x51, (%r14)
nop
nop
nop
nop
nop
dec %r8

// Store
lea addresses_A+0x1736e, %rdi
nop
dec %r13
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
nop
nop
nop
nop
nop
cmp $14485, %r14

// Store
mov $0x51f3860000000bae, %rsi
dec %rdi
movl $0x51525354, (%rsi)
nop
and $8683, %r14

// Store
lea addresses_WC+0xc94e, %rbp
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, (%rbp)
nop
nop
nop
cmp $17305, %rdi

// Faulty Load
lea addresses_A+0x1736e, %r9
nop
nop
nop
nop
sub $3690, %r13
mov (%r9), %r14d
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'58': 164}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
