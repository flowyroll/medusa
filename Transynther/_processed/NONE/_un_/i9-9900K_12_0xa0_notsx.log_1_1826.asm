.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rbx
push %rdi
push %rdx
lea addresses_UC_ht+0xa995, %rdx
and %r8, %r8
mov (%rdx), %r11w
xor %rdi, %rdi
lea addresses_normal_ht+0x5455, %rbx
clflush (%rbx)
nop
nop
nop
nop
add $4781, %r15
mov (%rbx), %r12w
and $59212, %rdi
lea addresses_WC_ht+0x1a0d5, %rbx
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %rbx
vmovntdq %ymm1, (%rbx)
nop
nop
nop
add %r8, %r8
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
mov $0xa71, %rsi
lea addresses_A+0x1fe55, %rdi
clflush (%rdi)
nop
nop
sub %rdx, %rdx
mov $89, %rcx
rep movsq
nop
nop
nop
nop
xor %rbp, %rbp

// Load
lea addresses_RW+0x1ae53, %rsi
and %rbp, %rbp
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
nop
dec %rbx

// Store
lea addresses_PSE+0x18925, %rdi
nop
nop
nop
add $21032, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, (%rdi)
nop
nop
nop
cmp %rdx, %rdx

// Store
mov $0xe95, %rbp
nop
dec %rdi
movw $0x5152, (%rbp)
nop
nop
xor %rsi, %rsi

// Store
lea addresses_normal+0x13c55, %rdx
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
nop
xor $23304, %rbx

// REPMOV
lea addresses_US+0x9832, %rsi
lea addresses_D+0x12d3d, %rdi
add $39813, %rbx
mov $125, %rcx
rep movsw
nop
nop
sub %rdx, %rdx

// Store
lea addresses_US+0x1bf29, %rbp
inc %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
nop
xor $18128, %r12

// Store
lea addresses_US+0x1e6d5, %rbx
nop
nop
nop
nop
xor %rdx, %rdx
movb $0x51, (%rbx)
nop
nop
nop
xor $63206, %r12

// Store
mov $0x2388c00000000655, %r12
nop
add %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%r12)
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_US+0xf455, %rcx
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rcx)
nop
xor %rcx, %rcx

// Load
mov $0x55f7230000000bd5, %rbx
cmp $4506, %rsi
mov (%rbx), %rcx
nop
nop
nop
nop
nop
and $43054, %rdx

// Store
mov $0x4d5, %r12
nop
inc %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r12)
nop
lfence

// Store
lea addresses_RW+0xe875, %rsi
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovntdq %ymm3, (%rsi)
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_WC+0x7ae5, %r12
nop
nop
nop
add $33731, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movaps %xmm6, (%r12)
and $53450, %rbp

// Load
lea addresses_WC+0x111d5, %rcx
clflush (%rcx)
nop
and %rsi, %rsi
mov (%rcx), %rdi
nop
inc %rsi

// Faulty Load
lea addresses_WC+0x3c55, %rdx
clflush (%rdx)
nop
nop
nop
nop
inc %rcx
mov (%rdx), %si
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_US', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WC', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 7}}
{'93': 1}
93
*/
