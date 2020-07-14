.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xb0c9, %rsi
lea addresses_normal_ht+0x19fd9, %rdi
nop
inc %r14
mov $51, %rcx
rep movsl
nop
xor %r14, %r14
lea addresses_UC_ht+0x1b29, %rdx
nop
add $57017, %r12
movw $0x6162, (%rdx)
nop
nop
nop
xor $28341, %r12
lea addresses_A_ht+0x7369, %r14
nop
nop
nop
cmp $43865, %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
inc %rsi
lea addresses_D_ht+0x1d4c9, %rsi
nop
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %rdx
movq %rdx, (%rsi)
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x6cc9, %rcx
nop
nop
nop
and %rdx, %rdx
movl $0x61626364, (%rcx)
cmp $2020, %r14
lea addresses_D_ht+0x13209, %rsi
lea addresses_WC_ht+0x2209, %rdi
cmp $24500, %rbx
mov $86, %rcx
rep movsb
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0xfb1, %r10
nop
nop
nop
inc %r14
movb $0x61, (%r10)
nop
nop
nop
nop
nop
cmp $20199, %rsi
lea addresses_normal_ht+0x3ceb, %r12
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rbx
movq %rbx, (%r12)
nop
nop
nop
nop
cmp $34462, %rdi
lea addresses_A_ht+0x44c9, %rdi
nop
nop
nop
nop
and %rsi, %rsi
mov (%rdi), %rbx
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x9e81, %rsi
lea addresses_normal_ht+0x144c9, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $24184, %r10
mov $53, %rcx
rep movsq
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x144c9, %rsi
lea addresses_A_ht+0xa189, %rdi
nop
nop
inc %r14
mov $120, %rcx
rep movsl
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x1b8c9, %rsi
lea addresses_WC_ht+0x1b8c9, %rdi
and $37142, %r14
mov $99, %rcx
rep movsb
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0x128c9, %r12
nop
dec %rbx
movb $0x61, (%r12)
nop
nop
nop
xor $64779, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_US+0x59c9, %r14
clflush (%r14)
nop
nop
cmp $51233, %rbp
movaps (%r14), %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
nop
cmp $2601, %rbp

// Store
lea addresses_WC+0x1a749, %rsi
nop
nop
nop
xor $21492, %rdx
movw $0x5152, (%rsi)
xor $26590, %r9

// Store
lea addresses_A+0x130c9, %rdi
dec %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
cmp $33704, %rdx

// Store
mov $0x349, %rdx
nop
dec %rsi
movl $0x51525354, (%rdx)
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_US+0x1ad9e, %rdx
nop
nop
nop
nop
nop
add $50363, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rdx)
nop
nop
add %rdi, %rdi

// Store
lea addresses_UC+0x18489, %rdx
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
nop
xor $27180, %rcx

// Faulty Load
mov $0xc9, %rdx
nop
add %rdi, %rdi
vmovaps (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 851}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
