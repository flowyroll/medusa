.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rbx
lea addresses_A_ht+0x18b6, %rbx
nop
xor %r9, %r9
and $0xffffffffffffffc0, %rbx
movaps (%rbx), %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
cmp %r13, %r13
pop %rbx
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WC+0x1ceb6, %rsi
nop
nop
xor $43269, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
xor $39197, %rax

// Store
mov $0x6b6, %rbp
nop
add $2693, %r14
movb $0x51, (%rbp)
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_US+0x1ab6, %r14
nop
nop
sub %r8, %r8
movw $0x5152, (%r14)
nop
nop
nop
nop
and $24615, %r10

// Load
lea addresses_PSE+0x1aab6, %rsi
nop
nop
nop
nop
add %rbp, %rbp
movb (%rsi), %al
nop
nop
nop
nop
nop
and %rbp, %rbp

// Faulty Load
lea addresses_US+0x1ab6, %r10
nop
nop
nop
sub %r8, %r8
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'00': 1}
00
*/
