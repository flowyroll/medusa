.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x72a7, %rsi
lea addresses_WC_ht+0x1b6bd, %rdi
clflush (%rdi)
nop
nop
and %r13, %r13
mov $61, %rcx
rep movsl
nop
nop
nop
cmp $42200, %r14
lea addresses_A_ht+0x12d27, %rax
and %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
add $13610, %rsi
lea addresses_D_ht+0x15f87, %r14
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
and $33690, %r14
lea addresses_normal_ht+0x32a7, %rax
clflush (%rax)
nop
nop
nop
nop
nop
xor %rbx, %rbx
movw $0x6162, (%rax)
nop
dec %r13
lea addresses_UC_ht+0x118a7, %r13
nop
nop
inc %rdi
movl $0x61626364, (%r13)
and %rsi, %rsi
lea addresses_normal_ht+0x18187, %rdi
nop
nop
nop
xor $23078, %rsi
movb (%rdi), %r14b
nop
nop
sub $43710, %r13
lea addresses_A_ht+0x20a7, %r14
nop
nop
nop
xor %rcx, %rcx
mov (%r14), %esi
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rbp
push %rbx
push %rcx

// Load
lea addresses_RW+0x167bb, %r10
nop
xor %r12, %r12
movb (%r10), %cl
nop
nop
add %r12, %r12

// Load
mov $0x769, %rbx
nop
nop
nop
nop
sub $38391, %r8
movaps (%rbx), %xmm2
vpextrq $0, %xmm2, %r12
nop
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_PSE+0x2a7, %r10
nop
nop
add $36691, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movaps %xmm0, (%r10)
nop
nop
sub %rcx, %rcx

// Store
lea addresses_A+0xa927, %r12
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r8
movq %r8, (%r12)
nop
nop
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_PSE+0x1aaa7, %rbx
nop
sub $62161, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rbx)
inc %r9

// Store
lea addresses_A+0x16e57, %r8
nop
nop
nop
sub $32224, %rbx
movb $0x51, (%r8)
cmp %r9, %r9

// Faulty Load
lea addresses_WT+0x3aa7, %r12
nop
nop
nop
nop
nop
add $1992, %r10
vmovups (%r12), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'08': 3979, '78': 9, '30': 12739, '04': 112, '01': 1, '00': 1846, '46': 3143}
00 04 04 04 00 30 30 30 30 30 30 30 30 30 00 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 00 30 30 30 30 30 00 30 30 30 30 30 00 30 30 30 30 00 30 30 30 00 30 00 00 30 00 30 30 30 00 30 00 30 30 30 30 30 30 30 30 30 00 30 30 30 30 30 00 30 30 00 30 30 00 30 30 30 30 00 30 30 30 30 00 00 30 30 30 00 30 30 00 30 00 30 00 30 30 00 00 30 30 00 30 00 30 30 30 00 00 30 30 30 30 00 30 30 30 30 00 30 30 30 30 00 30 30 30 00 30 00 30 00 00 30 30 30 30 30 30 30 30 30 30 00 30 00 30 30 00 30 30 30 30 30 30 30 30 00 30 30 30 30 30 30 30 00 00 30 30 30 00 30 30 30 30 30 30 30 30 30 00 00 30 30 30 30 30 00 00 30 30 30 00 00 30 30 00 00 00 30 30 30 30 30 00 30 30 30 30 30 30 00 30 30 30 30 30 30 00 00 30 30 30 30 00 30 30 30 30 30 30 30 30 30 30 30 30 00 30 30 00 30 30 30 30 00 30 00 00 30 30 30 30 30 30 30 30 00 30 30 30 30 00 30 30 00 30 30 30 30 30 30 30 30 00 30 00 30 00 30 00 30 00 00 30 30 30 30 00 30 00 30 30 30 30 30 00 30 00 30 30 30 00 00 30 30 30 30 30 00 30 30 00 00 30 30 30 30 30 00 30 30 30 00 00 30 30 30 30 30 30 30 30 30 04 04 04 04 04 00 30 30 00 00 00 30 00 00 00 00 30 30 30 30 00 30 30 30 00 30 30 00 30 30 30 30 30 30 00 30 00 30 30 30 30 30 30 30 30 00 30 30 30 00 00 30 30 30 00 30 00 30 04 00 00 30 00 30 30 30 30 30 00 00 30 30 30 30 30 30 00 00 30 30 30 30 00 00 30 30 30 30 30 30 30 30 30 30 00 30 30 30 30 30 30 00 30 30 00 30 30 30 00 30 30 30 30 30 00 00 30 30 00 30 00 04 00 00 30 00 30 30 00 30 30 30 30 30 00 00 30 30 30 30 30 00 30 30 30 30 30 30 30 30 30 00 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 00 30 30 30 30 30 30 30 00 30 30 30 30 30 30 30 30 30 00 30 00 04 04 04 04 00 30 00 00 30 30 30 00 30 00 30 30 30 30 30 30 30 30 30 30 00 30 00 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 00 30 30 30 30 30 00 30 30 00 00 00 30 30 30 30 00 30 30 30 30 30 00 00 30 00 30 00 30 30 00 30 00 30 30 00 30 30 30 30 30 30 30 30 30 30 30 30 00 00 00 00 30 30 30 30 00 00 30 30 30 30 30 00 30 00 00 30 30 30 30 30 00 30 30 30 30 30 30 30 00 30 00 00 30 30 00 30 30 30 30 30 30 00 00 00 30 30 00 00 30 30 30 30 30 30 30 30 00 30 30 00 00 30 30 30 30 00 00 00 30 30 30 00 30 30 30 30 30 00 30 00 30 30 30 30 30 00 30 30 30 00 30 00 30 30 30 30 30 30 00 00 30 00 00 30 00 30 00 00 00 00 30 00 00 00 30 30 30 30 30 30 30 30 30 00 00 00 30 30 00 30 00 30 30 00 00 30 30 30 30 00 30 30 00 30 00 04 04 04 04 00 30 30 00 30 30 30 00 30 30 00 00 30 00 30 00 30 30 30 30 30 30 30 30 30 30 30 30 30 00 30 00 00 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 00 30 30 30 30 30 30 00 30 00 00 30 30 30 30 30 30 30 00 00 00 30 30 30 30 30 30 00 00 30 30 00 00 30 30 30 00 30 30 00 30 30 30 30 30 30 30 30 00 30 30 00 30 30 30 30 30 00 30 00 30 30 30 30 30 30 30 30 30 30 30 30 00 00 30 30 00 30 00 00 30 30 00 30 30 30 30 30 30 30 00 00 00 30 00 00 30 00 30 30 30 30 30 30 30 30 30 00 30 30 30 30 30 30 30 30 30 00 30 30 30 00 30 30 00 00 30 30 30 00 30 00 30 00 30 00 00 00 00 30 30 30 00 30 30 00 30 30 30 30 00 00 30 30 30 30 30 30 30 30 30 30 00 00 00 00 30
*/
