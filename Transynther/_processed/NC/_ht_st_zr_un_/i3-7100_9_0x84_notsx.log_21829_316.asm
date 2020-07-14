.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1e72e, %rsi
lea addresses_A_ht+0xe21a, %rdi
clflush (%rdi)
nop
nop
nop
sub %r13, %r13
mov $87, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r13
lea addresses_A_ht+0x1b26e, %rsi
lea addresses_WT_ht+0xf636, %rdi
nop
nop
nop
add %r14, %r14
mov $56, %rcx
rep movsq
cmp $11586, %r13
lea addresses_normal_ht+0x1ea86, %rbx
nop
nop
nop
inc %rdx
movb $0x61, (%rbx)
nop
nop
dec %rcx
lea addresses_UC_ht+0x1516e, %rdx
add %r14, %r14
movl $0x61626364, (%rdx)
nop
nop
cmp $24703, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rax
push %rcx
push %rdx

// Store
lea addresses_US+0x806e, %rdx
clflush (%rdx)
nop
nop
nop
and %r11, %r11
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
xor $20160, %r9

// Store
lea addresses_WT+0xf06e, %rax
nop
nop
nop
nop
dec %r10
movl $0x51525354, (%rax)
nop
and $23635, %rdx

// Store
lea addresses_normal+0xee4e, %r9
nop
nop
nop
dec %r10
mov $0x5152535455565758, %r15
movq %r15, (%r9)
cmp $44947, %r9

// Store
lea addresses_WC+0x696e, %rax
cmp $31349, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%rax)
nop
xor $34529, %rcx

// Faulty Load
mov $0x57fc8a000000096e, %rdx
nop
nop
sub %r9, %r9
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'44': 78, 'ab': 1, '45': 15005, '09': 1, '3d': 1, '60': 1, '42': 2, '43': 2, 'd6': 2, '69': 1, 'e9': 1, '89': 1, '00': 6731, 'a9': 1, 'c9': 1}
00 45 00 45 45 45 45 45 00 45 00 45 45 00 00 00 45 45 45 00 00 45 45 45 00 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 45 00 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 00 00 00 00 45 45 45 45 45 00 45 45 45 45 00 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 45 45 00 45 45 45 45 00 45 00 00 00 45 45 45 00 45 45 45 00 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 00 45 00 45 45 00 45 00 45 45 45 45 00 00 00 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 00 00 00 45 00 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 00 45 45 00 00 45 00 45 45 45 00 45 45 45 45 45 00 00 45 00 00 45 45 00 45 45 00 45 00 45 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 00 00 45 00 00 00 45 45 45 00 45 45 45 45 00 00 00 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 00 00 45 45 00 45 00 45 45 45 45 00 45 00 00 45 45 45 45 00 00 00 45 45 00 00 00 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 00 45 00 45 00 00 45 00 45 00 00 45 45 45 00 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 00 45 00 45 45 00 45 45 45 00 00 45 00 00 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 00 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 00 45 00 45 00 45 45 45 45 45 45 45 00 45 45 00 45 45 45 00 45 45 45 45 45 00 00 45 45 44 00 00 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 00 45 00 00 45 45 00 45 00 00 45 00 00 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 00 00 45 45 00 00 00 45 45 00 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 00 00 45 00 00 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 00 45 00 45 45 45 45 00 00 45 00 45 00 00 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 00 45 00 45 00 45 00 45 45 45 45 45 45 45 00 45 45 00 00 45 45 00 45 00 45 45 00 00 45 45 45 00 45 45 45 45 00 42 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 00 45 00 00 45 45 45 00 45 00 45 00 00 45 45 45 00 45 45 45 00 00 00 00 45 45 00 45 00 00 45 45 45 45 00 00 45 45 00 45 45 45 45 00 00 00 00 45 00 45 00 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 00 00 45 45 45 00 45 45 45 45 45 45 45 45 00 00 45 00 45 00 00 45 00 45 45 00 45 00 45 45 45 00 45 45 00 45 00 45 45 45 45 00 00 45 00 45 00 45 00 45 45 45 00 00 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 00 00 45 45 00 00 00 45 00 45 45 00 00 45 00 45 45 45 45 45 45 00 00 45 00 45 45 45 45 45 45 45 45 00 45 45 00 00 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 00 45 45 00 00 45 00 45 00 45 45 00 00 00 45 45 00 45 45 00 00 45 45 00 45 00 45
*/
