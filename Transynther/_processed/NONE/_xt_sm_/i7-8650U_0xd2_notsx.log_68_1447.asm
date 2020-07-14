.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x4ee3, %rsi
lea addresses_WC_ht+0x8373, %rdi
sub $49124, %r8
mov $114, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0xd573, %r10
nop
nop
nop
nop
nop
and %rsi, %rsi
movb $0x61, (%r10)
nop
cmp $61815, %r8
lea addresses_A_ht+0xdb73, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x3ff3, %r8
dec %rdi
movb $0x61, (%r8)
nop
nop
cmp $40057, %rdi
lea addresses_normal_ht+0xfb73, %rbp
nop
nop
xor %rsi, %rsi
movb (%rbp), %bl
nop
nop
nop
and $47555, %rdi
lea addresses_WT_ht+0x145c3, %rdi
nop
add $25194, %r8
mov (%rdi), %bx
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x103b3, %r10
nop
nop
and %rbp, %rbp
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
sub $17650, %r8
lea addresses_UC_ht+0xf073, %rbx
nop
and $29890, %r10
mov (%rbx), %di
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x9b3, %rsi
nop
cmp %r10, %r10
mov (%rsi), %cx
nop
cmp %r8, %r8
lea addresses_A_ht+0x6573, %r10
nop
nop
nop
sub %rdi, %rdi
mov (%r10), %si
nop
nop
nop
xor $26246, %rsi
lea addresses_WC_ht+0x4373, %rsi
lea addresses_normal_ht+0xe6b, %rdi
nop
nop
nop
dec %rbp
mov $19, %rcx
rep movsl
cmp $18672, %r10
lea addresses_A_ht+0x10e73, %rsi
lea addresses_WT_ht+0x749f, %rdi
nop
nop
nop
nop
nop
xor $50552, %r13
mov $47, %rcx
rep movsb
nop
nop
nop
nop
and $8611, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x177ce, %rbx
nop
nop
nop
add $32378, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rbx)
nop
and %r14, %r14

// Store
lea addresses_D+0xdbab, %r14
sub %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r14)
add %rsi, %rsi

// Store
lea addresses_UC+0x973, %r13
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
nop
and $9023, %r9

// Load
lea addresses_D+0x834d, %r9
clflush (%r9)
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb (%r9), %r13b
nop
nop
nop
nop
nop
cmp $10002, %rsi

// REPMOV
mov $0x2be7560000000b73, %rsi
lea addresses_D+0x385f, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $2, %rcx
rep movsq
nop
cmp %r14, %r14

// Store
lea addresses_PSE+0x2373, %r9
clflush (%r9)
nop
nop
nop
nop
cmp $51036, %rbp
movl $0x51525354, (%r9)
nop
nop
and $2056, %rbp

// Faulty Load
lea addresses_PSE+0x2373, %rdx
nop
sub $62645, %rdi
mov (%rdx), %bx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_NC', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'54': 68}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
