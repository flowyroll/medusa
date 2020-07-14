.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x160b2, %r15
nop
nop
nop
nop
nop
sub $48456, %rcx
and $0xffffffffffffffc0, %r15
movaps (%r15), %xmm4
vpextrq $1, %xmm4, %r8
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0x1376e, %rcx
nop
sub $28646, %rbx
movb (%rcx), %r9b
cmp $9246, %r9
lea addresses_WC_ht+0xbf8a, %rsi
lea addresses_A_ht+0x196ee, %rdi
nop
and %r15, %r15
mov $45, %rcx
rep movsw
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1780a, %r11
nop
nop
nop
xor $41407, %rdi
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm6
vpextrq $0, %xmm6, %r15
nop
nop
cmp $46794, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_US+0x8a2, %rdi
nop
nop
nop
nop
xor $18574, %rcx
movb (%rdi), %r13b
sub %rbx, %rbx

// Faulty Load
lea addresses_RW+0x1440a, %rsi
nop
nop
nop
nop
sub $45023, %r10
movaps (%rsi), %xmm5
vpextrq $1, %xmm5, %rbx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': True, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 6}, 'OP': 'LOAD'}
{'47': 374, '48': 6088, '46': 3305, '00': 12062}
00 48 00 00 00 46 00 48 48 00 00 48 00 46 48 00 46 00 46 00 48 46 48 48 00 48 00 00 48 48 00 46 48 00 00 48 48 00 00 00 00 48 48 48 46 48 00 47 48 48 46 46 00 48 00 48 48 48 00 48 00 48 00 48 48 48 00 47 00 00 48 48 00 48 46 48 46 48 00 48 48 48 00 48 48 46 46 46 46 48 00 00 00 00 46 00 48 48 00 48 48 00 48 00 48 00 00 00 48 00 00 46 00 00 47 00 48 48 48 00 00 00 48 00 00 00 00 48 46 00 48 48 00 00 46 46 46 00 00 00 46 46 46 00 00 48 48 00 00 48 00 00 00 48 00 00 00 00 46 00 00 48 00 00 00 00 48 00 48 48 00 47 48 00 48 48 48 48 48 00 48 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 46 00 46 00 00 00 46 00 46 46 00 00 46 46 00 00 00 48 48 48 48 46 46 00 00 00 00 00 00 46 00 48 00 00 00 00 00 46 00 48 00 00 47 00 00 46 00 46 48 48 00 00 00 00 00 46 00 00 00 00 00 48 00 48 00 48 00 00 00 00 48 00 00 46 00 00 00 48 46 00 47 00 00 46 46 00 00 46 00 46 00 48 00 00 00 00 47 00 48 48 00 46 00 00 00 46 00 48 00 00 46 00 00 00 00 48 46 48 00 00 48 48 00 00 00 00 00 48 48 00 00 00 00 48 48 48 46 00 00 48 46 48 00 46 00 46 46 00 00 46 48 46 00 46 00 46 00 48 00 48 00 00 46 00 00 48 00 48 00 00 00 48 00 00 00 00 48 00 46 00 48 00 46 46 00 00 46 00 00 48 00 00 00 00 47 00 00 00 00 48 48 00 00 00 00 48 48 00 48 00 00 00 00 00 46 00 00 48 00 47 48 48 48 46 00 00 00 00 48 00 46 00 00 00 48 00 00 48 00 46 00 00 46 46 00 00 00 00 47 48 48 46 00 46 46 00 48 00 46 00 48 48 00 47 48 48 00 48 48 00 46 46 00 48 48 00 00 00 00 00 00 00 48 00 46 00 46 00 00 46 00 46 00 00 00 48 00 48 48 48 00 48 48 48 46 00 47 00 46 00 00 00 00 48 00 00 00 48 48 00 00 00 47 00 48 00 00 00 46 48 00 00 00 48 00 48 00 00 48 48 00 48 00 00 00 00 48 46 00 00 00 00 46 00 00 46 48 48 00 00 48 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 48 48 00 00 00 00 00 48 00 48 48 48 00 00 48 48 48 46 48 00 00 00 00 00 48 00 00 48 48 00 48 00 00 46 48 00 00 46 48 00 48 46 48 48 00 46 00 46 00 00 46 00 46 00 47 00 00 48 00 00 00 00 00 48 48 00 00 00 48 46 00 48 00 00 46 00 48 00 00 48 00 46 00 00 00 00 00 00 46 48 00 00 48 00 46 00 48 00 00 48 00 46 48 48 00 00 00 00 00 48 48 46 00 00 46 48 48 00 48 48 00 46 46 46 00 00 00 48 48 48 00 46 00 00 48 00 48 00 00 00 00 00 46 46 00 00 48 48 00 46 48 48 00 48 00 48 00 00 46 00 00 00 48 00 48 48 00 48 00 48 48 48 48 48 00 00 00 47 46 46 00 00 46 00 46 48 48 00 46 00 48 48 48 48 00 47 46 00 46 48 00 00 00 00 48 48 48 00 46 46 00 00 46 00 00 46 46 48 48 00 46 00 00 00 00 00 00 00 46 00 00 00 46 00 00 47 48 00 48 48 00 46 00 46 00 48 00 00 00 00 48 00 00 00 48 00 48 48 48 00 00 00 00 46 00 00 00 00 46 00 00 48 00 48 48 00 48 00 00 48 46 00 00 48 00 00 00 00 00 00 46 00 46 46 00 00 00 00 00 48 46 48 48 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 46 46 00 00 48 00 46 00 00 46 00 48 00 46 48 48 48 00 00 00 48 48 00 00 00 00 47 00 46 46 48 00 48 46 00 48 48 00 00 00 47 48 00 00 00 00 48 00 46 48 00 00 46 00 00 00 00 48 00 48 00 46 48 00 00 00 46 00 48 00 00 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 00 48 48 00 46 00 48 48 00 46 00 00 46 48 00 48 00 00
*/
