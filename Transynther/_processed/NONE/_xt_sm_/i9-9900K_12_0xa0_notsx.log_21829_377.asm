.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x16202, %r12
nop
nop
nop
nop
nop
add %r13, %r13
movups (%r12), %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
xor $21023, %rax
lea addresses_WC_ht+0x1a602, %rsi
clflush (%rsi)
nop
nop
nop
xor $55360, %r12
mov (%rsi), %ax
xor $52616, %rax
lea addresses_normal_ht+0x6402, %rax
nop
nop
nop
nop
and %r9, %r9
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
xor %rsi, %rsi
lea addresses_A_ht+0x1d62, %rax
nop
nop
nop
nop
and $3856, %rdx
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9
nop
sub %r12, %r12
lea addresses_A_ht+0x4202, %rdx
clflush (%rdx)
nop
nop
nop
cmp $21858, %r12
movl $0x61626364, (%rdx)
nop
nop
cmp $35787, %r13
lea addresses_WT_ht+0x1002, %r9
nop
nop
nop
nop
nop
xor $65404, %rdx
movb $0x61, (%r9)
nop
nop
nop
nop
cmp $47121, %rsi
lea addresses_WT_ht+0x98a2, %rsi
nop
cmp %r9, %r9
movb $0x61, (%rsi)
nop
nop
xor %rax, %rax
lea addresses_A_ht+0xc582, %rax
nop
nop
nop
nop
and $41855, %rdx
movw $0x6162, (%rax)
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x4082, %r9
and $57361, %r12
vmovups (%r9), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0xd3d2, %rsi
lea addresses_D_ht+0xc02, %rdi
nop
xor $1643, %r9
mov $97, %rcx
rep movsq
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x13682, %r12
nop
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%r12)
nop
nop
nop
nop
add %r9, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0xd702, %rsi
lea addresses_WT+0xfa82, %rdi
nop
nop
inc %rax
mov $91, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_normal+0x10602, %rdi
nop
nop
nop
nop
cmp $30582, %r15
movw $0x5152, (%rdi)
nop
nop
add $35627, %rcx

// Store
lea addresses_A+0x8bf2, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rdi)
xor $7916, %rsi

// Store
lea addresses_RW+0xfac2, %rdx
nop
nop
nop
nop
and $53149, %rcx
movw $0x5152, (%rdx)
nop
nop
and $42630, %r15

// Load
lea addresses_RW+0x1e562, %rdx
nop
nop
nop
inc %r11
mov (%rdx), %rdi
nop
nop
sub $14850, %rdi

// Store
lea addresses_normal+0x2c02, %r15
nop
inc %rcx
movb $0x51, (%r15)
nop
cmp %rdi, %rdi

// Store
lea addresses_WT+0x5486, %rax
clflush (%rax)
and $48624, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rax)
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_PSE+0xbe02, %rsi
nop
nop
nop
nop
dec %rdx
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_UC+0x1ee02, %rsi
nop
nop
sub $47731, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
inc %rdx

// Store
lea addresses_normal+0x10602, %rsi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
nop
nop
nop
nop
nop
xor $32985, %rcx

// Store
lea addresses_US+0x11ca2, %rdi
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
xor $21977, %rdi

// Load
lea addresses_US+0x3602, %rdx
xor %rax, %rax
movb (%rdx), %r11b
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_normal+0x10602, %rsi
nop
nop
nop
sub $62301, %r11
movb (%rsi), %dl
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 32, 'NT': True, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 6}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
