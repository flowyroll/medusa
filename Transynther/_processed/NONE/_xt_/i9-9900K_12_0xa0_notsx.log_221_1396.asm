.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x19743, %r13
nop
nop
nop
add %r15, %r15
movb $0x61, (%r13)
nop
nop
sub $25826, %r10
lea addresses_D_ht+0x1ed83, %rsi
lea addresses_UC_ht+0x7023, %rdi
nop
nop
nop
nop
sub $34696, %r14
mov $38, %rcx
rep movsb
nop
cmp %r15, %r15
lea addresses_D_ht+0x1a09e, %r15
nop
add $38845, %rsi
mov (%r15), %r14w
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x1c323, %rsi
nop
cmp %r10, %r10
movb (%rsi), %r15b
nop
nop
nop
sub $64176, %rbx
lea addresses_WC_ht+0x10963, %rsi
lea addresses_D_ht+0x1ebe3, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $17452, %rbx
mov $123, %rcx
rep movsb
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x8523, %r10
add %r15, %r15
movw $0x6162, (%r10)
nop
dec %rsi
lea addresses_WC_ht+0x1d1a4, %r14
nop
nop
nop
nop
xor $20606, %rsi
vmovups (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
nop
nop
nop
nop
nop
mfence
lea addresses_A_ht+0x14be3, %rsi
lea addresses_D_ht+0x27db, %rdi
nop
nop
and %r15, %r15
mov $82, %rcx
rep movsw
nop
nop
nop
add $14275, %r10
lea addresses_WC_ht+0x8443, %r15
nop
nop
nop
nop
nop
cmp $26475, %rsi
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x14af3, %rsi
lea addresses_PSE+0x1bbe3, %rdi
xor $35173, %r10
mov $28, %rcx
rep movsb
inc %r15

// Store
mov $0x65a5e100000001e3, %rdi
nop
nop
and %r10, %r10
movl $0x51525354, (%rdi)
nop
sub $45985, %r10

// Store
lea addresses_WC+0x7563, %r10
dec %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
cmp $58762, %rsi

// Faulty Load
lea addresses_D+0x1ebe3, %r10
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov (%r10), %eax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 3}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'36': 221}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
