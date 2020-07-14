.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xc38d, %rsi
lea addresses_A_ht+0x658d, %rdi
nop
sub %r15, %r15
mov $7, %rcx
rep movsq
nop
sub $50379, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbp

// Load
lea addresses_A+0x1af8d, %rbp
nop
nop
nop
nop
dec %r15
mov (%rbp), %eax
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_PSE+0x880d, %r12
nop
nop
nop
nop
and %r15, %r15
movl $0x51525354, (%r12)
nop
add %rax, %rax

// Store
mov $0x6b1992000000058d, %r8
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovntdq %ymm3, (%r8)
nop
nop
and $16334, %r8

// Store
lea addresses_normal+0x145d0, %rax
nop
nop
nop
dec %r10
movb $0x51, (%rax)
nop
nop
nop
nop
dec %r15

// Store
lea addresses_D+0x1574d, %r15
clflush (%r15)
nop
xor $41580, %rbp
movl $0x51525354, (%r15)
nop
and $2146, %rbp

// Load
lea addresses_D+0x15a2d, %rbp
nop
inc %r10
mov (%rbp), %r8w
nop
nop
nop
nop
nop
cmp $36483, %r10

// Store
lea addresses_normal+0x1b3cd, %r10
nop
nop
nop
nop
nop
inc %rbp
movb $0x51, (%r10)
cmp $14597, %rax

// Load
mov $0x38d, %r8
and %rax, %rax
movb (%r8), %r15b
nop
dec %rax

// Store
lea addresses_RW+0x16091, %r15
nop
nop
add $37387, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r15)
add $57708, %r12

// Faulty Load
lea addresses_normal+0xe38d, %rax
nop
nop
nop
cmp %rbp, %rbp
mov (%rax), %r13
lea oracles, %r12
and $0xff, %r13
shlq $12, %r13
mov (%r12,%r13,1), %r13
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'34': 6}
34 34 34 34 34 34
*/
