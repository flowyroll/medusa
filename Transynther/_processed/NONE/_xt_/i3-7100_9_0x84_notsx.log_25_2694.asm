.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1e70b, %rsi
lea addresses_D_ht+0x12aab, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $99, %rcx
rep movsl
nop
nop
cmp $43336, %r15
lea addresses_A_ht+0x241b, %r13
nop
nop
sub $17940, %rax
movw $0x6162, (%r13)
nop
nop
nop
and $34067, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx

// Store
mov $0x7c633c0000000e53, %rcx
nop
nop
nop
nop
nop
inc %r8
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
dec %r8

// Store
lea addresses_A+0x821b, %rdx
nop
nop
nop
and $313, %rdi
movb $0x51, (%rdx)
nop
nop
nop
and $32407, %r8

// Store
lea addresses_A+0x132fb, %r8
nop
nop
add $18497, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%r8)
nop
sub $55454, %r13

// Faulty Load
lea addresses_WT+0x19a1b, %r9
clflush (%r9)
nop
nop
nop
nop
nop
xor $35651, %rdx
movups (%r9), %xmm4
vpextrq $0, %xmm4, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'39': 25}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
