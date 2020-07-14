.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x44a8, %rsi
lea addresses_WT_ht+0x15ac8, %rdi
nop
nop
and %r9, %r9
mov $47, %rcx
rep movsb
nop
cmp $29822, %r14
lea addresses_A_ht+0xdcc8, %rsi
lea addresses_A_ht+0x8b48, %rdi
nop
nop
nop
nop
and $14305, %r15
mov $39, %rcx
rep movsw
nop
nop
sub $39738, %r9
lea addresses_WC_ht+0x116f0, %rsi
lea addresses_D_ht+0x127f8, %rdi
clflush (%rsi)
add $28235, %rdx
mov $12, %rcx
rep movsb
nop
nop
nop
add $38292, %rdi
lea addresses_D_ht+0x1dcc8, %rcx
nop
nop
nop
nop
nop
xor $20694, %rsi
movb $0x61, (%rcx)
nop
sub $7831, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rcx
push %rdx

// Faulty Load
lea addresses_D+0x1f6c8, %r10
nop
nop
nop
nop
xor %r8, %r8
vmovntdqa (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'00': 34}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
