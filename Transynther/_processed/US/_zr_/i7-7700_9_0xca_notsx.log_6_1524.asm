.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1283a, %rsi
lea addresses_WT_ht+0xf55c, %rdi
nop
nop
and $56362, %rax
mov $123, %rcx
rep movsq
nop
nop
nop
nop
add %r13, %r13
lea addresses_normal_ht+0x1615c, %r11
nop
nop
add %r9, %r9
movl $0x61626364, (%r11)
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x1255c, %rsi
nop
nop
nop
and $3928, %rcx
mov (%rsi), %r13w
nop
nop
add $1923, %r13
lea addresses_WT_ht+0xbd5c, %r11
sub %r9, %r9
movups (%r11), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x1d7cc, %r11
cmp %r13, %r13
mov (%r11), %esi
nop
nop
nop
dec %r11
lea addresses_A_ht+0x515c, %r9
add %rcx, %rcx
movl $0x61626364, (%r9)
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x1dda, %rax
nop
nop
nop
nop
and %rdi, %rdi
movups (%rax), %xmm3
vpextrq $1, %xmm3, %r11
nop
add %rdi, %rdi
lea addresses_normal_ht+0xa5f0, %rsi
lea addresses_D_ht+0xbf40, %rdi
cmp $2430, %r9
mov $112, %rcx
rep movsq
nop
nop
and $48324, %r13
lea addresses_normal_ht+0x1195c, %rsi
lea addresses_A_ht+0x6a5c, %rdi
xor $30686, %r13
mov $9, %rcx
rep movsb
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x50cc, %rax
nop
nop
inc %rdi
mov (%rax), %r9d
nop
nop
add %rax, %rax
lea addresses_A_ht+0x1d15a, %rsi
nop
nop
nop
nop
nop
dec %rax
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
add $48010, %rax
lea addresses_normal_ht+0x3d5c, %rsi
clflush (%rsi)
cmp $9386, %rcx
movb (%rsi), %r9b
nop
nop
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Load
lea addresses_US+0xa95c, %r8
nop
nop
add $62299, %rdi
mov (%r8), %r15d
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_RW+0xb4b4, %rcx
nop
nop
nop
nop
add $64705, %rax
mov $0x5152535455565758, %r11
movq %r11, (%rcx)
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_PSE+0x1ad5c, %r15
nop
nop
nop
nop
nop
and $11060, %r11
movb $0x51, (%r15)
nop
add $52178, %rdi

// Load
lea addresses_normal+0x1b25c, %rdx
nop
nop
nop
nop
inc %rdi
mov (%rdx), %r15d
nop
nop
dec %rdi

// Store
lea addresses_normal+0x1b15c, %r11
nop
nop
nop
and $40512, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%r11)
nop
add %rcx, %rcx

// Store
lea addresses_UC+0xbbdc, %rdi
nop
nop
add %rdx, %rdx
movl $0x51525354, (%rdi)
nop
nop
nop
xor %rax, %rax

// Faulty Load
lea addresses_US+0xa95c, %r15
nop
nop
nop
sub %rax, %rax
mov (%r15), %dx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 6}
00 00 00 00 00 00
*/
