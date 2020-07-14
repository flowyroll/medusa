.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x2e59, %rdi
clflush (%rdi)
and $23658, %r14
movw $0x6162, (%rdi)
nop
nop
nop
cmp $3167, %rsi
lea addresses_A_ht+0xc5c5, %rsi
lea addresses_D_ht+0x1edf9, %rdi
nop
xor $18658, %r12
mov $8, %rcx
rep movsw
nop
nop
and $2748, %rdi
lea addresses_D_ht+0x1daa3, %rsi
lea addresses_WT_ht+0x7529, %rdi
nop
nop
sub %rdx, %rdx
mov $105, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x1acf9, %rsi
nop
nop
nop
nop
nop
sub $11554, %rdx
mov $0x6162636465666768, %r15
movq %r15, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x1e9cb, %r15
nop
nop
nop
cmp %rdx, %rdx
mov (%r15), %r12d
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x173f9, %rsi
dec %rdi
mov (%rsi), %r14
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0xe129, %rcx
nop
nop
nop
nop
cmp $36646, %r15
mov (%rcx), %edx
nop
nop
nop
nop
inc %r14
lea addresses_WT_ht+0x1c73d, %rsi
lea addresses_D_ht+0xf219, %rdi
nop
dec %r15
mov $95, %rcx
rep movsw
nop
nop
nop
nop
add $11763, %r12
lea addresses_UC_ht+0x1bb1d, %rsi
nop
nop
and $16719, %rdi
movb $0x61, (%rsi)
nop
nop
sub $18915, %r12
lea addresses_D_ht+0xf6f9, %rsi
lea addresses_WT_ht+0x16489, %rdi
cmp $63103, %r15
mov $21, %rcx
rep movsw
nop
add %r12, %r12
lea addresses_normal_ht+0x1541, %r12
nop
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%r12)
nop
nop
dec %rcx
lea addresses_normal_ht+0x1eba9, %rdx
add %r14, %r14
mov (%rdx), %r15
nop
add %r12, %r12
lea addresses_A_ht+0xfd29, %r14
nop
dec %r12
movb (%r14), %r15b
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x10531, %rsi
lea addresses_UC_ht+0x1ad21, %rdi
nop
nop
and %r12, %r12
mov $11, %rcx
rep movsb
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rbp
push %rcx

// Store
lea addresses_normal+0x4779, %r12
cmp %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r12)
nop
nop
sub %rbp, %rbp

// Faulty Load
lea addresses_RW+0xa5f9, %rbp
nop
nop
inc %rax
movaps (%rbp), %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %r13
and $0xff, %r10
shlq $12, %r10
mov (%r13,%r10,1), %r10
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'49': 2, '46': 3182, '45': 451, '00': 7}
49 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 45 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 45 46 46 46 46 46 46 46 46 46 46 45 45 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 45 45 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 45 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 45 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 45 46 45 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 45 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 45 46 46 45 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 45 46 46 46 46 45 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 45 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 45 46 46 46 46 46 46 46 45 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 00 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 45 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 45 46 45 46 46 46 45 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 45 45 46 45 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 46 45 46 46 45 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46
*/
