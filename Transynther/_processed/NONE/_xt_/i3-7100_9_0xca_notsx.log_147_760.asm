.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1c7fa, %rsi
lea addresses_WC_ht+0x13361, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $88, %rcx
rep movsq
nop
nop
inc %r8
lea addresses_D_ht+0x1b3ce, %r15
nop
nop
nop
nop
nop
xor $3301, %r13
mov (%r15), %r14
nop
nop
add $36237, %rdi
lea addresses_D_ht+0x1e8da, %rsi
lea addresses_A_ht+0x13a16, %rdi
nop
inc %r10
mov $115, %rcx
rep movsl
nop
nop
nop
xor $6892, %rsi
lea addresses_normal_ht+0x160fa, %rsi
nop
nop
nop
add $19040, %r15
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
nop
nop
nop
nop
and %r13, %r13
lea addresses_UC_ht+0x35c2, %r13
nop
dec %rsi
movups (%r13), %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
nop
and %r14, %r14
lea addresses_WC_ht+0x8dfa, %rsi
lea addresses_UC_ht+0x74fa, %rdi
inc %r14
mov $31, %rcx
rep movsq
cmp $5056, %rcx
lea addresses_A_ht+0x109fa, %r13
nop
nop
nop
nop
cmp %r8, %r8
movb (%r13), %r15b
nop
nop
nop
and $53448, %rcx
lea addresses_UC_ht+0x293c, %rsi
nop
nop
nop
nop
inc %rcx
mov (%rsi), %r8w
nop
nop
nop
nop
nop
add $31444, %rdi
lea addresses_UC_ht+0x1bdfa, %rsi
clflush (%rsi)
nop
add %r13, %r13
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
add $23415, %r15
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x195fa, %rsi
lea addresses_PSE+0x75fa, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $32378, %r8
mov $100, %rcx
rep movsb
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_A+0x1597a, %r8
inc %r12
movl $0x51525354, (%r8)
nop
nop
nop
add %r10, %r10

// Store
lea addresses_PSE+0x195fa, %r8
and $45782, %r10
movb $0x51, (%r8)
nop
nop
nop
sub $23346, %r15

// Load
lea addresses_RW+0xedfa, %r15
nop
nop
nop
nop
nop
inc %r8
movups (%r15), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
nop
add $57098, %rcx

// Store
mov $0x63580d0000000d0a, %rdi
sub $834, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rdi)
inc %r8

// Store
lea addresses_UC+0xc6fa, %rdi
nop
sub $36945, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rdi)
nop
cmp %r12, %r12

// Store
lea addresses_UC+0x1115a, %rsi
add %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, (%rsi)
nop
nop
nop
inc %rdi

// Faulty Load
lea addresses_PSE+0x195fa, %r12
nop
sub $51262, %rsi
movups (%r12), %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 147}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
