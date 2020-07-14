.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x11f0b, %rsi
lea addresses_WC_ht+0x10c13, %rdi
nop
nop
nop
cmp $55262, %r15
mov $24, %rcx
rep movsq
nop
nop
nop
add %rsi, %rsi
lea addresses_UC_ht+0xf62b, %r14
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0xc733, %rdx
nop
dec %r11
mov (%rdx), %rsi
nop
nop
and %r14, %r14
lea addresses_UC_ht+0x570b, %rdi
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%rdi)
nop
nop
nop
xor $34722, %r11
lea addresses_D_ht+0x1780b, %rsi
lea addresses_normal_ht+0x14b, %rdi
xor %rbx, %rbx
mov $36, %rcx
rep movsq
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x13dbb, %rcx
clflush (%rcx)
nop
nop
nop
and %rdx, %rdx
mov (%rcx), %rsi
dec %rbx
lea addresses_WC_ht+0x194a3, %rdx
nop
nop
nop
and %rsi, %rsi
movb (%rdx), %r11b
nop
nop
nop
add %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi

// Store
mov $0x10fb20000000059f, %r12
inc %rbx
movl $0x51525354, (%r12)
nop
cmp $6798, %rdi

// Faulty Load
mov $0x5f26df0000000f0b, %rcx
nop
nop
sub %rbp, %rbp
vmovups (%rcx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': True, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'46': 4396, '00': 17433}
00 46 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 46 46 46 00 00 00 00 00 46 46 00 00 46 46 00 00 00 00 00 46 46 00 00 46 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 46 46 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 46 00 46 00 46 46 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 46 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 00 00 00 00 00 46 00 46 46 46 46 46 00 00 00 00 46 00 46 00 00 46 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 46 46 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 46 46 00 46 00 00 00 00 00 00 00 46 46 46 00 46 00 00 46 00 46 00 00 00 00 00 00 46 00 46 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 46 00 00 00 46 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 46 00 00 46 46 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 46 46 46 00 00 46 00 00 00 00 00 46 00 46 00 46 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 46 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 46 46 00 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 46 46 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 46 00 00 00 46 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 46 46 00 00 00 00 00 00 00 00 00 46 46 00 00 46 46 00 00 00 00 46 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 46 46 46 00 00 00 00 46 46 46 00 00 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 46 00 46 00 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 46 46 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 46 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 46 00 00 00 46 46 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 46 00 00 00 00 46 00
*/
