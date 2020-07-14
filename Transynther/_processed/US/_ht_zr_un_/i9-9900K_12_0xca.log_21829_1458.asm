.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x15e65, %r15
nop
nop
xor $25842, %r10
movups (%r15), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x13ae5, %rsi
lea addresses_WC_ht+0xd5e5, %rdi
nop
cmp %r12, %r12
mov $87, %rcx
rep movsl
nop
nop
nop
nop
inc %r10
lea addresses_WT_ht+0x1d7e5, %rsi
clflush (%rsi)
nop
nop
nop
dec %r13
mov (%rsi), %rdi
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0xcb7d, %r15
nop
add %rcx, %rcx
mov (%r15), %rsi
nop
nop
and %r12, %r12
lea addresses_A_ht+0x1e2e5, %rsi
lea addresses_WT_ht+0x99e5, %rdi
clflush (%rsi)
nop
inc %rbx
mov $94, %rcx
rep movsl
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0xb1fd, %rsi
lea addresses_UC_ht+0x64e5, %rdi
add $26163, %r13
mov $75, %rcx
rep movsq
nop
nop
sub %r10, %r10
lea addresses_D_ht+0x2805, %rsi
lea addresses_A_ht+0x8325, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $84, %rcx
rep movsb
sub $4462, %r15
lea addresses_WT_ht+0x16d9b, %rsi
lea addresses_A_ht+0x10f91, %rdi
nop
nop
nop
add $26518, %r15
mov $118, %rcx
rep movsl
sub $20671, %rsi
lea addresses_WC_ht+0x1cdd5, %rbx
xor $27561, %rsi
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
nop
add %r15, %r15
lea addresses_A_ht+0x7631, %rcx
nop
cmp %rsi, %rsi
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x1ce71, %rsi
lea addresses_UC_ht+0xed85, %rdi
nop
dec %rbx
mov $119, %rcx
rep movsq
nop
nop
cmp $1546, %r12
lea addresses_normal_ht+0x8225, %rbx
nop
dec %r12
mov (%rbx), %r13
nop
nop
nop
nop
cmp $13895, %rsi
lea addresses_WT_ht+0xd0e5, %rsi
lea addresses_normal_ht+0x16ab, %rdi
cmp $36657, %r10
mov $49, %rcx
rep movsw
nop
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x19ee5, %r12
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
nop
xor $32092, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi

// Store
lea addresses_US+0x3ae5, %r12
nop
nop
add %r14, %r14
movl $0x51525354, (%r12)
nop
sub %r12, %r12

// Faulty Load
lea addresses_US+0x3ae5, %rax
nop
nop
cmp $45763, %rcx
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'45': 11230, '49': 72, '00': 8664, '46': 1862, '9e': 1}
45 00 45 45 45 00 00 45 46 00 45 00 45 00 00 45 00 45 45 45 45 46 46 00 45 00 45 45 00 45 00 00 45 00 45 00 45 45 00 45 45 00 45 00 00 45 45 00 00 46 45 45 45 45 45 45 00 45 45 46 45 00 45 00 45 00 45 45 45 45 46 45 45 45 00 45 00 45 46 00 45 45 00 45 00 00 00 45 45 46 45 45 45 45 45 00 45 45 00 45 00 46 45 00 45 00 45 00 45 45 45 00 46 00 46 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 00 45 00 45 00 46 45 46 00 45 00 45 00 45 45 45 45 45 45 45 45 45 00 45 46 00 45 00 45 45 45 45 45 45 45 45 00 00 45 00 45 45 00 45 45 00 45 00 45 45 45 46 00 45 45 45 45 49 00 00 45 45 45 00 45 45 00 00 45 45 45 00 45 00 00 45 00 00 00 46 45 00 45 00 00 00 45 00 00 00 00 00 00 46 00 45 00 45 45 00 00 45 00 00 45 45 00 00 46 45 00 45 45 00 45 45 00 45 46 00 45 45 45 45 00 45 00 00 00 00 00 45 00 00 00 00 45 00 45 45 00 45 45 46 00 46 00 45 00 46 45 45 45 45 00 45 00 45 00 00 00 45 00 45 45 45 00 46 45 45 00 46 45 00 00 45 45 45 45 00 45 45 00 00 00 45 45 00 45 45 00 45 00 45 46 45 00 45 00 00 45 00 00 00 45 00 00 45 00 45 00 00 45 00 45 00 45 00 45 00 45 00 45 45 45 45 00 45 00 00 00 45 00 00 45 45 00 46 45 45 45 00 45 45 00 45 45 45 46 00 45 45 45 45 00 45 00 00 45 00 45 45 45 45 45 45 00 45 00 45 00 45 45 46 45 00 00 45 45 46 45 00 45 45 00 46 45 00 00 46 45 45 00 45 00 00 45 00 45 00 45 00 00 45 45 46 46 45 46 45 00 00 00 00 45 00 00 45 45 00 45 00 00 00 45 45 00 45 00 45 45 00 00 45 00 00 45 00 00 45 00 45 45 45 45 00 00 00 00 00 00 45 45 45 46 00 00 45 45 00 00 00 00 45 00 45 00 45 45 00 45 45 00 00 45 45 45 00 46 00 00 45 00 45 45 00 45 00 45 00 45 00 45 46 00 45 00 00 00 00 45 00 45 45 00 45 45 45 00 45 45 45 00 45 45 00 00 00 45 00 00 45 45 45 45 00 45 45 45 49 00 45 00 45 45 00 45 00 00 00 45 00 00 45 00 00 00 00 45 45 00 45 00 00 00 00 00 45 00 45 45 00 00 46 45 45 45 45 45 45 45 45 45 45 45 46 45 45 00 45 00 46 00 45 45 46 45 45 45 45 45 45 00 45 00 45 45 00 46 45 00 45 45 45 00 46 00 45 45 45 00 00 00 45 46 46 45 00 00 46 45 00 45 45 00 45 45 45 45 00 45 00 00 00 00 00 00 00 46 45 45 00 00 00 45 45 00 00 45 45 45 00 00 00 00 45 45 45 45 45 45 00 45 00 45 45 00 45 45 46 00 45 45 00 00 00 45 00 00 45 45 45 00 00 45 46 46 00 46 00 45 45 00 45 00 45 45 45 45 45 45 00 00 45 00 45 00 00 00 45 45 45 46 45 45 46 45 45 45 45 45 00 45 45 00 45 00 45 45 00 00 45 00 00 45 45 00 00 00 45 45 45 00 00 46 00 45 45 00 45 45 45 00 45 00 46 45 46 45 45 45 45 45 45 45 00 45 45 45 45 00 45 00 45 00 45 00 45 45 00 46 46 45 45 45 45 00 45 00 46 45 46 45 45 00 45 45 45 46 00 45 45 45 45 00 45 00 45 45 45 00 45 45 00 00 00 45 45 45 45 46 45 00 45 45 45 00 00 00 00 45 00 00 45 00 45 00 45 45 45 00 00 45 00 45 00 00 00 46 00 46 00 45 00 46 00 45 00 45 00 00 00 45 45 00 46 45 45 00 00 00 00 45 00 45 46 46 00 45 45 45 46 00 46 00 45 00 45 45 00 45 45 45 45 45 00 45 00 46 45 00 00 00 46 45 00 45 45 45 45 45 00 45 45 46 00 45 46 45 45 00 45 00 46 45 45 45 00 45 00 45 00 45 00 49 46 46 00 45 45 45 45 45 45 45 45 45 45 00 00 00 45 00 00 00 45 45 45 45 45 00 00 45 00
*/
