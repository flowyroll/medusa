.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x6d2, %rsi
lea addresses_UC_ht+0x11b22, %rdi
clflush (%rdi)
nop
nop
add %r8, %r8
mov $35, %rcx
rep movsb
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x19c62, %rsi
lea addresses_WC_ht+0x171a4, %rdi
nop
inc %rbx
mov $36, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x2802, %rdi
nop
xor $60734, %r14
movl $0x61626364, (%rdi)
nop
nop
nop
nop
add $22814, %rdi
lea addresses_WC_ht+0x1c8d2, %r12
nop
nop
nop
nop
cmp %rcx, %rcx
movw $0x6162, (%r12)
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x14bd2, %r12
nop
nop
nop
dec %rdi
mov (%r12), %rsi
nop
nop
nop
nop
nop
add $9339, %r14
lea addresses_WT_ht+0xe492, %rsi
lea addresses_A_ht+0x8ca2, %rdi
nop
nop
cmp %r9, %r9
mov $112, %rcx
rep movsl
nop
nop
cmp $2984, %rcx
lea addresses_UC_ht+0xf882, %rsi
nop
nop
cmp %r12, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rsi)
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0xca62, %rbx
nop
nop
nop
nop
nop
inc %r9
movb (%rbx), %r14b
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x8552, %r9
nop
inc %rsi
vmovups (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
sub %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x4b52, %r14
nop
nop
nop
add $62694, %r12
movw $0x5152, (%r14)
nop
nop
nop
nop
and $26015, %rsi

// Load
lea addresses_WT+0xebb2, %rsi
nop
nop
nop
nop
nop
xor $26926, %rdi
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
cmp $42130, %rsi

// Store
mov $0x672, %r10
clflush (%r10)
nop
nop
nop
nop
xor $13663, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
add $30938, %rsi

// Load
lea addresses_A+0xc652, %r10
nop
add $47723, %rdi
mov (%r10), %r12
sub $47159, %r12

// Store
lea addresses_US+0x17152, %r12
nop
nop
nop
xor $19866, %r13
mov $0x5152535455565758, %r14
movq %r14, (%r12)
sub $52716, %r14

// Store
lea addresses_A+0x11d1a, %rdi
nop
inc %r13
mov $0x5152535455565758, %r12
movq %r12, (%rdi)
nop
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_US+0x17152, %r10
nop
nop
nop
nop
cmp $42350, %rcx
movups (%r10), %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_US', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'49': 895, '00': 4403}
00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 49 00 49 49 00 49 00 49 00 00 49 49 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 49 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 49 49 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 00 49 00 00 00 00 00 49 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 49 00 49 00 00 49 00 00 00 00 00 00 49 00 49 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 49 49 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 49 00 00 49 00 49 00 49 49 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 49 00 00 00 49 49 00 49 00 00 49 00 49 00 00 00 00 00 00 49 00 00 49 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 49 00 49 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 49 49 00 00 49 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00
*/
