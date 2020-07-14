.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1ed44, %r9
and $30448, %rdi
movw $0x6162, (%r9)
nop
nop
nop
nop
add $42127, %r9
lea addresses_normal_ht+0x1a6bc, %rsi
lea addresses_UC_ht+0x11912, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $51786, %r9
mov $49, %rcx
rep movsw
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x12204, %rsi
clflush (%rsi)
nop
nop
nop
nop
add %rdx, %rdx
movb $0x61, (%rsi)
cmp $21890, %rcx
lea addresses_normal_ht+0x10516, %rdi
dec %r12
mov (%rdi), %rcx
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x1c3e4, %rsi
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
and $34133, %rcx
lea addresses_UC_ht+0x2edb, %rsi
lea addresses_UC_ht+0x1b744, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r15
mov $18, %rcx
rep movsq
nop
nop
inc %r9
lea addresses_WC_ht+0xe144, %rdi
nop
nop
nop
and $9222, %r15
mov (%rdi), %cx
nop
and %rcx, %rcx
lea addresses_A_ht+0x1b544, %rax
clflush (%rax)
nop
nop
nop
and %rdi, %rdi
movb (%rax), %dl
nop
nop
nop
nop
xor $37329, %r12
lea addresses_A_ht+0x1a04, %r15
nop
nop
nop
cmp %rsi, %rsi
mov (%r15), %ecx
nop
nop
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_A+0x1c55a, %rax
cmp $64308, %r9
mov $0x5152535455565758, %rdi
movq %rdi, (%rax)
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_D+0x82a4, %rbp
nop
add %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movntdq %xmm6, (%rbp)
nop
add $51999, %r11

// Store
lea addresses_RW+0x5744, %rax
clflush (%rax)
nop
nop
xor $53778, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rax)
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_normal+0x57e4, %rdi
nop
nop
nop
sub $2374, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
nop
nop
nop
sub $50436, %rdi

// Store
lea addresses_A+0x544, %r11
clflush (%r11)
nop
nop
nop
nop
add $52724, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
inc %r9

// Store
lea addresses_RW+0x6e44, %rax
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rax)
xor $43488, %r11

// Store
lea addresses_WT+0x6cd4, %rax
nop
nop
nop
and %r9, %r9
movb $0x51, (%rax)
nop
nop
sub $15357, %r11

// Faulty Load
lea addresses_D+0x6f44, %rax
clflush (%rax)
nop
nop
nop
nop
cmp $63629, %rdx
mov (%rax), %r11w
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'36': 10}
36 36 36 36 36 36 36 36 36 36
*/
