.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1e582, %r11
nop
nop
nop
nop
add $57429, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %r11
vmovntdq %ymm3, (%r11)
nop
nop
nop
dec %rax
lea addresses_UC_ht+0x5212, %rdx
add %r9, %r9
movw $0x6162, (%rdx)
nop
nop
inc %rsi
lea addresses_normal_ht+0xb75a, %rsi
lea addresses_D_ht+0x9d82, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $51, %rcx
rep movsl
nop
nop
nop
xor $48175, %rdx
pop %rsi
pop %rdx
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
push %r10
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_US+0x1e577, %rbp
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovntdq %ymm3, (%rbp)
nop
dec %rdx

// Store
lea addresses_PSE+0x4a32, %rbp
nop
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rbp)
nop
sub $37634, %r15

// Load
lea addresses_US+0x1c37a, %rcx
nop
dec %rax
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_D+0x19982, %rdi
nop
nop
and %rcx, %rcx
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 9, 'NT': True, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'36': 97}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
