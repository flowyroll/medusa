.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xe982, %r10
nop
nop
nop
nop
nop
sub $37446, %r14
movw $0x6162, (%r10)
nop
nop
nop
nop
dec %rax
lea addresses_D_ht+0x8396, %rsi
lea addresses_A_ht+0xf694, %rdi
nop
sub $1439, %rax
mov $115, %rcx
rep movsq
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x13992, %rsi
lea addresses_WT_ht+0x1bce2, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %r15
mov $6, %rcx
rep movsq
nop
nop
nop
xor $48552, %r13
lea addresses_D_ht+0x192, %rsi
lea addresses_A_ht+0xaf92, %rdi
and %r10, %r10
mov $99, %rcx
rep movsw
nop
xor $5792, %rcx
lea addresses_D_ht+0xeb92, %rsi
lea addresses_UC_ht+0x6592, %rdi
clflush (%rsi)
nop
xor %r15, %r15
mov $14, %rcx
rep movsw
nop
nop
nop
and %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdx
push %rsi

// Load
mov $0x112, %rbp
nop
nop
nop
nop
xor $18771, %r14
movntdqa (%rbp), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_US+0x5d92, %r14
nop
nop
nop
inc %rbp
movb $0x51, (%r14)
nop
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_A+0x1192, %rdx
nop
nop
nop
cmp $30381, %r11
movb (%rdx), %r15b
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'00': 13}
00 00 00 00 00 00 00 00 00 00 00 00 00
*/
