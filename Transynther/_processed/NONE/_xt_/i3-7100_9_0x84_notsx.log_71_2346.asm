.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rdi
lea addresses_WC_ht+0xe4e5, %r8
clflush (%r8)
nop
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
cmp $15937, %r13
pop %rdi
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x7be5, %rbx
nop
nop
nop
nop
sub %r15, %r15
movl $0x51525354, (%rbx)
nop
sub $45720, %rsi

// Load
lea addresses_UC+0xd7e5, %rsi
nop
nop
nop
dec %rbp
movb (%rsi), %bl
nop
nop
xor $53649, %r10

// REPMOV
lea addresses_WT+0x18069, %rsi
lea addresses_UC+0x7165, %rdi
clflush (%rdi)
nop
nop
nop
sub %r10, %r10
mov $61, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $6083, %rcx

// Store
lea addresses_D+0x1d7e5, %r15
nop
nop
nop
cmp $27916, %rsi
movw $0x5152, (%r15)
nop
nop
nop
xor $11956, %rdi

// Store
lea addresses_normal+0x70c5, %rdi
add $7778, %r10
movb $0x51, (%rdi)
and $46603, %rdi

// Store
lea addresses_US+0x1fe5, %r15
clflush (%r15)
nop
nop
nop
nop
nop
add %r14, %r14
movw $0x5152, (%r15)
nop
nop
nop
nop
xor $10110, %rbx

// Faulty Load
lea addresses_D+0x1a7e5, %r10
nop
nop
nop
and $48707, %rbp
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'36': 71}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
