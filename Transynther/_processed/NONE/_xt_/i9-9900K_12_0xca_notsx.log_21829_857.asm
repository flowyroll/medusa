.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x13012, %rsi
lea addresses_A_ht+0x15012, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $34, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %r12
lea addresses_D_ht+0x17e52, %rsi
lea addresses_WT_ht+0x1cc86, %rdi
nop
nop
nop
and $33744, %r13
mov $120, %rcx
rep movsb
nop
inc %rcx
lea addresses_A_ht+0x13212, %rsi
lea addresses_A_ht+0x9812, %rdi
nop
nop
nop
nop
nop
add %r13, %r13
mov $57, %rcx
rep movsw
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0xced2, %r12
clflush (%r12)
nop
nop
nop
nop
and %r14, %r14
movl $0x61626364, (%r12)
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x12212, %r13
nop
nop
nop
add %rsi, %rsi
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
nop
cmp $45240, %rdi
lea addresses_WC_ht+0x4992, %rsi
lea addresses_normal_ht+0x6bf2, %rdi
nop
nop
and %rbx, %rbx
mov $107, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_A_ht+0x5412, %rsi
nop
nop
nop
nop
add $1688, %rbx
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0xfb50, %rsi
lea addresses_WC_ht+0x2392, %rdi
nop
nop
xor $49352, %r13
mov $21, %rcx
rep movsb
sub $14709, %rbx
lea addresses_UC_ht+0x1269a, %rsi
lea addresses_WC_ht+0x10812, %rdi
nop
xor $52225, %rbx
mov $127, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r9, %r9
lea addresses_A_ht+0x352, %r9
clflush (%r9)
nop
and $53193, %rcx
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
inc %r13
lea addresses_UC_ht+0x914f, %rsi
nop
nop
nop
xor $60524, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm2
vmovups %ymm2, (%rsi)
sub $23986, %rdi
lea addresses_WT_ht+0x812, %r14
nop
nop
nop
add %rcx, %rcx
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbx
nop
and %rbx, %rbx
lea addresses_D_ht+0x1102a, %rbx
add %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, (%rbx)
nop
nop
nop
nop
nop
sub $1128, %rcx
lea addresses_normal_ht+0xf612, %rsi
lea addresses_A_ht+0x202a, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $62584, %rbx
mov $86, %rcx
rep movsq
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x5412, %r15
nop
nop
nop
nop
nop
add $63655, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r15)
nop
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_WT+0x16490, %rbx
nop
sub %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
nop
nop
nop
xor $20822, %rbx

// Load
lea addresses_UC+0x1ad92, %r15
nop
nop
nop
and %rdi, %rdi
movb (%r15), %bl
nop
dec %r15

// Store
lea addresses_D+0x1e012, %rdi
clflush (%rdi)
nop
nop
nop
sub $30092, %r15
movw $0x5152, (%rdi)
nop
nop
nop
nop
and $9582, %r14

// Load
lea addresses_RW+0x14ec8, %r10
and $56777, %rbx
mov (%r10), %cx
nop
nop
nop
cmp $62627, %r14

// Faulty Load
lea addresses_D+0x2012, %r15
nop
nop
nop
nop
nop
xor $28177, %r10
mov (%r15), %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
