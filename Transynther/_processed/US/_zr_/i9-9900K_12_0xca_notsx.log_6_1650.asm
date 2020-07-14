.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xd839, %rsi
lea addresses_WC_ht+0x13629, %rdi
nop
nop
add $5356, %rdx
mov $64, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0xa809, %r14
nop
xor $611, %rdi
movl $0x61626364, (%r14)
nop
nop
nop
inc %rdx
lea addresses_A_ht+0x1d9a9, %rsi
lea addresses_UC_ht+0x129a9, %rdi
nop
nop
nop
nop
nop
add $13795, %r11
mov $68, %rcx
rep movsl
nop
nop
cmp $65123, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x781, %rbp
nop
nop
nop
nop
and %r10, %r10
movl $0x51525354, (%rbp)
nop
nop
xor $41254, %rdi

// Store
lea addresses_normal+0x5ca9, %rsi
clflush (%rsi)
dec %r8
movb $0x51, (%rsi)
nop
nop
nop
and $26354, %r8

// Faulty Load
lea addresses_US+0x1e1a9, %rcx
dec %r8
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %rbp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'00': 6}
00 00 00 00 00 00
*/
