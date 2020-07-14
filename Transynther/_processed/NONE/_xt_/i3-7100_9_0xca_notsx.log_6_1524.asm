.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdx
lea addresses_WC_ht+0x1ccc2, %r8
clflush (%r8)
nop
nop
inc %r14
movl $0x61626364, (%r8)
nop
nop
cmp $4196, %r9
lea addresses_WT_ht+0x4682, %rdx
nop
nop
nop
add $61102, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rdx)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x5182, %r9
nop
nop
nop
sub $37757, %r14
mov (%r9), %ecx
cmp %r9, %r9
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x13182, %rsi
lea addresses_UC+0x66a6, %rdi
nop
and %r13, %r13
mov $113, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rdi, %rdi

// Store
mov $0x5d36c50000000c1b, %rdx
nop
nop
nop
nop
nop
cmp %r8, %r8
movb $0x51, (%rdx)
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_PSE+0x1e982, %rdi
clflush (%rdi)
nop
nop
nop
cmp $39807, %rbp
mov (%rdi), %ecx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 6}
33 33 33 33 33 33
*/
