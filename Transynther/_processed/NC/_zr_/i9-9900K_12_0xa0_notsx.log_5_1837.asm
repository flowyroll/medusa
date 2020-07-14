.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rcx
push %rdx
lea addresses_WT_ht+0x135d9, %rdx
nop
nop
nop
nop
dec %r11
movl $0x61626364, (%rdx)
nop
nop
cmp $50690, %rcx
pop %rdx
pop %rcx
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0xa45b, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovntdq %ymm3, (%rdi)
nop
nop
inc %r14

// Store
lea addresses_WT+0x22a5, %r11
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r11)
nop
and $59353, %rsi

// Faulty Load
mov $0x6edd2700000000db, %r10
nop
xor $21220, %r15
movb (%r10), %r14b
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'00': 5}
00 00 00 00 00
*/
