.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xf9f9, %rsi
nop
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
and $0xffffffffffffffc0, %rsi
movaps %xmm5, (%rsi)
nop
nop
nop
nop
nop
xor $1171, %r10
lea addresses_WT_ht+0xfb73, %rsi
nop
nop
nop
nop
sub %rdx, %rdx
movl $0x61626364, (%rsi)
cmp $42534, %r15
lea addresses_D_ht+0xf0f3, %r15
nop
xor %r8, %r8
movb (%r15), %dl
nop
dec %r15
lea addresses_D_ht+0x14dd3, %rbp
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rbp), %r8d
and $33150, %rax
lea addresses_UC_ht+0x1c4af, %rbp
nop
nop
nop
nop
and %rsi, %rsi
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %rax
nop
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0xd2f3, %rsi
lea addresses_normal_ht+0xc53f, %rdi
nop
nop
inc %rdx
mov $12, %rcx
rep movsw
sub $1254, %rax
lea addresses_WC_ht+0x51c3, %rsi
lea addresses_A_ht+0x4333, %rdi
nop
nop
nop
nop
and $16553, %r10
mov $127, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $58329, %r15
lea addresses_D_ht+0x109e3, %rsi
lea addresses_A_ht+0x6a73, %rdi
nop
sub %rax, %rax
mov $12, %rcx
rep movsq
nop
dec %rax
lea addresses_UC_ht+0x1bb33, %rdi
nop
nop
sub %rdx, %rdx
movups (%rdi), %xmm0
vpextrq $1, %xmm0, %r8
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0x2913, %r15
nop
nop
nop
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%r15)
inc %rbp
lea addresses_normal_ht+0x7bf3, %r8
nop
nop
nop
and %rcx, %rcx
movups (%r8), %xmm0
vpextrq $0, %xmm0, %rax
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x12c73, %rsi
lea addresses_UC_ht+0x81a3, %rdi
nop
nop
nop
nop
cmp $50088, %rbp
mov $74, %rcx
rep movsw
nop
nop
xor $4359, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rcx

// Store
mov $0x3217900000000243, %r12
nop
nop
nop
nop
nop
add $26706, %rcx
movb $0x51, (%r12)
nop
nop
dec %r10

// Store
lea addresses_US+0x1af3, %r10
nop
and %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%r10)
cmp %r10, %r10

// Load
lea addresses_UC+0x1d6f3, %rcx
nop
sub %rbx, %rbx
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_A+0x1b2f3, %rbx
clflush (%rbx)
nop
nop
inc %r14
movw $0x5152, (%rbx)
nop
and %r10, %r10

// Faulty Load
lea addresses_A+0x1b2f3, %rax
nop
nop
add $7127, %r10
mov (%rax), %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'52': 256}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
