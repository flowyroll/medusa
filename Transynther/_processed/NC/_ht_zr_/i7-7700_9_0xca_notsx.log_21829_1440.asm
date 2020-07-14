.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x3f93, %rsi
lea addresses_WC_ht+0x993f, %rdi
clflush (%rdi)
nop
nop
nop
add %r12, %r12
mov $5, %rcx
rep movsw
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0xf87b, %rsi
lea addresses_normal_ht+0x1eedf, %rdi
nop
nop
nop
nop
sub $7556, %r13
mov $31, %rcx
rep movsw
nop
nop
dec %r12
lea addresses_A_ht+0x58df, %rsi
lea addresses_D_ht+0x1c05f, %rdi
dec %rax
mov $48, %rcx
rep movsw
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x15edf, %rdi
nop
nop
xor $43758, %r12
movw $0x6162, (%rdi)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x1d6df, %rsi
lea addresses_D_ht+0x55bf, %rdi
clflush (%rdi)
nop
nop
add %rdx, %rdx
mov $39, %rcx
rep movsl
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0xb9ff, %rdi
nop
dec %rbx
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %r13
xor %r13, %r13
lea addresses_UC_ht+0xacdf, %rsi
lea addresses_D_ht+0x1eedf, %rdi
nop
nop
and %rax, %rax
mov $56, %rcx
rep movsq
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x1279f, %rsi
lea addresses_A_ht+0xa6df, %rdi
nop
nop
nop
add %rax, %rax
mov $107, %rcx
rep movsb
nop
nop
nop
nop
add $11718, %r13
lea addresses_UC_ht+0x18b50, %rsi
lea addresses_A_ht+0x1b0df, %rdi
nop
nop
nop
mfence
mov $77, %rcx
rep movsw
nop
nop
add $38312, %r13
lea addresses_WC_ht+0x5a3f, %rsi
nop
nop
nop
nop
and %r12, %r12
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x16df, %rbx
nop
nop
nop
nop
sub $21189, %rdx
movl $0x61626364, (%rbx)
nop
nop
xor $31967, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rdx
push %rsi

// Load
lea addresses_WT+0x86df, %r9
nop
inc %r12
mov (%r9), %eax
nop
nop
and $29768, %rax

// Faulty Load
mov $0x3638e700000006df, %r8
nop
nop
nop
nop
nop
sub $65413, %rsi
vmovups (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rsi
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'00': 15094, '45': 2844, '48': 3823, '49': 68}
00 00 48 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 45 00 48 00 00 00 00 00 45 00 45 48 00 48 00 48 00 48 00 00 00 00 45 00 00 00 00 48 00 00 48 00 00 00 00 00 00 45 00 45 00 00 48 00 45 00 48 00 00 00 00 00 00 00 48 48 00 45 48 00 48 00 00 00 00 00 00 00 45 00 00 48 00 00 00 48 00 48 00 48 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 00 45 48 00 00 00 48 00 00 00 00 48 00 00 00 00 48 48 48 00 00 00 45 48 00 45 48 00 45 45 00 00 45 45 00 48 45 00 48 48 00 00 00 48 00 00 00 45 00 00 00 00 00 48 00 00 48 00 45 00 48 00 00 00 00 45 45 48 00 00 00 45 00 48 00 00 48 00 48 00 00 45 00 00 00 00 00 00 45 00 00 00 45 45 48 00 00 00 48 00 00 00 45 00 48 00 00 45 00 48 00 00 00 00 00 00 48 00 45 48 00 00 00 00 45 00 45 48 48 00 48 00 00 48 00 45 48 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 48 00 00 45 00 45 48 45 00 00 00 48 00 48 45 48 00 00 00 00 45 00 00 00 48 00 48 00 00 00 45 45 45 00 00 00 00 48 00 00 00 45 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 48 00 00 00 48 00 48 00 00 00 00 00 45 45 00 00 00 00 00 00 00 45 48 00 00 00 48 00 45 00 00 00 00 00 00 00 48 45 45 00 00 00 00 00 00 48 00 00 00 00 00 00 00 45 49 48 00 00 00 00 45 00 45 48 00 45 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 45 48 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 48 00 00 00 45 48 00 45 00 00 48 00 00 00 00 00 48 00 00 48 48 49 48 00 00 00 48 00 00 00 00 48 48 45 00 00 00 00 00 00 45 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 45 00 00 00 00 00 48 00 00 00 00 00 00 48 00 48 45 45 45 45 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 45 48 00 00 00 45 00 00 00 00 00 00 00 48 00 00 48 48 00 00 45 00 48 00 00 00 00 48 00 48 00 00 45 00 00 00 45 00 48 00 00 00 45 48 00 00 00 00 48 00 45 00 48 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 48 00 48 00 00 48 00 00 00 45 48 00 00 48 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 48 45 00 00 00 48 00 00 48 00 45 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 45 00 48 00 00 00 00 00 48 45 48 00 00 00 48 00 00 00 00 00 00 45 00 00 00 48 00 00 00 48 48 45 00 00 45 45 48 48 00 45 48 00 00 48 00 00 00 00 45 00 00 00 00 48 00 45 00 49 00 00 00 00 00 00 45 48 00 45 48 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 45 00 00 00 00 00 48 00 00 00 00 00 00 00 45 00 45 00 00 00 48 00 00 00 00 48 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 48 00 00 00 48 48 00 00 00 48 00 00 00 00 00 45 45 00 00 00 48 45 48 00 00 00 48 48 00 00 00 00 00 00 00 45 48 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 45 00 00 00 45 00 45 48 00 00 00 00 48 00 00 48 00 00 00 00 45 45 48 00 00 48 00 00 00 00 00 48 00 48 00 45 00 00 00 00 00 00 45 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 45 00 00 00 00 00 00 48 00 00 00 00 45 00 00 48 00 48 00 00 00 00 45 00 00 00 45 48
*/
