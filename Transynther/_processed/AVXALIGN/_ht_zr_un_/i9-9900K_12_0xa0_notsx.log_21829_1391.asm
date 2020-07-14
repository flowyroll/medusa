.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x3e79, %rdi
nop
nop
nop
nop
and %r11, %r11
mov (%rdi), %r14w
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x6514, %r15
nop
nop
nop
nop
nop
mfence
movb (%r15), %r14b
nop
nop
nop
nop
nop
inc %rax
lea addresses_A_ht+0xeddc, %r14
nop
nop
and %r10, %r10
and $0xffffffffffffffc0, %r14
movntdqa (%r14), %xmm7
vpextrq $0, %xmm7, %rax
nop
nop
nop
nop
and $39903, %r15
lea addresses_normal_ht+0x8d6c, %rsi
lea addresses_A_ht+0x17f88, %rdi
nop
and %r14, %r14
mov $99, %rcx
rep movsq
nop
nop
nop
and $63980, %rsi
lea addresses_UC_ht+0x1ac14, %r10
mfence
mov (%r10), %ax
inc %r14
lea addresses_UC_ht+0x113f4, %rax
nop
nop
nop
nop
and %rcx, %rcx
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xca4c, %rsi
lea addresses_WC_ht+0x173ec, %rdi
nop
nop
nop
cmp $54711, %rax
mov $73, %rcx
rep movsw
nop
nop
sub $37252, %rcx
lea addresses_UC_ht+0x646c, %r11
nop
nop
add $63657, %r14
movups (%r11), %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
nop
nop
sub $22545, %r10
lea addresses_D_ht+0xb308, %r11
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
nop
nop
cmp $63701, %r15
lea addresses_WC_ht+0x172c, %rsi
lea addresses_WT_ht+0xc6c, %rdi
nop
and %rax, %rax
mov $80, %rcx
rep movsb
nop
cmp $30612, %r11
lea addresses_UC_ht+0x86c, %rsi
clflush (%rsi)
nop
nop
nop
nop
and $8932, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rsi)
add $15874, %r14
lea addresses_WT_ht+0x1806c, %r10
nop
nop
nop
nop
nop
xor $32573, %rax
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Load
lea addresses_PSE+0x117cc, %rbp
nop
cmp %rdi, %rdi
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
sub $64613, %rdi

// Store
lea addresses_UC+0x15c6c, %r13
nop
add %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r13)
nop
and $63228, %r13

// Store
lea addresses_normal+0x1846c, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $34713, %rcx
movw $0x5152, (%rdi)
nop
nop
add %rcx, %rcx

// Load
lea addresses_RW+0x1c0ac, %rax
and $61261, %r9
mov (%rax), %di
nop
dec %rax

// Store
lea addresses_A+0x1a2ac, %rcx
add $36507, %rdx
movw $0x5152, (%rcx)
nop
nop
cmp $24474, %r9

// Store
lea addresses_RW+0xd86c, %rcx
nop
nop
nop
nop
nop
and $28736, %rdi
movl $0x51525354, (%rcx)
nop
nop
nop
cmp $64843, %rbp

// Store
mov $0x2cf9280000000a6c, %r9
dec %r13
movb $0x51, (%r9)
nop
nop
nop
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_A+0x606c, %rcx
nop
nop
nop
nop
cmp %rdi, %rdi
movntdqa (%rcx), %xmm1
vpextrq $0, %xmm1, %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'08': 4, '18': 3, '44': 9611, '00': 12211}
00 00 44 00 00 44 00 44 44 44 44 00 44 44 44 44 00 00 44 00 44 00 00 44 44 44 00 44 00 44 00 00 00 00 44 00 00 00 00 44 00 44 44 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 44 00 44 00 44 00 44 44 00 00 00 00 44 00 00 00 00 44 00 44 00 00 00 00 00 44 44 00 00 00 44 44 44 00 00 00 00 00 44 44 00 00 00 44 44 00 00 00 00 44 00 00 00 00 44 44 44 00 00 44 44 44 00 00 00 00 00 00 44 00 00 44 00 00 00 44 44 00 00 44 44 44 00 00 00 44 44 44 44 00 00 00 44 44 00 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 00 00 00 44 00 00 00 44 00 44 44 00 00 44 00 00 00 00 44 44 44 44 00 44 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 44 44 44 00 00 44 44 44 00 00 44 44 00 00 44 44 44 44 00 00 00 00 44 00 00 00 00 44 44 44 00 44 44 44 44 44 44 00 00 00 00 44 44 00 44 00 00 44 00 00 00 00 00 00 00 44 44 44 00 00 44 00 00 00 00 44 44 44 44 00 00 44 44 44 44 44 00 00 00 00 00 44 44 44 00 00 44 44 44 00 00 44 44 44 00 00 00 00 00 44 44 44 00 44 00 44 44 00 00 44 00 00 44 44 00 44 00 00 00 44 44 00 44 00 44 00 00 00 00 00 00 44 44 00 44 44 44 44 00 44 44 44 44 00 00 44 00 00 44 44 44 44 00 00 00 44 44 44 00 00 00 44 44 00 00 00 44 00 00 00 00 44 44 44 44 00 00 00 00 44 00 00 44 44 00 00 00 44 00 00 44 44 00 00 00 00 00 00 44 00 00 00 00 00 00 44 44 00 44 00 00 00 00 00 44 00 00 00 00 44 44 44 44 44 00 00 00 00 00 00 00 44 44 44 44 00 44 44 44 00 00 00 44 44 00 00 00 44 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 00 00 44 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 44 44 00 44 00 00 00 44 44 00 00 00 44 44 00 44 44 44 44 00 00 00 44 44 44 44 44 00 44 44 44 00 44 44 44 44 00 00 00 00 44 00 00 00 44 44 00 00 00 44 00 00 00 44 00 44 44 44 00 00 00 44 44 44 44 00 44 44 44 44 00 44 44 44 00 00 00 00 00 00 44 44 44 00 44 44 44 00 44 44 44 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 44 44 00 00 00 44 44 44 44 44 44 00 00 00 44 44 44 44 00 00 00 44 44 00 00 44 44 00 00 00 00 00 00 44 44 00 00 44 44 44 00 00 00 44 44 00 00 00 44 00 00 00 44 00 00 00 00 00 00 44 44 00 00 00 44 44 00 00 00 44 44 00 44 44 44 44 00 44 00 00 44 00 00 00 00 44 44 44 44 44 44 44 00 00 00 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 44 44 44 00 00 00 00 00 00 44 00 00 00 44 44 44 44 00 00 00 00 44 00 00 00 00 00 44 44 00 00 00 00 00 00 00 44 00 44 44 44 00 00 00 44 00 00 00 00 44 00 00 44 44 44 44 00 00 00 00 44 44 00 00 00 44 44 00 00 44 44 44 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 44 44 44 44 00 00 00 00 00 00 44 00 44 44 44 00 44 00 00 00 00 00 44 00 44 00 00 44 00 00 00 00 44 00 00 44 44 44 00 44 00 00 00 00 00 44 44 44 00 00 44 44 44 44 00 00 44 44 44 00 00 00 00 00 00 44 44 44 00 44 00 00 00 00 44 44 44 00 00 44 44 00 00 00 00 44 44 00 00 00 44 44 44 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 44 44 44 44 44 44 44 00 44 44 00 44 00 00 00 44 44 44 00 44 00 44 44 44 44 00 00 00 00 00 44 00 00 44 00 44 00 44 00 44 44 00
*/
