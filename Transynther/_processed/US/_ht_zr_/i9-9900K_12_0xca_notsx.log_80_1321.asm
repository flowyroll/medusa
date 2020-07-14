.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x931d, %rsi
lea addresses_normal_ht+0x1de77, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $24, %rcx
rep movsb
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0xae77, %rbx
xor $61499, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm2
and $0xffffffffffffffc0, %rbx
movaps %xmm2, (%rbx)
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0x1ae77, %rsi
lea addresses_A_ht+0xc477, %rdi
nop
nop
nop
nop
inc %rdx
mov $71, %rcx
rep movsb
nop
sub $11207, %rdi
lea addresses_WC_ht+0x1d6f7, %rdx
and $9882, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %rdx
movaps %xmm7, (%rdx)
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x13777, %rsi
lea addresses_normal_ht+0xfb37, %rdi
clflush (%rdi)
nop
add $6199, %rdx
mov $39, %rcx
rep movsl
nop
nop
sub $26365, %r14
lea addresses_UC_ht+0xd4f7, %r13
nop
nop
nop
add $57753, %r14
movw $0x6162, (%r13)
mfence
lea addresses_WC_ht+0x17e77, %rdx
inc %rbx
mov (%rdx), %si
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x1c713, %rcx
clflush (%rcx)
add %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
nop
nop
sub $4778, %rdi
lea addresses_WC_ht+0xba2f, %rsi
lea addresses_normal_ht+0xcf1b, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $69, %rcx
rep movsb
cmp %rsi, %rsi
lea addresses_WT_ht+0x15c77, %rsi
lea addresses_normal_ht+0x13c73, %rdi
clflush (%rsi)
clflush (%rdi)
nop
add $30087, %r14
mov $1, %rcx
rep movsq
nop
nop
add $4794, %rcx
lea addresses_UC_ht+0x73b7, %rsi
lea addresses_WT_ht+0xac77, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $23211, %r9
mov $51, %rcx
rep movsl
nop
nop
nop
nop
nop
add $14806, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x5eac, %r14
xor $25486, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movaps %xmm5, (%r14)
nop
nop
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_A+0x180b7, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %rdi, %rdi
movl $0x51525354, (%rsi)
nop
nop
nop
add $14056, %rbp

// Faulty Load
lea addresses_US+0x1fe77, %rbp
clflush (%rbp)
nop
inc %r8
vmovups (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'46': 5, '00': 75}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
