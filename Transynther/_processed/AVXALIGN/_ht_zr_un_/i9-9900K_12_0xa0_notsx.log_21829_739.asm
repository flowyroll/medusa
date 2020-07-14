.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x144c, %rsi
lea addresses_WC_ht+0x86c4, %rdi
nop
nop
nop
nop
sub $63856, %rbx
mov $38, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $27662, %rsi
lea addresses_WT_ht+0x1770c, %r10
clflush (%r10)
nop
nop
cmp $60107, %rax
mov (%r10), %r13w
nop
add %rsi, %rsi
lea addresses_UC_ht+0x12dc4, %rsi
nop
nop
and $38234, %r10
mov (%rsi), %ecx
nop
add %r13, %r13
lea addresses_A_ht+0x12cc4, %rsi
lea addresses_A_ht+0x1d4c4, %rdi
nop
nop
nop
xor $33514, %r13
mov $58, %rcx
rep movsq
nop
nop
nop
and $59552, %rdi
lea addresses_WT_ht+0x12e04, %rsi
lea addresses_WT_ht+0x162e4, %rdi
sub %rbx, %rbx
mov $127, %rcx
rep movsb
add $16438, %rax
lea addresses_D_ht+0x5244, %rsi
lea addresses_WT_ht+0x3e24, %rdi
nop
nop
add %r10, %r10
mov $0, %rcx
rep movsl
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x2fc4, %rsi
lea addresses_UC_ht+0x1c094, %rdi
nop
nop
and %rbx, %rbx
mov $94, %rcx
rep movsq
nop
xor $28564, %rax
lea addresses_normal_ht+0x10abc, %r13
nop
cmp %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r13)
nop
nop
nop
nop
inc %r13
lea addresses_D_ht+0xdd6e, %rsi
lea addresses_UC_ht+0x15ec4, %rdi
nop
nop
nop
dec %r10
mov $35, %rcx
rep movsw
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0xdfa4, %rsi
lea addresses_D_ht+0x2644, %rdi
nop
nop
nop
nop
nop
add $8073, %rdx
mov $93, %rcx
rep movsl
nop
nop
nop
and $1140, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rdx

// Load
lea addresses_UC+0x1d644, %rax
nop
nop
nop
nop
xor %r10, %r10
movups (%rax), %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_US+0x18c4, %rdx
clflush (%rdx)
nop
nop
nop
nop
add $42882, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rdx)
nop
nop
nop
nop
inc %r10

// Store
lea addresses_D+0x1c604, %r8
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r8)
nop
nop
sub %rbx, %rbx

// Store
lea addresses_US+0xc6c4, %rdx
nop
nop
nop
nop
nop
dec %r8
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
inc %rax

// Load
lea addresses_RW+0x4344, %rax
nop
and %rbx, %rbx
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r10
nop
cmp %rbx, %rbx

// Store
lea addresses_RW+0x406a, %rax
nop
nop
cmp $53866, %r8
movb $0x51, (%rax)
nop
nop
nop
xor $36361, %r8

// Store
lea addresses_A+0x110c4, %rbp
nop
nop
nop
nop
and $7199, %r10
movl $0x51525354, (%rbp)
nop
nop
nop
add $608, %r15

// Faulty Load
mov $0x6c4, %rdx
nop
nop
cmp $64525, %rax
vmovntdqa (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'08': 10, '72': 1, '45': 1123, '00': 13600, '49': 7080, 'fc': 1, '05': 14}
49 00 00 00 00 49 49 45 00 49 00 49 00 49 00 00 49 45 45 45 00 49 00 00 49 00 49 49 00 00 49 00 49 49 49 00 00 45 00 49 00 49 00 00 00 00 49 00 49 00 49 49 00 00 00 49 00 49 49 49 49 00 00 00 00 00 49 00 00 00 00 49 00 00 00 49 00 00 49 00 49 49 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 49 00 00 00 00 00 49 49 49 49 00 00 00 00 00 00 49 49 49 49 49 49 00 00 00 49 49 00 00 49 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 49 49 00 00 00 00 49 49 00 00 00 00 00 49 49 49 00 49 00 49 00 49 49 49 49 00 49 45 00 00 49 45 49 00 00 00 49 49 49 00 00 00 00 49 00 00 49 49 49 00 00 00 49 49 49 49 45 00 00 00 00 49 00 49 00 45 00 49 45 00 00 00 00 00 49 00 45 49 00 00 49 45 00 00 49 00 00 00 49 00 00 49 00 49 00 00 49 00 49 49 00 49 49 00 49 00 49 00 00 00 00 00 00 49 49 00 00 00 00 49 49 45 00 00 00 00 00 49 00 49 49 49 49 00 45 45 49 49 49 00 49 45 49 00 00 49 00 49 49 49 00 00 00 00 00 00 49 00 49 49 49 00 00 00 00 45 00 00 49 00 00 49 49 00 00 00 00 49 49 00 49 45 49 00 49 00 45 49 00 00 49 49 49 00 00 49 00 00 45 49 49 45 49 00 00 00 49 00 00 00 49 45 49 49 49 00 49 49 00 49 45 00 00 00 45 00 00 49 00 00 49 00 49 00 49 00 00 00 45 49 00 00 49 49 00 49 49 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 45 49 00 49 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 49 49 45 45 49 00 00 49 49 00 00 00 49 00 00 49 49 00 00 49 49 00 45 49 00 00 00 00 00 49 49 00 00 00 00 00 49 00 49 00 49 00 49 49 49 49 00 49 00 49 00 00 45 00 49 00 00 49 00 45 00 49 49 49 00 05 00 00 00 00 49 00 00 00 49 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 45 00 45 00 49 00 00 00 00 00 49 49 00 49 00 00 00 49 00 00 49 45 49 00 00 49 00 00 00 00 00 00 00 49 49 00 00 49 00 00 00 00 00 00 00 00 00 00 49 49 00 00 49 00 00 00 00 49 49 49 49 00 00 00 00 00 45 00 49 00 00 00 49 49 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 49 49 00 49 49 49 00 49 00 00 00 49 49 00 49 49 00 00 00 49 00 49 49 00 00 00 00 00 00 49 00 00 49 00 00 00 00 49 00 49 49 00 45 00 00 00 00 00 00 00 49 49 00 00 00 00 49 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 49 00 49 00 00 00 00 00 00 49 00 00 49 00 00 00 49 00 00 00 49 00 00 49 49 00 00 00 00 00 00 00 49 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 49 00 49 49 49 00 49 00 00 00 49 49 00 49 49 00 45 49 00 00 49 49 00 49 45 00 00 49 00 49 49 00 49 00 49 45 49 49 45 49 00 49 00 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 49 49 00 00 49 00 45 00 00 00 00 49 00 49 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 49 49 45 00 49 00 00 49 49 00 00 00 00 49 49 00 45 00 00 00 00 00 00 00 00 00 00 00 49 00 49 49 00 00 49 49 00 00 49 49 49 00 49 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 00 49 00 49 00 00 00 00 49 00 49 00 00 45 00 49 00 00 00 00 00 49 45 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 49 49 45 00 00 00 45 00 49 49 00 00 00 00 00 49 00 49 00 00 49 49 00 00 49 00 00 00 00 49 00 00 49 49 00 00 49 00 49 49
*/
