.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x19f53, %rsi
lea addresses_D_ht+0xcb53, %rdi
nop
nop
nop
nop
nop
inc %r10
mov $126, %rcx
rep movsw
inc %rbx
lea addresses_normal_ht+0x13d4b, %rsi
lea addresses_UC_ht+0xc353, %rdi
nop
nop
nop
nop
dec %r15
mov $88, %rcx
rep movsl
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0xc233, %rsi
lea addresses_UC+0x11f53, %rdi
and %r13, %r13
mov $69, %rcx
rep movsw
nop
nop
nop
xor $50479, %rcx

// Store
lea addresses_WT+0x140b7, %rsi
nop
nop
add $1084, %rax
movb $0x51, (%rsi)
nop
cmp $172, %rsi

// Load
lea addresses_A+0x8b53, %r8
nop
inc %r10
vmovups (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
nop
nop
sub $37314, %r8

// Load
lea addresses_US+0xaed3, %r10
nop
nop
nop
nop
nop
add $26841, %rdi
mov (%r10), %rsi
sub %r13, %r13

// Load
lea addresses_normal+0x1c753, %rsi
nop
nop
add $5503, %rdi
mov (%rsi), %r8d
nop
nop
nop
sub $41114, %rdi

// Store
lea addresses_WC+0x2153, %rdi
xor $58188, %r10
movw $0x5152, (%rdi)
nop
nop
and %rcx, %rcx

// Store
lea addresses_PSE+0x548b, %rcx
nop
nop
nop
cmp $15707, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%rcx)

// Exception!!!
nop
nop
mov (0), %rdi
add $57472, %rax

// Load
lea addresses_US+0x9633, %r8
nop
nop
cmp %rdi, %rdi
vmovaps (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
dec %rsi

// Store
lea addresses_UC+0x3e53, %rdi
nop
nop
nop
nop
nop
cmp $7807, %r8
movl $0x51525354, (%rdi)
and %rsi, %rsi

// Load
lea addresses_WT+0x839b, %rax
nop
nop
cmp $57271, %rsi
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_UC+0x1a3d3, %rax
nop
nop
and %rsi, %rsi
movb $0x51, (%rax)
nop
nop
and $48337, %r13

// Store
lea addresses_UC+0x3753, %r8
add $45050, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_normal+0x1c753, %rsi
nop
nop
and $5797, %r8
movb (%rsi), %r10b
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'34': 24}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
