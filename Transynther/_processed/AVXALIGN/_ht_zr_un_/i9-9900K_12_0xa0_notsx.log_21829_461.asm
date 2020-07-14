.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x5c93, %r10
nop
nop
nop
nop
xor %rsi, %rsi
movups (%r10), %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
nop
nop
inc %r9
lea addresses_UC_ht+0x12e8f, %r15
cmp $36497, %rdx
mov $0x6162636465666768, %r14
movq %r14, (%r15)
nop
nop
sub $17946, %rdx
lea addresses_normal_ht+0x3fcf, %r14
nop
nop
nop
nop
and %r15, %r15
mov (%r14), %r10d
nop
nop
nop
nop
nop
add $61093, %rdx
lea addresses_WT_ht+0xdc5b, %r15
clflush (%r15)
nop
nop
nop
nop
add $8036, %rdx
movw $0x6162, (%r15)
nop
nop
and %r14, %r14
lea addresses_WC_ht+0x15f1b, %r10
nop
sub %r15, %r15
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x574f, %rsi
lea addresses_normal_ht+0x5c8f, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
mov $38, %rcx
rep movsb
nop
nop
nop
nop
nop
add $33408, %rdx
lea addresses_A_ht+0x14a8f, %r15
nop
nop
nop
nop
sub %r14, %r14
movb (%r15), %r9b
nop
nop
nop
nop
nop
and $36436, %r14
lea addresses_UC_ht+0x9c4f, %r10
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%r10)
nop
cmp %r9, %r9
lea addresses_A_ht+0x1d84f, %rdi
nop
nop
xor $3445, %r14
mov $0x6162636465666768, %r10
movq %r10, (%rdi)
nop
nop
nop
nop
nop
xor $29640, %rcx
lea addresses_UC_ht+0x96e1, %rdx
nop
nop
nop
nop
nop
add $5168, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%rdx)
nop
nop
nop
dec %r15
lea addresses_WT_ht+0xe3f7, %rsi
lea addresses_WC_ht+0x1748f, %rdi
xor %r14, %r14
mov $50, %rcx
rep movsq
nop
nop
nop
nop
xor $21710, %r14
lea addresses_UC_ht+0x538f, %rsi
lea addresses_WC_ht+0xfcef, %rdi
nop
sub $46553, %r15
mov $127, %rcx
rep movsw
nop
nop
nop
nop
add $39986, %r14
lea addresses_D_ht+0x1978f, %r15
nop
nop
nop
nop
sub %r9, %r9
mov (%r15), %ecx
nop
nop
nop
xor $12461, %rcx
lea addresses_WC_ht+0x2d1f, %rsi
lea addresses_WT_ht+0x1484f, %rdi
nop
nop
nop
nop
add $25893, %r10
mov $37, %rcx
rep movsw
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x19d0f, %rsi
lea addresses_WC_ht+0xea8f, %rdi
nop
nop
nop
cmp $18640, %r14
mov $48, %rcx
rep movsl
nop
nop
nop
nop
and $37026, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rdi
push %rsi

// Store
mov $0xf8f, %rbp
nop
nop
nop
nop
nop
and %r10, %r10
movb $0x51, (%rbp)

// Exception!!!
nop
nop
nop
nop
mov (0), %r10
nop
nop
nop
nop
nop
xor $34273, %r15

// Load
lea addresses_D+0x1308f, %rsi
clflush (%rsi)
nop
nop
nop
cmp $57897, %rdi
movb (%rsi), %r12b
nop
nop
nop
nop
nop
xor $55126, %rsi

// Store
lea addresses_normal+0x1b94, %rdi
xor $13895, %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
xor $56453, %r12

