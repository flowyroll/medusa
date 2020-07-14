.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1c120, %r15
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x1a810, %rsi
lea addresses_A_ht+0x181d8, %rdi
nop
nop
sub $43284, %r15
mov $97, %rcx
rep movsb
cmp $22963, %rsi
lea addresses_normal_ht+0x138a0, %rcx
nop
nop
xor $29530, %rbp
mov (%rcx), %r12d
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0xb6d8, %r15
nop
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rdx
movq %rdx, (%r15)
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x10da0, %rsi
lea addresses_UC_ht+0x114e4, %rdi
nop
nop
nop
sub $55739, %r8
mov $68, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $21483, %r15
lea addresses_normal_ht+0x7ca0, %r15
clflush (%r15)
nop
nop
nop
cmp $33027, %rdx
movups (%r15), %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x116a8, %rdx
nop
cmp $1559, %rbp
movw $0x6162, (%rdx)
nop
inc %r15
lea addresses_WT_ht+0x13ba0, %rbp
nop
nop
nop
nop
nop
dec %rdi
movw $0x6162, (%rbp)
nop
nop
nop
nop
cmp %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x10720, %r8
nop
xor %rcx, %rcx
movl $0x51525354, (%r8)
nop
nop
nop
add %r12, %r12

// Store
lea addresses_D+0x18160, %rcx
nop
nop
nop
nop
and $60718, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
sub $49371, %rcx

// REPMOV
lea addresses_WT+0x115a0, %rsi
lea addresses_WC+0x13de0, %rdi
nop
nop
sub %r15, %r15
mov $71, %rcx
rep movsw
nop
nop
nop
nop
inc %r12

// Store
mov $0x3ba78f0000000006, %r12
clflush (%r12)
cmp $51120, %rdx
movw $0x5152, (%r12)
nop
nop
nop
nop
and $62808, %r8

// Load
lea addresses_A+0xfc70, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r15, %r15
movb (%rsi), %r12b
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_normal+0xeba0, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovntdq %ymm2, (%rdi)
xor %r12, %r12

// Faulty Load
lea addresses_WT+0x13a0, %rdx
nop
nop
nop
nop
inc %rsi
movups (%rdx), %xmm1
vpextrq $0, %xmm1, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'39': 6}
39 39 39 39 39 39
*/
