.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1771e, %rax
nop
nop
nop
nop
add $39765, %rdi
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
cmp $42976, %r10
lea addresses_WC_ht+0x192de, %r11
nop
nop
nop
nop
nop
lfence
movb $0x61, (%r11)
nop
nop
add $38024, %r8
lea addresses_D_ht+0xb81e, %r8
nop
xor $25158, %rax
mov (%r8), %r11
inc %rax
lea addresses_normal_ht+0x271e, %rsi
lea addresses_A_ht+0x7a1e, %rdi
nop
nop
nop
cmp $39398, %r11
mov $38, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rbx
push %rdi
push %rsi

// Load
lea addresses_US+0xf81e, %rsi
nop
nop
nop
nop
nop
add $45234, %rbx
mov (%rsi), %r11
nop
nop
and $50122, %rdi

// Load
lea addresses_US+0xf81e, %r9
nop
xor %rdi, %rdi
mov (%r9), %r14w
nop
nop
nop
nop
add %r11, %r11

// Store
mov $0x41e, %rdi
nop
nop
sub %r9, %r9
movw $0x5152, (%rdi)
add $33272, %rsi

// Store
mov $0x13e9990000000136, %rdi
nop
sub $46960, %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)
cmp %rdi, %rdi

// Faulty Load
lea addresses_US+0xf81e, %rdi
nop
cmp $32904, %r8
mov (%rdi), %esi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'00': 56}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