// Faulty Load
lea addresses_PSE+0xc88f, %r12
nop
add $39998, %r15
movaps (%r12), %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': True, 'congruent': 1}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4, 'NT': True, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'08': 8, '44': 2375, '8b': 5, 'ff': 1, '46': 1336, '49': 5460, '00': 12644}
00 49 44 49 00 00 00 00 46 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 46 00 49 00 49 00 00 00 00 00 44 49 00 49 00 46 00 49 00 44 00 00 00 00 00 00 00 49 44 49 00 00 00 00 46 00 46 00 49 00 00 00 00 00 44 49 00 00 00 00 00 00 49 44 00 00 49 00 49 49 49 00 00 49 00 49 00 00 00 00 00 44 49 00 49 00 00 49 00 46 00 46 00 00 00 00 00 44 49 00 46 00 00 00 44 00 44 00 00 00 00 49 00 49 49 00 00 00 00 00 00 00 00 49 00 49 00 49 49 00 00 00 00 00 00 00 49 49 00 49 00 00 00 46 00 49 00 00 08 00 00 44 00 00 49 00 00 00 49 49 49 49 44 00 00 00 00 00 00 49 00 44 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 46 46 44 46 00 00 00 00 00 46 49 44 00 00 49 00 49 46 00 49 44 00 00 00 00 49 49 44 49 00 00 00 00 00 44 46 00 00 00 00 00 44 00 00 00 00 49 00 00 00 44 00 00 00 49 00 00 44 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 49 00 49 49 49 49 44 49 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 49 49 00 44 00 00 00 00 00 00 00 00 00 49 00 00 46 49 00 44 49 00 00 00 49 49 49 00 46 00 44 00 44 46 00 49 00 49 46 44 49 44 49 00 49 00 49 00 00 49 00 00 00 00 00 49 00 49 00 00 49 00 00 00 49 00 46 49 44 00 00 00 00 00 00 49 49 44 49 00 00 00 00 00 00 00 00 49 44 00 00 00 00 00 00 49 46 44 49 44 00 00 00 46 00 00 44 00 00 49 00 00 00 00 00 44 00 00 00 00 00 00 49 00 44 00 00 00 00 00 00 46 00 00 49 00 00 00 49 00 44 49 00 00 00 00 00 49 00 44 49 00 49 00 49 49 49 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 49 00 46 00 00 00 00 00 49 44 49 00 00 00 00 49 00 00 49 49 00 49 00 00 49 00 46 44 49 00 00 00 00 00 00 00 44 49 44 00 44 49 00 00 00 00 00 00 49 00 49 00 49 00 00 49 44 00 00 00 00 49 00 46 49 00 49 44 49 00 49 00 00 46 00 49 44 00 00 00 00 00 46 44 49 00 00 00 00 00 00 49 00 49 00 49 49 49 46 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 49 44 00 44 49 00 00 00 49 00 49 00 44 00 00 00 49 00 00 00 49 49 49 00 49 00 49 00 49 00 46 00 44 00 00 00 00 00 00 49 00 44 00 00 00 00 00 49 00 00 44 49 00 00 00 00 00 44 49 44 00 00 00 00 00 46 00 49 44 00 00 00 00 00 00 44 46 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 46 00 00 49 49 49 44 00 00 00 49 00 00 44 49 00 00 00 00 00 49 49 44 46 00 00 00 00 00 00 00 44 49 44 00 00 00 00 46 00 44 00 00 49 00 00 00 49 49 44 49 44 00 00 46 49 00 49 44 00 00 00 00 49 49 49 00 00 49 00 00 00 49 49 44 46 00 00 00 00 49 00 00 44 49 00 00 00 49 00 46 00 49 00 44 49 00 00 00 00 00 49 49 44 49 00 00 00 00 00 00 49 44 49 44 00 00 46 00 00 00 49 00 00 00 00 00 00 49 00 49 49 44 00 00 00 00 00 00 44 00 44 00 00 49 00 00 00 00 00 44 00 00 00 00 00 49 00 00 44 00 00 49 49 00 00 00 49 44 00 00 00 00 00 49 00 00 44 49 00 00 46 00 49 46 00 49 00 44 00 00 00 00 49 00 00 00 00 00 44 46 44 00 00 49 46 49 46 44 00 44 00 00 49 00 49 46 00 49 44 00 00 00 00 44 00 00 00 49 00 46 00 49 44 00 00 00 00 00 00 00 00 44 49 00 49 00 00 49 49 00 44 00 00 00 00 49 49 44 49 44 49 00 49 49 46 00 00 00 44 00 00 00 00 00 00 46 00 44 00 00 00 00 00 00 00 49 44 00 44 00 00 46 46 00 49 00 00 00 00 00 00 00 00 49 44 00 00 00 00 00 00 49 00 49 49
*/
