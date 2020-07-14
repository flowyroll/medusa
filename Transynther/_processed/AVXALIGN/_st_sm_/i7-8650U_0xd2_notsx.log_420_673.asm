.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x15f15, %r12
add $30813, %rdx
movw $0x6162, (%r12)
nop
nop
nop
nop
inc %r8
lea addresses_A_ht+0x19c95, %r12
nop
nop
nop
nop
cmp $56820, %rdi
movb $0x61, (%r12)
nop
nop
inc %rdi
lea addresses_normal_ht+0x16e65, %rdi
nop
sub $4602, %r13
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm3
vpextrq $1, %xmm3, %r12
nop
inc %rdi
lea addresses_D_ht+0x14d95, %rsi
lea addresses_UC_ht+0xd862, %rdi
nop
nop
inc %r8
mov $62, %rcx
rep movsq
nop
inc %rsi
lea addresses_WT_ht+0x113bd, %rdx
nop
nop
nop
dec %r13
mov (%rdx), %r8w
nop
nop
and $36109, %rcx
lea addresses_normal_ht+0x1d2d5, %r9
add $11818, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0xada5, %rcx
nop
nop
nop
nop
and %rdx, %rdx
mov (%rcx), %r9w
nop
dec %rdx
lea addresses_WC_ht+0x1543d, %r10
xor $33444, %rcx
movl $0x61626364, (%r10)
nop
and %r13, %r13
lea addresses_D_ht+0x10b35, %rsi
lea addresses_normal_ht+0x1c5a5, %rdi
nop
nop
nop
nop
add %r10, %r10
mov $37, %rcx
rep movsq
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x1d283, %r9
nop
nop
nop
xor %rcx, %rcx
mov (%r9), %di
nop
nop
nop
dec %r9
lea addresses_WC_ht+0x2615, %r10
nop
nop
add $5497, %r8
mov (%r10), %di
nop
nop
nop
nop
nop
mfence
lea addresses_D_ht+0xd255, %rsi
nop
nop
nop
nop
nop
add $10750, %rdi
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm5
vpextrq $0, %xmm5, %r10
nop
xor $19538, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_D+0x12d15, %rbx
nop
nop
xor %r9, %r9
mov (%rbx), %r14w
nop
nop
dec %r9

// Store
lea addresses_PSE+0x3895, %rbx
and %rdi, %rdi
movb $0x51, (%rbx)
nop
xor %rbx, %rbx

// REPMOV
lea addresses_D+0x3215, %rsi
lea addresses_D+0x12fed, %rdi
nop
nop
nop
nop
and $38556, %r14
mov $121, %rcx
rep movsb
nop
nop
nop
nop
nop
lfence

// Load
mov $0x4d5, %rcx
nop
nop
nop
nop
nop
and %r9, %r9
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
sub %r9, %r9

// Store
lea addresses_D+0x3215, %r10
nop
nop
and %rsi, %rsi
movl $0x51525354, (%r10)
nop
nop
nop
and %r9, %r9

// Store
lea addresses_PSE+0x12015, %rcx
add %rbx, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rcx)
nop
sub $26619, %rsi

// Faulty Load
lea addresses_D+0x3215, %r14
nop
and %rdi, %rdi
movb (%r14), %bl
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'54': 420}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
