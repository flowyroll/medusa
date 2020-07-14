.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x19968, %rsi
lea addresses_WT_ht+0x1ea48, %rdi
nop
nop
nop
nop
nop
and $21191, %rax
mov $43, %rcx
rep movsw
dec %r13
lea addresses_WT_ht+0x16308, %rcx
nop
nop
nop
nop
inc %r8
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
sub $43700, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_normal+0x1e3c8, %rdi
cmp $12765, %r9
movl $0x51525354, (%rdi)
nop
nop
nop
and $41073, %rdi

// Load
lea addresses_PSE+0x40c8, %rdi
nop
nop
nop
nop
nop
and $31246, %r12
mov (%rdi), %r15d
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_RW+0x17404, %r9
nop
nop
nop
nop
nop
sub %r8, %r8
movw $0x5152, (%r9)
nop
xor %rdi, %rdi

// Store
lea addresses_PSE+0xf6c8, %r9
nop
nop
nop
nop
nop
add $42061, %r8
movb $0x51, (%r9)
nop
nop
nop
nop
nop
and $58859, %rax

// Store
mov $0x5af92c0000000ec8, %rax
nop
nop
nop
and $34684, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rax)
nop
xor $62858, %rdx

// Store
mov $0x5f8, %r9
nop
nop
nop
nop
nop
cmp %r12, %r12
movb $0x51, (%r9)
inc %r15

// Faulty Load
lea addresses_RW+0x1ec8, %r9
and $43024, %rdi
vmovaps (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
lea oracles, %r9
and $0xff, %r12
shlq $12, %r12
mov (%r9,%r12,1), %r12
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 21828, '49': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
