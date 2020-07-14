.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x151b9, %r9
inc %r10
mov (%r9), %r11
nop
nop
nop
add $19742, %rax
lea addresses_UC_ht+0x10f39, %rdi
nop
nop
nop
dec %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rdi)
nop
sub $35666, %r11
lea addresses_UC_ht+0x1ea79, %rsi
lea addresses_normal_ht+0x1b58, %rdi
clflush (%rdi)
nop
nop
nop
and %r12, %r12
mov $25, %rcx
rep movsl
add $43289, %rax
lea addresses_D_ht+0x1b0b9, %rsi
lea addresses_D_ht+0xead9, %rdi
nop
xor %rax, %rax
mov $28, %rcx
rep movsq
nop
nop
add %r10, %r10
lea addresses_WC_ht+0xdc59, %rsi
cmp %rax, %rax
movb (%rsi), %cl
nop
nop
nop
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Faulty Load
mov $0x412e910000000339, %r10
nop
nop
inc %rax
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'46': 14555, '00': 7274}
46 00 46 00 46 46 46 46 46 46 00 00 00 46 00 00 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 46 46 00 46 46 00 00 00 46 46 46 00 46 46 00 00 46 00 46 00 46 00 46 46 00 46 46 46 46 46 00 46 46 00 00 46 46 00 00 46 46 00 00 00 46 46 46 00 00 46 00 46 00 46 46 46 46 00 00 46 00 46 00 46 46 46 00 00 46 00 46 46 46 00 00 46 46 46 00 00 46 00 00 00 00 46 00 46 46 46 46 46 46 46 46 46 00 46 46 00 46 00 46 00 46 46 00 46 46 46 00 46 46 00 00 46 46 46 46 46 46 00 46 46 46 00 46 46 00 46 00 46 46 46 00 46 46 00 46 46 46 46 46 00 00 00 46 46 46 46 46 46 00 00 46 46 00 46 46 46 00 46 46 46 46 46 00 46 46 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 46 46 46 00 00 46 46 46 46 00 46 00 46 00 46 00 46 46 46 00 46 46 46 46 00 46 46 46 46 46 00 00 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 00 46 46 46 00 46 46 00 46 46 46 46 46 46 00 00 46 46 46 46 46 46 00 46 46 46 00 46 46 46 00 46 46 00 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 00 46 46 00 46 00 46 46 00 46 00 46 00 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 00 46 46 46 46 46 00 46 00 46 46 46 46 00 46 00 46 00 00 46 46 46 00 46 00 46 46 46 00 46 46 46 46 00 00 46 00 46 00 46 46 00 46 00 00 46 00 00 46 46 00 46 46 46 46 46 46 46 46 00 46 46 00 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 00 46 00 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 00 00 46 00 46 00 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 00 00 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 00 46 46 00 00 46 46 46 46 00 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 00 00 46 46 00 46 46 46 46 00 46 00 46 46 00 00 46 46 00 46 46 00 46 00 00 46 46 46 46 46 46 00 46 00 46 46 46 46 46 00 46 00 46 46 46 46 46 00 46 00 00 46 46 46 00 00 46 46 00 46 46 00 00 46 46 46 46 46 00 46 46 00 46 00 00 00 46 46 46 46 46 46 46 00 46 46 46 46 00 46 00 00 46 46 46 00 00 00 46 00 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 00 00 46 46 00 46 00 46 46 46 46 46 46 00 00 46 00 00 46 46 46 00 46 46 00 00 46 46 00 46 00 00 46 00 46 00 00 00 46 00 00 00 00 00 46 00 46 00 00 00 46 46 00 00 46 00 00 46 00 46 00 00 00 00 46 46 00 46 46 00 46 46 46 00 00 46 46 46 46 00 46 00 00 46 46 46 46 00 46 00 46 46 46 00 46 46 00 46 46 46 46 46 00 46 46 00 46 00 46 00 46 46 46 46 00 46 46 00 46 46 46 46 46 46 00 00 46 00 00 00 46 46 46 00 46 46 46 46 00 46 46 00 46 00 46 46 00 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 00 46 46 00 46 00 46 46 46 46 46 46 46 00 46 46 46 00 00 00 46 46 00 46 00 00 46 00 46 46 00 00 46 00 46 00 46 46 00 00 46 46 46 00 46 46 46 46 00 46 46 46 00 46 00 46 00 00 46 00 46 00 00 46 46 00 00 46 46 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 00 00 46 00 46 00 46 46 46 46 46 46 00 00 46 46 46 00 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 00 46 00 00 46 46 46 46 00 46 46 46 00 46 46 46 00 46 46 46 46 46 46 00
*/
