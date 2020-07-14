.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x262, %r15
nop
nop
nop
cmp %rbp, %rbp
movups (%r15), %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
nop
and $41484, %rcx
lea addresses_WT_ht+0x14a62, %rsi
nop
sub %rcx, %rcx
mov (%rsi), %r13w
and $50549, %rsi
lea addresses_UC_ht+0x7de2, %rsi
lea addresses_WT_ht+0x2362, %rdi
nop
nop
nop
nop
cmp $35768, %r9
mov $121, %rcx
rep movsw
nop
dec %rbp
lea addresses_A_ht+0xf262, %rsi
lea addresses_WT_ht+0x7fd2, %rdi
clflush (%rsi)
nop
nop
nop
add %r9, %r9
mov $24, %rcx
rep movsw
nop
nop
nop
nop
nop
and $56854, %r15
lea addresses_UC_ht+0x12e62, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
movb (%rdi), %cl
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x16082, %r15
nop
nop
nop
nop
dec %rsi
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
sub $51105, %rbp
lea addresses_UC_ht+0x2262, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $41248, %r15
movl $0x61626364, (%rdi)
nop
dec %rdi
lea addresses_A_ht+0xaa22, %r13
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r13), %r9d
nop
nop
nop
cmp $29133, %rbp
lea addresses_WC_ht+0x12de2, %r9
nop
sub %rbp, %rbp
mov (%r9), %r15d
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x133b2, %r13
sub $39045, %rsi
mov (%r13), %r15w
nop
nop
nop
and %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1a262, %rsi
lea addresses_A+0xb45a, %rdi
nop
sub %r9, %r9
mov $73, %rcx
rep movsb
dec %rbx

// Faulty Load
lea addresses_UC+0xd262, %rcx
nop
nop
xor $64753, %rbx
vmovups (%rcx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'45': 1, '00': 5944, '34': 13545}
00 00 34 34 00 00 34 34 34 00 34 34 34 34 34 34 34 34 34 00 34 34 00 34 34 00 34 34 00 34 00 34 00 00 34 34 34 34 00 34 34 00 34 34 00 34 34 34 34 34 34 34 34 00 34 34 00 34 00 34 34 00 34 34 34 00 00 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 00 34 00 34 34 34 34 00 00 34 00 34 34 00 00 00 00 34 34 00 34 34 34 34 34 34 00 34 34 00 34 34 34 34 34 34 34 34 00 34 00 00 34 34 34 34 00 34 34 00 00 34 34 34 34 00 34 00 34 34 34 00 34 34 34 34 00 00 00 34 00 34 34 34 00 34 00 34 34 34 00 34 34 34 00 00 34 34 34 34 34 34 34 34 00 34 00 34 00 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 00 34 34 34 34 00 34 34 34 00 34 00 34 34 34 00 34 00 34 00 34 34 00 34 00 34 34 34 34 34 34 34 00 00 34 34 34 34 00 34 34 34 34 00 34 34 34 34 00 00 00 34 34 00 34 34 34 34 34 34 34 00 34 00 00 00 34 34 34 34 00 34 00 00 34 00 00 34 34 00 34 34 34 00 00 34 34 34 34 34 34 34 34 34 34 00 00 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 00 34 34 34 34 34 00 34 34 34 00 34 00 34 34 00 34 34 00 00 34 00 34 00 34 34 34 00 34 00 34 34 34 00 34 34 34 00 34 00 34 34 34 34 34 34 34 34 34 00 34 34 00 34 00 00 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 00 34 34 00 34 34 00 34 34 34 34 34 00 34 34 00 34 34 00 34 34 34 34 00 34 34 34 00 34 34 00 00 00 34 00 34 34 00 34 00 00 34 34 34 34 34 34 34 34 00 34 34 00 34 34 34 34 34 34 00 00 34 34 34 00 34 00 34 34 00 34 00 00 34 34 34 00 34 00 00 34 34 34 34 34 34 34 34 00 34 34 34 00 00 00 34 34 00 34 34 34 34 34 34 00 34 34 34 00 34 34 00 00 00 34 34 34 34 34 34 00 34 34 34 00 00 34 34 34 00 34 34 00 00 34 34 00 00 34 00 00 34 34 34 34 34 34 34 34 34 34 34 00 34 34 00 34 34 00 34 34 34 00 34 00 00 34 34 00 34 34 34 34 34 34 00 34 34 00 34 00 34 34 00 34 00 34 00 00 34 34 34 00 34 34 34 34 34 00 34 34 00 00 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 00 34 34 34 00 00 00 34 34 34 00 34 00 00 34 34 00 00 00 34 00 00 00 34 00 00 00 34 00 34 00 34 00 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 34 34 00 34 34 34 34 00 34 34 34 34 34 34 00 00 34 34 34 34 34 34 34 00 00 34 34 34 00 00 00 34 34 34 34 00 34 00 00 34 34 34 00 34 00 34 34 00 34 34 34 34 34 00 00 34 00 34 34 34 34 00 00 34 34 34 34 00 34 34 34 00 34 00 00 00 34 00 34 00 00 34 00 34 00 00 34 34 00 00 00 00 34 00 34 34 00 00 34 34 34 34 34 34 00 34 34 00 34 34 00 34 00 00 34 34 34 34 34 34 34 34 34 00 00 00 00 00 34 34 34 34 34 34 34 00 00 34 00 34 34 00 34 00 34 00 34 34 34 34 00 34 34 34 00 34 34 34 00 34 34 00 34 00 34 34 00 34 00 34 00 34 34 34 00 34 34 00 00 34 34 34 00 00 00 34 00 34 34 34 34 34 34 00 34 34 00 34 34 00 34 00 00 34 34 34 34 00 34 34 34 00 34 34 34 34 00 34 34 00 34 34 34 34 00 00 34 34 00 00 34 00 00 34 34 00 34 34 00 00 34 34 34 34 34 34 00 34 34 34 34 34 34 34 34 00 34 00 34 34 34 00 34 34 00 00 34 34 34 34 34 34 00 00 34 34 34 00 34 34 34 34 34 00 34 00 34 34 34 34 34 34 34 00 34 34 34 00 34 34 34 34 34 34 34 34 34 00 34 34 00 34 00 34 34 34 34 00 34 34 34 34 34 00 00 00 34 34 00 34 00 00 34 00 34 34 34 34 34 34 00 34
*/
