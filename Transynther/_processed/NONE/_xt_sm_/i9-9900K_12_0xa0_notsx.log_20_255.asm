.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xc2fb, %r13
nop
nop
nop
nop
xor $29438, %rbx
movb (%r13), %r15b
xor $615, %rdx
lea addresses_UC_ht+0x18c7b, %rsi
lea addresses_A_ht+0xd43b, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $41991, %rax
mov $2, %rcx
rep movsl
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x1834d, %rbx
clflush (%rbx)
nop
nop
sub $43719, %rax
vmovups (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x14dbb, %rdi
nop
dec %r15
movb (%rdi), %bl
nop
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rsi

// Load
lea addresses_normal+0xcab0, %r14
nop
nop
nop
nop
and $62887, %rsi
mov (%r14), %r15
nop
nop
nop
xor %r13, %r13

// Load
lea addresses_A+0x307b, %r15
nop
nop
nop
nop
inc %rbp
movups (%r15), %xmm5
vpextrq $1, %xmm5, %r14
inc %rsi

// Store
lea addresses_RW+0x47b, %rbx
nop
cmp %r15, %r15
movl $0x51525354, (%rbx)
nop
nop
and $29643, %rbp

// Store
mov $0x5118d90000000dbf, %r15
nop
nop
nop
nop
xor $9181, %r12
movw $0x5152, (%r15)
nop
add $51326, %r14

// Store
mov $0x676fa50000000da3, %rbp
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovaps %ymm5, (%rbp)
nop
nop
nop
and $50151, %r13

// Faulty Load
lea addresses_RW+0x47b, %r14
nop
nop
nop
xor %r12, %r12
movb (%r14), %r15b
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rsi
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'54': 20}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
