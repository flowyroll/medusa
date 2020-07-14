.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x7eb5, %rsi
lea addresses_D_ht+0x3e45, %rdi
nop
nop
nop
nop
xor %r14, %r14
mov $61, %rcx
rep movsq
nop
nop
sub $20136, %r9
lea addresses_UC_ht+0x13ae5, %rsi
lea addresses_WC_ht+0x18ee5, %rdi
nop
cmp $57181, %r10
mov $35, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x1ca5, %rsi
lea addresses_D+0xee5, %rdi
nop
add %rbx, %rbx
mov $107, %rcx
rep movsq
nop
nop
nop
dec %rbx

// Store
lea addresses_PSE+0x1f1e5, %r8
nop
nop
nop
nop
add %r11, %r11
movb $0x51, (%r8)
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_WC+0x14ae5, %r11
cmp %rdi, %rdi
movb $0x51, (%r11)
xor $45065, %rdi

// Faulty Load
lea addresses_WC+0x1c6e5, %rsi
nop
nop
nop
and $9896, %rdi
vmovntdqa (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r13
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_RW'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'46': 1025, '00': 85, '32': 20719}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 46 46 46 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 46 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 46 32 32 32 32 32 32 46 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 00 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 46 32 32 46 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32 32 32 46 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 46 32 32 32
*/
