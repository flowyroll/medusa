.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xb2a1, %rsi
lea addresses_WT_ht+0x1a7dd, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r14, %r14
mov $66, %rcx
rep movsl
nop
nop
dec %rsi
lea addresses_normal_ht+0xe591, %rbp
nop
nop
sub $62456, %r15
and $0xffffffffffffffc0, %rbp
vmovntdqa (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
nop
inc %rsi
lea addresses_WC_ht+0x5c71, %rdx
nop
nop
xor $12059, %rcx
movw $0x6162, (%rdx)
nop
nop
nop
nop
xor $22471, %rdi
lea addresses_WC_ht+0x181c1, %rsi
lea addresses_normal_ht+0x16c01, %rdi
nop
add %r12, %r12
mov $93, %rcx
rep movsw
nop
nop
nop
add $24690, %rsi
lea addresses_A_ht+0x10001, %rsi
cmp $34197, %rdx
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0xb3fd, %r15
xor $49006, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r15)
dec %rcx
lea addresses_normal_ht+0xde71, %rbp
nop
nop
and $5140, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
add $53182, %r15
lea addresses_WC_ht+0x17201, %rsi
lea addresses_WC_ht+0x9381, %rdi
sub %rbp, %rbp
mov $15, %rcx
rep movsq
nop
cmp $30933, %rcx
lea addresses_D_ht+0x5681, %rsi
lea addresses_normal_ht+0x6747, %rdi
nop
nop
nop
inc %rdx
mov $59, %rcx
rep movsq
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0xb201, %rsi
lea addresses_A_ht+0x19689, %rdi
clflush (%rsi)
clflush (%rdi)
nop
sub $60176, %r14
mov $41, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x9a01, %rbp
nop
nop
xor $62774, %rsi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
cmp $32055, %r12
lea addresses_normal_ht+0xea3e, %rsi
nop
nop
nop
and $14180, %r14
mov (%rsi), %dx
nop
nop
nop
nop
cmp $34484, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx

// Store
lea addresses_normal+0x8c11, %rcx
nop
nop
nop
dec %rbx
movb $0x51, (%rcx)
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_UC+0x12111, %r12
nop
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
nop
nop
inc %r14

// Store
lea addresses_WC+0x1bf01, %r14
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r14)
nop
nop
nop
xor $8524, %rcx

// Store
lea addresses_RW+0x6883, %r13
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
nop
nop
nop
xor %r14, %r14

// Faulty Load
lea addresses_A+0xca01, %r9
clflush (%r9)
xor %r14, %r14
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'00': 1464}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
