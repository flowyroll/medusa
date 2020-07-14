.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x13a72, %r8
xor $3419, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r8)
xor %rax, %rax
lea addresses_A_ht+0x11b22, %rsi
inc %rcx
mov (%rsi), %rdx
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x17a72, %r14
nop
nop
nop
nop
nop
and %rbx, %rbx
mov (%r14), %r8w
sub $35934, %r8
lea addresses_WT_ht+0xbaa2, %rsi
lea addresses_UC_ht+0x1d672, %rdi
clflush (%rdi)
nop
sub %r8, %r8
mov $16, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_normal_ht+0xb472, %rsi
lea addresses_WT_ht+0x17672, %rdi
nop
and %rax, %rax
mov $77, %rcx
rep movsw
xor $32462, %rcx
lea addresses_D_ht+0x184d2, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
and $36224, %rax
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
sub $12608, %r8
lea addresses_normal_ht+0x13f92, %rax
nop
nop
add $18553, %rcx
movups (%rax), %xmm6
vpextrq $0, %xmm6, %rbx
nop
nop
nop
nop
cmp %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0x4e72, %rdx
clflush (%rdx)
nop
nop
nop
inc %r13
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
sub $33648, %r13

// Store
lea addresses_US+0x1b7a, %rsi
nop
dec %rcx
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
nop
nop
and %rdx, %rdx

// Load
lea addresses_A+0x10272, %rbp
nop
nop
nop
nop
nop
and %r13, %r13
mov (%rbp), %dx
nop
nop
sub %rdx, %rdx

// Store
mov $0x6b2, %r14
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r14)
sub %r13, %r13

// Load
lea addresses_UC+0xa272, %rdx
nop
xor %r9, %r9
mov (%rdx), %r13w
xor %rsi, %rsi

// Faulty Load
lea addresses_WT+0x1a72, %rcx
nop
nop
xor $24846, %r13
mov (%rcx), %bp
lea oracles, %r14
and $0xff, %rbp
shlq $12, %rbp
mov (%r14,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'39': 7}
39 39 39 39 39 39 39
*/
