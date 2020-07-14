.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xef7d, %r9
nop
nop
nop
nop
sub %r14, %r14
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
nop
cmp $46669, %rax
lea addresses_UC_ht+0x286d, %rsi
lea addresses_D_ht+0x7e7d, %rdi
nop
nop
add %r15, %r15
mov $86, %rcx
rep movsl
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x12f7d, %rcx
nop
nop
nop
cmp %r9, %r9
mov (%rcx), %edi
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0xb671, %r14
cmp $35968, %rax
mov (%r14), %cx
nop
inc %r10
lea addresses_normal_ht+0x1ef7d, %rsi
lea addresses_normal_ht+0x6e01, %rdi
nop
nop
nop
and %r14, %r14
mov $89, %rcx
rep movsw
nop
nop
xor %rax, %rax
lea addresses_UC_ht+0xe1bd, %rdi
nop
nop
nop
nop
xor %r14, %r14
movb (%rdi), %r9b
nop
nop
nop
nop
sub $41977, %r9
lea addresses_normal_ht+0x16075, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0x327d, %rsi
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x174fd, %r14
and $1226, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm5
movups %xmm5, (%r14)
and $38393, %r15
lea addresses_normal_ht+0x1b155, %rsi
nop
nop
nop
nop
nop
inc %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rsi)
nop
nop
and $5460, %rcx
lea addresses_WC_ht+0x1a4f3, %rsi
nop
nop
nop
nop
nop
sub $43182, %rcx
movb $0x61, (%rsi)
sub $52318, %rdi
lea addresses_normal_ht+0x1e63d, %r9
nop
nop
nop
nop
add $16176, %rcx
movups (%r9), %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
nop
inc %rax
lea addresses_UC_ht+0x30c1, %rdi
nop
nop
and $21, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
nop
nop
xor $59832, %rdi
lea addresses_WC_ht+0x1ca3d, %rcx
dec %r14
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_WT_ht+0x131f, %r15
nop
nop
inc %rsi
mov (%r15), %r10
nop
nop
nop
nop
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rsi

// Store
lea addresses_D+0x77d, %r14
nop
and $18693, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
nop
inc %r14

// Store
lea addresses_A+0x10491, %rbp
nop
nop
nop
xor $23897, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
nop
sub $15530, %r13

// Store
lea addresses_D+0x1db7d, %rbp
nop
nop
nop
nop
cmp $32545, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
nop
nop
dec %rsi

// Store
lea addresses_RW+0x1acdd, %r10
clflush (%r10)
nop
nop
add %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, (%r10)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_normal+0x1977d, %rbp
nop
nop
nop
xor %r14, %r14
mov (%rbp), %eax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'34': 813}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
