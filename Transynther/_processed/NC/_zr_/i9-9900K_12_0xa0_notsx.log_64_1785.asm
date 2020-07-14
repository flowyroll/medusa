.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x530d, %rbx
nop
nop
nop
sub %rax, %rax
movl $0x61626364, (%rbx)
nop
nop
nop
dec %r12
lea addresses_WC_ht+0x112fe, %rsi
lea addresses_UC_ht+0x1a30d, %rdi
nop
nop
nop
nop
xor $5032, %rax
mov $124, %rcx
rep movsq
nop
nop
nop
nop
nop
and $10271, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdx
push %rsi

// Store
mov $0x53198e00000008ad, %rcx
nop
add %r9, %r9
movl $0x51525354, (%rcx)
nop
nop
nop
add $8628, %r9

// Load
mov $0x5b94aa00000006cd, %rdx
nop
nop
nop
nop
dec %rsi
movb (%rdx), %r9b
nop
nop
cmp $27621, %rcx

// Store
lea addresses_RW+0x3b84, %r15
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%r15)
add $9479, %r14

// Store
lea addresses_UC+0x10061, %rcx
nop
cmp $49854, %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movaps %xmm2, (%rcx)
add %r14, %r14

// Faulty Load
mov $0x5e2de000000050d, %rdx
sub $10869, %rsi
vmovups (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 16, 'NT': True, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'00': 64}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
