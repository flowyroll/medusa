.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18758, %r15
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r15)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x10938, %rsi
lea addresses_WC_ht+0x8d90, %rdi
nop
nop
nop
mfence
mov $101, %rcx
rep movsb
nop
nop
inc %rbx
lea addresses_WT_ht+0x9158, %rsi
lea addresses_D_ht+0x1d158, %rdi
nop
nop
dec %r10
mov $82, %rcx
rep movsb
nop
nop
nop
nop
cmp $37408, %rdi
lea addresses_A_ht+0xf0e8, %rsi
lea addresses_normal_ht+0x10c28, %rdi
nop
and %r14, %r14
mov $39, %rcx
rep movsq
nop
nop
add $48752, %rax
lea addresses_UC_ht+0x729a, %rdi
nop
nop
nop
nop
cmp %r10, %r10
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
add $21359, %rcx
lea addresses_UC_ht+0x1d75b, %r14
and $53968, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x1dcd0, %rsi
lea addresses_D_ht+0xbff8, %rdi
nop
nop
nop
nop
nop
xor $43816, %rax
mov $108, %rcx
rep movsq
nop
nop
inc %r10
lea addresses_D_ht+0xb4b0, %rsi
lea addresses_D_ht+0xa58, %rdi
nop
nop
sub $63633, %r10
mov $101, %rcx
rep movsq
nop
nop
nop
xor $21946, %rax
lea addresses_UC_ht+0xb058, %r10
nop
nop
add %rdi, %rdi
and $0xffffffffffffffc0, %r10
vmovntdqa (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
nop
nop
xor $51886, %r14
lea addresses_UC_ht+0x1b9a8, %rsi
nop
nop
nop
nop
nop
add %rdi, %rdi
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
xor %r14, %r14
lea addresses_D_ht+0xe4f8, %rsi
lea addresses_WT_ht+0x9758, %rdi
nop
nop
nop
nop
cmp $45005, %r15
mov $121, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x10bb8, %rsi
nop
nop
add $59574, %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rsi)
nop
nop
sub $9444, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WT+0xaa72, %rsi
nop
xor %r9, %r9
movb (%rsi), %r11b
nop
nop
add $30780, %r11

// REPMOV
lea addresses_WT+0x15c58, %rsi
lea addresses_normal+0x1df18, %rdi
nop
nop
cmp $14115, %r8
mov $96, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r9, %r9

// Load
mov $0x127d30000000758, %r11
nop
nop
nop
nop
dec %rsi
mov (%r11), %ecx
cmp $57154, %rcx

// Load
lea addresses_RW+0x1a458, %rcx
dec %r8
movb (%rcx), %r14b
nop
nop
xor %r11, %r11

// Load
lea addresses_RW+0x13158, %r11
nop
nop
add %r10, %r10
movups (%r11), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_US+0x6f58, %rcx
nop
nop
nop
nop
nop
add $9162, %r11
mov (%rcx), %edi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'00': 41}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
