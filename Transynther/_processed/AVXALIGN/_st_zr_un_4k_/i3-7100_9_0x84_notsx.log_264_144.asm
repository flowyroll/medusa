.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xe759, %r8
clflush (%r8)
nop
inc %r11
movw $0x6162, (%r8)
xor $33947, %r13
lea addresses_A_ht+0x4611, %rsi
lea addresses_WC_ht+0x16b59, %rdi
nop
nop
add %r12, %r12
mov $6, %rcx
rep movsl
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0xaf59, %rsi
lea addresses_WC_ht+0xfff9, %rdi
add %r11, %r11
mov $76, %rcx
rep movsq
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x1944d, %rsi
lea addresses_UC_ht+0xb159, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $113, %rcx
rep movsb
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x15f59, %r13
nop
nop
nop
nop
cmp $18650, %rdi
movl $0x61626364, (%r13)
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WC+0x14959, %rcx
nop
nop
add %r9, %r9
movl $0x51525354, (%rcx)
nop
nop
inc %r10

// Store
lea addresses_normal+0x2b59, %rbx
nop
nop
nop
nop
inc %r13
movl $0x51525354, (%rbx)
sub %rcx, %rcx

// Store
mov $0x4da9a00000000359, %r15
and $2225, %r9
movb $0x51, (%r15)
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_UC+0x1b359, %rdx
nop
nop
nop
and %r9, %r9
movw $0x5152, (%rdx)
nop
nop
nop
xor $26477, %r15

// Store
lea addresses_WT+0x4159, %rcx
nop
xor $4746, %r9
movb $0x51, (%rcx)
nop
and $32986, %r13

// Faulty Load
lea addresses_RW+0x19959, %r15
nop
nop
nop
nop
nop
add %r13, %r13
movaps (%r15), %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'54': 254, '00': 8, '0c': 1, '6a': 1}
54 54 54 54 54 54 54 54 6a 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 0c 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
