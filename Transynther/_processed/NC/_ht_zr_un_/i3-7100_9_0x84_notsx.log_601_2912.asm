.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1c563, %rsi
lea addresses_A_ht+0xe0c3, %rdi
nop
nop
cmp %r10, %r10
mov $71, %rcx
rep movsb
nop
nop
nop
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi

// Store
mov $0xcc3, %r11
nop
and %r10, %r10
movb $0x51, (%r11)
cmp %rcx, %rcx

// Load
lea addresses_WC+0x15bd3, %r9
nop
nop
add $34668, %rdi
movb (%r9), %cl
dec %r13

// Faulty Load
mov $0x2fe79800000008c3, %r9
nop
cmp $17250, %r13
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'c9': 1, '00': 228, '48': 370, 'ca': 1, '7c': 1}
00 48 00 00 00 48 00 48 48 48 48 48 48 48 00 00 00 00 48 00 00 48 00 48 00 48 00 00 48 48 00 48 00 00 00 00 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 00 48 48 00 00 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 00 00 00 48 00 00 48 48 48 00 00 48 00 48 48 48 48 00 48 00 00 48 48 48 00 48 48 00 00 48 48 00 48 00 48 00 00 48 48 48 00 48 00 00 48 48 48 48 48 48 00 48 48 00 00 48 48 48 48 48 48 00 00 48 48 48 48 00 48 48 48 00 00 48 48 00 48 48 48 00 00 48 00 48 00 00 48 00 48 00 48 00 48 48 48 48 48 00 48 48 00 00 48 48 00 00 00 00 48 48 00 00 48 00 00 48 48 48 00 00 48 48 00 48 48 00 48 48 48 48 48 48 00 00 00 48 00 00 48 00 00 00 00 00 48 48 48 48 48 48 48 00 00 48 00 48 48 48 00 00 48 00 00 48 00 48 00 48 00 00 48 48 48 00 48 00 48 00 48 48 00 00 48 48 48 00 00 48 00 48 48 00 48 48 48 00 48 00 00 00 00 00 48 48 00 00 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 00 48 48 48 00 48 00 48 48 48 00 48 00 48 00 00 48 00 48 48 48 00 00 ca 00 00 00 00 00 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 00 48 48 48 00 00 48 00 48 48 00 48 48 48 48 48 00 48 00 48 48 00 48 00 00 00 48 48 00 48 48 00 00 48 48 48 48 00 00 48 48 00 48 48 48 48 00 48 48 48 48 00 00 48 48 48 48 48 48 00 48 00 00 7c 00 48 00 00 48 00 00 00 00 00 48 48 48 48 48 00 48 48 00 48 00 48 48 48 48 48 48 48 00 00 00 00 48 48 48 48 00 48 00 00 48 00 00 48 48 48 00 48 48 48 48 48 48 00 00 00 48 00 00 00 00 48 48 48 48 48 48 48 00 c9 48 00 48 48 00 00 48 48 48 00 48 00 00 48 00 48 48 00 48 00 48 48 48 48 00 00 48 48 00 00 00 00 48 00 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 00 48 48 48 48 48 48 48 48 00 00 48 00 00 48 48 00 00 48 00 48 48 48 48 48 48 48 00 48 48 00 48 48 00 00 48 48 48 48 48 48 48 48 48
*/
