.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1363, %r8
xor $53445, %rsi
movups (%r8), %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
xor $13339, %r9
lea addresses_D_ht+0x5093, %rsi
lea addresses_WC_ht+0x1b093, %rdi
nop
nop
nop
nop
xor $41224, %r12
mov $39, %rcx
rep movsl
nop
add $51917, %r8
lea addresses_D_ht+0x14d57, %rsi
lea addresses_UC_ht+0x1c093, %rdi
nop
nop
nop
xor $20517, %r12
mov $82, %rcx
rep movsb
nop
nop
inc %rdi
lea addresses_UC_ht+0xb193, %rdi
and $2041, %r9
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
xor %r9, %r9
lea addresses_D_ht+0xe893, %r9
xor $54350, %rcx
movl $0x61626364, (%r9)
inc %r8
lea addresses_A_ht+0x1161f, %r9
nop
nop
nop
and %rdi, %rdi
movb (%r9), %cl
nop
nop
and $12860, %r12
lea addresses_WC_ht+0xee95, %rsi
lea addresses_UC_ht+0x1b073, %rdi
nop
nop
cmp $15673, %r14
mov $101, %rcx
rep movsw
nop
nop
nop
and $59151, %rdi
lea addresses_A_ht+0x11cf3, %r8
nop
nop
nop
nop
add $10650, %r14
movups (%r8), %xmm3
vpextrq $0, %xmm3, %r11
nop
nop
nop
nop
nop
dec %r11
lea addresses_WC_ht+0x9893, %r14
nop
nop
nop
sub %rdi, %rdi
vmovups (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
nop
dec %r14
lea addresses_D_ht+0xb893, %r14
nop
nop
nop
and %r8, %r8
movw $0x6162, (%r14)
sub $33426, %r9
lea addresses_A_ht+0x38eb, %rdi
nop
nop
nop
add %r11, %r11
movw $0x6162, (%rdi)
nop
nop
nop
lfence
lea addresses_WT_ht+0x14553, %rsi
lea addresses_UC_ht+0x3413, %rdi
nop
nop
inc %r8
mov $99, %rcx
rep movsl
nop
nop
and %r12, %r12
lea addresses_UC_ht+0xaa93, %r9
nop
nop
nop
sub $52329, %r12
mov (%r9), %r8
nop
nop
nop
nop
nop
add $15956, %r8
lea addresses_WT_ht+0x1d293, %rcx
nop
nop
nop
nop
nop
add $562, %r9
movl $0x61626364, (%rcx)
nop
nop
and $58537, %r12
lea addresses_UC_ht+0x1c93f, %rsi
nop
nop
nop
cmp $63500, %r8
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %r11
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x13ff3, %r8
nop
nop
nop
cmp %rdi, %rdi
movb $0x51, (%r8)
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_US+0xa093, %rsi
inc %r13
mov (%rsi), %r8
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 4, '47': 7, '46': 1}
00 47 47 47 47 00 47 00 00 46 47 47
*/
