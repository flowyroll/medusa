.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xb8c8, %rcx
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
nop
add %r11, %r11
lea addresses_normal_ht+0xcac8, %rsi
lea addresses_WT_ht+0x9648, %rdi
nop
dec %r11
mov $49, %rcx
rep movsq
nop
and %r15, %r15
lea addresses_WT_ht+0x10e88, %rsi
lea addresses_D_ht+0x1d168, %rdi
nop
nop
nop
nop
nop
add $31286, %r8
mov $7, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0xa6c8, %rdi
nop
nop
nop
nop
xor $38625, %r12
mov $0x6162636465666768, %r15
movq %r15, (%rdi)
nop
nop
cmp $16088, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x19028, %rsi
mov $0x588, %rdi
clflush (%rsi)
nop
nop
nop
xor $58997, %r11
mov $35, %rcx
rep movsq
add $2541, %rbp

// Faulty Load
lea addresses_US+0x46c8, %rdi
nop
nop
nop
nop
cmp %r14, %r14
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'00': 38}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
