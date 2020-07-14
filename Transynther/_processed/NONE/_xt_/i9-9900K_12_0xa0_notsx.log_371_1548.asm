.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x14a83, %rdi
and %r9, %r9
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %r12
nop
nop
and $40474, %r12
lea addresses_UC_ht+0x18883, %r12
nop
nop
nop
nop
add $42350, %rcx
movl $0x61626364, (%r12)
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0xbc1b, %rsi
nop
and %r8, %r8
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
add %rsi, %rsi
lea addresses_UC_ht+0xe7fa, %rsi
lea addresses_UC_ht+0x13063, %rdi
clflush (%rdi)
nop
nop
xor $51361, %r14
mov $80, %rcx
rep movsl
nop
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0xad0c, %rsi
lea addresses_normal_ht+0x11a73, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %rdx, %rdx
mov $30, %rcx
rep movsq
nop
nop
nop
nop
xor $47060, %rdx
lea addresses_UC_ht+0x1b083, %rdi
nop
nop
nop
inc %r9
movb $0x61, (%rdi)
nop
sub $44061, %rdx
lea addresses_A_ht+0x1a6c3, %rsi
nop
nop
nop
add $24433, %rdi
mov (%rsi), %r9d
nop
nop
nop
nop
add $34877, %rdx
lea addresses_WT_ht+0x6f2f, %rdi
clflush (%rdi)
nop
xor $6739, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
and $50538, %rcx
lea addresses_UC_ht+0xd083, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
nop
cmp $48472, %r9
lea addresses_WC_ht+0x52b, %rsi
lea addresses_UC_ht+0x3683, %rdi
clflush (%rsi)
nop
xor %r9, %r9
mov $81, %rcx
rep movsw
nop
nop
nop
cmp $59457, %r12
lea addresses_WT_ht+0xaea3, %r8
nop
nop
nop
nop
nop
and $46967, %r12
mov (%r8), %rcx
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rdi

// Load
mov $0x4fa5680000000283, %r14
nop
nop
dec %rdi
movb (%r14), %r9b
nop
nop
nop
and $22565, %rbp

// Store
lea addresses_D+0x1f691, %r9
nop
nop
and %rdi, %rdi
movl $0x51525354, (%r9)
nop
nop
nop
sub $26780, %rbx

// Faulty Load
lea addresses_normal+0x13883, %r15
xor %r9, %r9
movb (%r15), %r14b
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'34': 371}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
