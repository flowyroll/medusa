.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x86f3, %rsi
lea addresses_WC_ht+0x4bb3, %rdi
nop
and %r14, %r14
mov $2, %rcx
rep movsq
nop
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0xa473, %r9
nop
nop
xor %r10, %r10
movups (%r9), %xmm1
vpextrq $1, %xmm1, %r14
nop
cmp $59199, %r10
lea addresses_A_ht+0xa33, %rsi
lea addresses_UC_ht+0xe6b3, %rdi
nop
sub %rdx, %rdx
mov $75, %rcx
rep movsb
cmp $17873, %rcx
lea addresses_WC_ht+0xb6f3, %r12
nop
cmp $63954, %r9
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
add $37118, %rdx
lea addresses_D_ht+0x955e, %rsi
lea addresses_UC_ht+0x14913, %rdi
nop
xor %r12, %r12
mov $92, %rcx
rep movsl
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x1deb3, %rdx
nop
nop
cmp $1862, %r9
mov $0x6162636465666768, %r10
movq %r10, %xmm3
and $0xffffffffffffffc0, %rdx
movntdq %xmm3, (%rdx)
add %r9, %r9
lea addresses_WT_ht+0x1e473, %rsi
lea addresses_UC_ht+0xdd53, %rdi
clflush (%rsi)
xor %r10, %r10
mov $61, %rcx
rep movsw
nop
nop
nop
sub %r9, %r9
lea addresses_WC_ht+0x18473, %rsi
lea addresses_D_ht+0x12c73, %rdi
clflush (%rsi)
nop
nop
nop
inc %r9
mov $96, %rcx
rep movsb
xor %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WC+0x11b73, %rsi
lea addresses_PSE+0x1eefb, %rdi
nop
nop
nop
nop
sub $29422, %r13
mov $62, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_WT+0x58c3, %rbx
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x5152, (%rbx)
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_WC+0xe673, %rcx
nop
nop
and $21393, %rdi
movb $0x51, (%rcx)

// Exception!!!
mov (0), %rsi
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_US+0x80b3, %r10
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r10)
and %rsi, %rsi

// Store
lea addresses_WC+0x195c3, %rsi
nop
add $7433, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
xor $27898, %rcx

// Load
lea addresses_US+0x1449f, %r10
add $40248, %r13
mov (%r10), %ebx
nop
nop
add $43825, %rbx

// Store
lea addresses_PSE+0x17cc7, %r10
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
nop
nop
nop
nop
cmp $49541, %rdx

// Store
lea addresses_RW+0x8bb5, %rdx
nop
nop
nop
nop
nop
add $20669, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovntdq %ymm6, (%rdx)
nop
nop
nop
sub $10302, %rbx

// Store
lea addresses_A+0x10dd7, %rdi
nop
add $4879, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%rdi)

// Exception!!!
nop
nop
nop
mov (0), %rdi
nop
dec %rdi

// Load
lea addresses_normal+0x1113, %rdx
inc %r13
vmovups (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_A+0xc873, %r10
nop
nop
nop
nop
sub $47694, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%r10)
nop
nop
nop
nop
nop
cmp $56754, %r10

// Faulty Load
lea addresses_normal+0x2073, %rdi
and %rdx, %rdx
mov (%rdi), %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
