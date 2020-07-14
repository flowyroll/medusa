.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xaa3a, %rsi
lea addresses_UC_ht+0xaf52, %rdi
nop
nop
nop
nop
xor $24000, %r9
mov $61, %rcx
rep movsb
inc %rax
lea addresses_WT_ht+0x19940, %r15
nop
nop
nop
add $32556, %rbp
movw $0x6162, (%r15)
nop
nop
cmp $28761, %r15
lea addresses_D_ht+0x9c7a, %rax
nop
nop
nop
dec %rsi
movups (%rax), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
xor $312, %rsi
lea addresses_D_ht+0x927a, %rbp
nop
nop
nop
add $46665, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%rbp)
nop
cmp $62871, %rdi
lea addresses_normal_ht+0x4c7a, %rax
nop
add $52028, %rdi
mov $0x6162636465666768, %r9
movq %r9, (%rax)
nop
nop
nop
nop
and $12769, %rbp
lea addresses_A_ht+0x17c62, %rsi
lea addresses_WT_ht+0x1a87a, %rdi
nop
nop
nop
nop
dec %r15
mov $108, %rcx
rep movsq
nop
nop
nop
nop
nop
add $7396, %rax
lea addresses_normal_ht+0x13e7a, %rsi
lea addresses_A_ht+0x1947a, %rdi
nop
nop
nop
nop
and $27703, %r12
mov $20, %rcx
rep movsw
nop
nop
nop
nop
and $37242, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx

// Store
lea addresses_normal+0x1fc7a, %rax
nop
xor %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_UC+0x1b0ea, %r8
nop
nop
dec %r14
mov $0x5152535455565758, %r13
movq %r13, (%r8)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r14
nop
nop
nop
nop
add $15512, %rax

// Store
lea addresses_UC+0x1ba1a, %r15
nop
nop
nop
nop
nop
xor $4309, %r8
movl $0x51525354, (%r15)
nop
nop
xor %rbp, %rbp

// Store
lea addresses_normal+0x1407a, %rax
nop
nop
nop
xor $23348, %r15
movl $0x51525354, (%rax)
nop
nop
and $19310, %r15

// Store
lea addresses_US+0x16c5a, %r13
nop
and $36659, %rcx
mov $0x5152535455565758, %rax
movq %rax, (%r13)
nop
nop
dec %rax

// Store
lea addresses_RW+0x1f8ae, %r8
nop
nop
and $58659, %rax
movl $0x51525354, (%r8)
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_UC+0x1102e, %r13
nop
cmp $34977, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
cmp $25924, %rbp

// Store
mov $0x3ea, %r13
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, (%r13)
nop
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_A+0x12da2, %r14
nop
nop
and $63056, %r8
movb $0x51, (%r14)
and $49729, %r14

// Store
lea addresses_A+0xee3a, %r13
nop
nop
add $39212, %r15
movl $0x51525354, (%r13)
sub $47642, %r8

// Faulty Load
lea addresses_normal+0x1fc7a, %r14
add %r8, %r8
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'34': 84}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
