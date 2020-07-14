.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x18d19, %r10
nop
dec %r15
vmovups (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
nop
add $4926, %r10
lea addresses_WC_ht+0x4319, %r15
nop
and %r10, %r10
movups (%r15), %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
xor $31512, %rbp
lea addresses_A_ht+0x11e19, %rcx
nop
nop
nop
and %rax, %rax
movw $0x6162, (%rcx)
nop
nop
nop
nop
add $58689, %rbx
lea addresses_WC_ht+0x1e219, %rcx
nop
nop
add $55747, %r15
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
add $41142, %rax
lea addresses_UC_ht+0x1a819, %rbp
clflush (%rbp)
nop
nop
nop
cmp %r15, %r15
movl $0x61626364, (%rbp)
inc %r15
lea addresses_normal_ht+0x7219, %rdx
nop
nop
nop
dec %rbp
mov (%rdx), %eax
nop
nop
cmp %rax, %rax
lea addresses_WT_ht+0xe419, %rsi
lea addresses_D_ht+0x1c151, %rdi
clflush (%rdi)
nop
nop
nop
nop
mfence
mov $41, %rcx
rep movsb
nop
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0xf219, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
and %rcx, %rcx
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
and $40012, %r15
lea addresses_WC_ht+0x4a19, %rsi
lea addresses_normal_ht+0x19219, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $24, %rcx
rep movsw
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x1b899, %rdi
nop
inc %rcx
movw $0x6162, (%rdi)
and $3810, %r10
lea addresses_D_ht+0x1ba19, %rax
nop
nop
nop
nop
xor $51962, %r10
mov (%rax), %rsi
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_D_ht+0x8799, %rcx
nop
nop
nop
nop
cmp $47117, %rbx
movb (%rcx), %dl
nop
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x1da19, %rsi
lea addresses_PSE+0x2c19, %rdi
nop
xor %rdx, %rdx
mov $3, %rcx
rep movsq
nop
nop
sub $12519, %r9

// REPMOV
lea addresses_D+0x1619, %rsi
lea addresses_A+0x1da19, %rdi
nop
nop
nop
nop
nop
xor $52102, %rdx
mov $23, %rcx
rep movsb
nop
nop
nop
inc %r12

// Store
lea addresses_WC+0x16c19, %rcx
nop
nop
add %rax, %rax
movb $0x51, (%rcx)
nop
nop
cmp $14387, %rax

// Load
lea addresses_D+0x19a19, %rcx
clflush (%rcx)
nop
nop
nop
nop
dec %r12
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
nop
dec %rsi

// Store
lea addresses_PSE+0xdb19, %rdx
nop
cmp $28733, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
nop
sub %r12, %r12

// REPMOV
lea addresses_WT+0x1c219, %rsi
lea addresses_WT+0x5219, %rdi
clflush (%rdi)
nop
nop
nop
xor %rbp, %rbp
mov $12, %rcx
rep movsl
nop
nop
nop
xor $10995, %rsi

// Store
lea addresses_UC+0x3a79, %r9
and %rcx, %rcx
movb $0x51, (%r9)
nop
nop
nop
nop
xor $15045, %r12

// Store
lea addresses_WC+0x16615, %rdi
nop
sub $12285, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%rdi)
sub %rdi, %rdi

// Store
lea addresses_D+0x1e659, %rbp
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rbp)
sub $19592, %r12

// Faulty Load
lea addresses_A+0x1da19, %rdi
nop
nop
nop
nop
nop
xor $40950, %r12
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
