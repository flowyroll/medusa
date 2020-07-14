.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1e835, %r11
nop
nop
nop
nop
add $8487, %r13
mov (%r11), %ax
sub $45385, %rdi
lea addresses_WT_ht+0x13e65, %rsi
lea addresses_WC_ht+0x1e435, %rdi
clflush (%rsi)
nop
nop
dec %r13
mov $19, %rcx
rep movsw
nop
xor $2346, %rax
lea addresses_WC_ht+0x15335, %rsi
lea addresses_WC_ht+0x3035, %rdi
nop
nop
nop
sub %r10, %r10
mov $72, %rcx
rep movsl
nop
nop
nop
xor $21148, %r11
lea addresses_UC_ht+0x3035, %rsi
lea addresses_WC_ht+0x155e9, %rdi
nop
nop
nop
nop
and $25582, %r11
mov $81, %rcx
rep movsw
nop
nop
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rcx
push %rsi

// Store
mov $0x85f, %r8
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x51525354, (%r8)
nop
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_UC+0xc35, %r11
nop
nop
cmp $16415, %rax
vmovntdqa (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r8
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': True, 'size': 4}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'48': 12915, 'ff': 1, '00': 8898, 'fb': 8, '6d': 3, '08': 4}
00 00 00 48 00 48 48 48 48 48 00 48 00 48 48 00 48 48 00 48 48 00 00 00 48 48 48 48 00 48 00 00 48 48 48 00 48 00 48 48 48 48 00 00 00 00 48 48 48 48 48 00 48 48 00 00 00 00 00 00 48 00 00 48 00 48 00 00 48 00 00 00 00 48 00 00 00 48 48 48 48 48 48 00 00 48 00 00 00 00 48 48 48 48 48 48 48 00 48 00 00 00 00 48 48 48 48 48 48 48 00 48 48 48 00 00 00 48 00 48 00 48 48 00 00 48 00 48 00 48 00 00 00 00 48 00 48 48 48 48 00 48 48 00 48 48 00 48 00 48 48 00 00 00 00 00 48 48 00 48 48 00 48 00 00 00 48 00 00 00 48 48 48 00 00 48 00 00 48 00 00 00 48 48 00 48 48 00 48 48 00 48 48 48 48 00 00 00 48 48 48 48 00 48 00 00 48 48 00 48 00 48 00 00 00 48 00 48 00 48 48 00 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 00 00 00 00 48 48 48 48 48 48 00 48 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 48 48 00 48 48 00 00 00 00 48 48 00 48 48 00 48 48 00 48 00 00 00 48 00 48 48 48 00 48 48 00 48 48 00 48 48 00 00 00 00 48 48 48 00 48 00 00 48 48 48 48 48 48 00 00 00 48 00 48 48 48 48 00 48 48 00 00 48 00 00 48 48 00 48 48 48 00 48 48 00 00 48 00 48 00 48 00 00 00 48 48 48 48 00 48 48 48 48 48 48 00 48 00 00 00 48 48 00 48 48 48 48 48 48 00 00 00 00 00 48 48 48 48 00 48 48 48 00 00 48 48 48 48 00 48 48 00 00 00 00 00 48 48 00 00 48 48 00 48 00 48 48 00 00 48 48 00 00 00 00 48 00 00 48 48 00 00 48 00 00 00 48 48 00 48 48 00 48 00 48 00 00 00 48 00 00 48 00 00 48 48 00 00 48 48 00 48 48 00 48 00 48 00 48 48 00 00 00 00 48 48 48 48 48 48 00 48 48 00 00 48 48 00 48 48 48 00 48 48 48 48 48 48 48 00 48 48 00 48 48 00 48 00 00 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 00 00 00 48 00 00 48 00 48 48 00 00 48 48 00 48 48 00 48 48 00 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 00 00 00 48 48 48 00 48 48 00 48 48 48 48 48 48 48 00 48 00 00 48 00 48 00 00 48 00 48 48 48 48 48 48 00 00 48 48 48 48 48 00 48 00 00 48 48 48 00 00 48 00 00 00 48 48 48 48 48 00 00 48 48 48 00 00 48 48 48 48 00 00 00 48 48 48 48 48 48 48 00 00 00 48 48 48 00 48 00 00 00 48 48 48 00 48 00 00 00 48 00 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 00 48 48 00 00 00 00 00 48 00 00 48 00 48 48 00 00 00 00 48 00 48 48 48 48 00 00 48 48 00 48 48 00 48 48 00 48 00 00 48 48 48 48 48 00 00 48 48 00 48 48 00 00 00 48 48 48 48 48 48 00 00 48 00 48 48 48 48 00 00 48 48 00 48 00 00 00 48 00 48 48 00 00 48 48 00 48 00 48 48 00 00 48 48 48 48 00 48 00 00 48 00 48 48 00 48 00 00 48 48 00 48 00 48 48 48 00 48 00 00 48 00 48 00 00 48 00 00 48 48 48 48 00 48 48 00 48 48 00 48 48 00 00 48 48 48 48 48 00 48 48 48 48 00 00 48 48 00 48 00 00 48 00 48 48 00 48 48 48 48 00 48 48 48 48 48 48 00 00 00 00 48 48 48 48 00 48 00 48 48 00 00 48 48 00 00 48 00 00 48 00 00 48 48 48 48 00 48 00 48 48 48 48 48 00 00 48 00 48 00 48 48 00 48 48 48 00 00 00 48 48 48 00 48 48 00 00 48 00 48 48 48 48 48 00 00 00 00 48 48 00 48 48 48 00 00 00 00 48 48 48 48 48 48 00 48 00 00 00 00 48 00 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 00 00 48 00
*/
