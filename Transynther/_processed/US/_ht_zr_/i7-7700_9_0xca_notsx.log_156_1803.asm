.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1b67a, %rcx
nop
dec %r15
movb (%rcx), %r11b
nop
nop
inc %r15
lea addresses_normal_ht+0x1667a, %rsi
lea addresses_WC_ht+0x1207a, %rdi
clflush (%rsi)
dec %rax
mov $105, %rcx
rep movsl
nop
nop
inc %rdi
lea addresses_UC_ht+0x1977a, %rcx
nop
nop
dec %r10
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0xd79f, %rsi
lea addresses_normal_ht+0x2b86, %rdi
nop
nop
nop
nop
nop
xor $18286, %r11
mov $11, %rcx
rep movsq
nop
nop
nop
add %rax, %rax
lea addresses_A_ht+0x9e5a, %r10
nop
nop
nop
add $38086, %r15
movl $0x61626364, (%r10)
nop
dec %rcx
lea addresses_normal_ht+0x1167a, %rsi
lea addresses_WC_ht+0xe6aa, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $103, %rcx
rep movsl
sub %r11, %r11
lea addresses_A_ht+0xf17a, %r11
nop
sub $1298, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rax
push %rbp

// Load
lea addresses_WT+0x86fa, %rax
nop
nop
nop
nop
add $10888, %rbp
movb (%rax), %r14b
dec %r9

// Store
mov $0x79a784000000047a, %r14
nop
nop
nop
nop
sub $47357, %r11
movb $0x51, (%r14)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_A+0x1d61a, %r8
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, (%r8)
nop
nop
nop
add $4296, %rbp

// Store
lea addresses_D+0xc1fa, %r14
inc %r11
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
xor %r14, %r14

// Faulty Load
lea addresses_US+0xa67a, %r8
nop
nop
xor %rax, %rax
movups (%r8), %xmm0
vpextrq $1, %xmm0, %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'00': 11, '44': 145}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44
*/
