.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1772d, %rbx
nop
and %rdi, %rdi
mov (%rbx), %ebp
sub %r9, %r9
lea addresses_A_ht+0xd96e, %r10
nop
nop
xor %rsi, %rsi
movb (%r10), %cl
nop
nop
nop
nop
nop
cmp $22525, %rbx
lea addresses_WT_ht+0xbcbd, %rsi
lea addresses_WT_ht+0xd3d, %rdi
nop
nop
nop
nop
sub %r11, %r11
mov $127, %rcx
rep movsq
nop
nop
inc %r11
lea addresses_WT_ht+0x1031d, %rdi
cmp $3498, %rbx
movl $0x61626364, (%rdi)
nop
nop
nop
and $19066, %rbp
lea addresses_UC_ht+0xd465, %rbp
nop
nop
and $63333, %r10
movb $0x61, (%rbp)
nop
nop
inc %rsi
lea addresses_WT_ht+0x5b9d, %rsi
nop
nop
nop
nop
and $53856, %r9
mov (%rsi), %edi
nop
nop
nop
xor %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0x1253d, %rsi
nop
nop
sub $23661, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
add %r12, %r12

// Faulty Load
lea addresses_A+0x1d3d, %r8
clflush (%r8)
nop
nop
nop
nop
sub $27495, %rcx
mov (%r8), %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'1a': 12, '44': 25, '67': 13, '65': 511, '50': 2, 'e0': 1, '68': 4308, '80': 20, '02': 2, '49': 4460, '00': 12415, 'de': 59, '40': 1}
67 68 00 68 68 44 00 00 68 68 68 00 49 00 00 68 00 49 49 49 68 49 00 65 00 49 00 00 68 00 00 49 65 65 00 49 68 00 49 00 00 00 00 00 49 00 49 00 00 00 00 00 00 49 68 49 00 00 00 00 00 00 00 00 00 68 00 00 00 68 49 00 00 00 68 00 00 68 00 49 49 00 00 00 00 00 00 49 00 00 68 49 00 00 00 00 00 00 00 00 00 49 68 68 68 49 68 00 00 00 49 49 68 00 49 00 00 00 00 68 68 00 00 00 00 00 49 49 68 00 49 00 49 00 49 00 00 00 00 00 00 00 00 49 68 49 00 00 49 49 68 00 00 00 00 00 00 65 68 00 49 00 00 67 00 00 00 68 49 00 00 00 68 00 49 00 49 00 00 68 00 49 00 00 00 68 00 00 49 00 68 49 00 68 68 00 00 68 68 49 00 00 68 00 49 49 00 00 00 68 00 65 68 00 68 49 68 68 68 68 de 00 49 00 68 68 68 68 00 00 68 68 68 68 00 00 00 49 68 00 49 00 49 68 68 68 68 44 49 00 00 00 00 49 00 00 00 68 00 00 65 00 00 00 49 00 00 00 68 68 49 00 00 68 00 49 00 68 00 49 00 65 49 68 68 68 00 00 49 00 00 00 00 00 00 00 00 00 68 00 49 00 68 68 68 68 00 00 00 68 de 68 00 00 00 00 00 49 00 00 49 00 68 49 00 68 00 00 00 49 49 00 49 49 49 00 00 00 00 00 68 68 00 49 00 49 68 68 68 00 00 68 00 00 00 68 44 00 68 00 49 00 68 49 00 00 00 49 00 00 00 00 00 49 49 00 49 00 00 00 00 00 00 00 00 49 00 49 68 68 00 00 49 68 68 68 68 68 68 68 49 49 00 68 80 68 49 49 00 00 68 68 00 00 00 00 00 68 68 49 00 68 68 68 00 00 68 68 de 00 68 00 68 49 00 00 00 49 68 49 00 49 68 49 00 68 68 49 00 49 00 49 00 00 65 00 68 68 68 00 00 00 00 68 00 68 49 49 00 00 68 49 00 00 00 00 00 00 00 68 49 68 68 49 00 00 00 00 00 00 49 49 00 49 49 00 00 00 00 00 00 00 00 49 00 00 49 00 68 49 68 00 68 00 00 68 00 00 00 00 00 00 49 00 00 68 49 00 68 68 00 68 00 49 49 00 00 68 00 00 68 00 68 00 00 00 00 49 65 00 00 00 00 68 00 00 49 00 00 00 00 68 68 68 00 68 00 de 49 00 00 00 49 00 00 00 68 68 49 00 00 00 00 00 00 49 00 00 68 68 00 49 00 00 49 00 00 68 68 00 00 49 00 00 49 68 68 00 65 00 68 68 68 49 00 00 65 00 68 00 49 68 68 de 68 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 49 00 68 00 00 68 00 00 00 00 68 00 49 49 00 00 49 00 68 00 68 00 00 00 00 68 49 00 49 00 49 49 00 49 68 68 00 49 00 68 49 00 00 49 00 00 00 00 00 68 49 68 00 00 00 49 00 00 00 68 00 00 49 00 49 49 68 00 00 49 68 68 68 00 68 00 49 68 00 00 00 65 68 00 00 00 68 68 00 68 68 00 68 68 49 49 00 00 00 00 68 00 00 49 00 00 00 68 00 68 68 68 00 00 00 00 00 00 68 00 00 00 00 00 00 68 00 00 00 00 00 00 00 00 00 65 00 00 49 68 00 00 00 68 49 00 00 49 49 49 49 68 00 00 49 49 68 49 68 00 49 49 68 00 65 00 00 49 49 00 68 00 65 00 00 00 00 49 00 00 68 00 49 00 00 00 00 68 68 00 49 68 49 68 49 68 00 68 00 00 00 00 00 00 00 00 68 68 00 49 00 68 49 68 49 49 00 00 00 49 68 00 00 00 00 00 00 00 68 00 00 49 00 00 68 49 68 00 00 68 68 00 00 49 00 00 68 65 00 00 00 68 00 00 00 00 00 49 49 49 49 00 00 65 49 68 00 00 68 68 68 65 00 00 00 68 68 00 68 00 00 00 00 00 00 00 49 68 00 68 00 68 00 00 00 49 00 00 49 00 00 49 00 00 68 00 00 49 68 49 49 68 00 00 65 65 68 00 68 49 68 68 68 00 68 68 68 00 49 00 00 00 68 00 49 49 49 00 00 65 68 65 68 00 00 49 68 68 49 68 68 68 49 00 68 00 00 00 49
*/
