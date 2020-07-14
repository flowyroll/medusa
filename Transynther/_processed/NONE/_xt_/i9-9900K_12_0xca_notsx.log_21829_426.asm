.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x14909, %r15
nop
nop
dec %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r15)
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x97fd, %r12
nop
nop
nop
mfence
movw $0x6162, (%r12)
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x12b01, %rdx
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x14a01, %r12
and $24939, %rsi
movb $0x61, (%r12)
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0xd137, %rdx
dec %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%rdx)
nop
and $57586, %rdx
lea addresses_WC_ht+0xfb01, %rbp
nop
and %rax, %rax
movb $0x61, (%rbp)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x19d61, %rsi
lea addresses_WT_ht+0x16d01, %rdi
nop
nop
nop
dec %r15
mov $36, %rcx
rep movsw
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x12851, %rdx
nop
nop
nop
nop
cmp $23586, %rdi
mov (%rdx), %esi
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x171, %rsi
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rsi)
xor $32115, %rdi
lea addresses_normal_ht+0x8101, %rcx
nop
nop
nop
nop
lfence
mov (%rcx), %ebp
nop
nop
nop
nop
nop
add $63828, %rsi
lea addresses_A_ht+0xc701, %rdi
nop
nop
nop
xor %r12, %r12
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x14ef5, %rsi
lea addresses_UC_ht+0x1d511, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $44, %rcx
rep movsb
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x161b1, %rsi
lea addresses_WT_ht+0x7201, %rdi
and $59100, %rdx
mov $5, %rcx
rep movsw
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x139e5, %r10
nop
nop
nop
nop
nop
cmp $48486, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
nop
nop
nop
nop
cmp $48111, %rdx

// Store
lea addresses_WC+0x1d081, %r10
nop
nop
nop
nop
inc %r9
movb $0x51, (%r10)
nop
nop
add %r10, %r10

// Store
lea addresses_normal+0x15201, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_PSE+0xaf01, %rdx
nop
nop
nop
nop
nop
cmp $53832, %rsi
movw $0x5152, (%rdx)
nop
nop
cmp $22301, %r9

// Store
lea addresses_normal+0x17581, %rdx
clflush (%rdx)
nop
nop
nop
nop
cmp $27, %rsi
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
xor $31848, %rdi

// REPMOV
lea addresses_US+0x17efd, %rsi
lea addresses_normal+0xb3dd, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $47, %rcx
rep movsw
nop
and %r14, %r14

// Store
mov $0x377536000000069e, %r10
nop
nop
nop
nop
cmp $20945, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%r10)
nop
nop
and $62316, %r8

// Store
lea addresses_D+0x1cc29, %r14
clflush (%r14)
nop
xor $54821, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, (%r14)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_normal+0xb501, %r8
nop
nop
nop
nop
dec %rcx
vmovups (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_US'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
