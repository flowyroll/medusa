.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rbp
push %rdi
push %rsi
lea addresses_WC_ht+0x1b660, %rdi
nop
nop
nop
nop
nop
add $58839, %rsi
mov (%rdi), %bp
nop
nop
nop
nop
and %r10, %r10
pop %rsi
pop %rdi
pop %rbp
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rbp
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0x182e0, %rdi
nop
nop
sub $30302, %rbp
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %r14
nop
nop
nop
nop
sub %rbp, %rbp

// Store
mov $0x6c0, %r11
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
nop
xor $23685, %rdi

// Store
lea addresses_US+0x7634, %rbp
nop
add %rdx, %rdx
movl $0x51525354, (%rbp)
sub %rdx, %rdx

// Store
lea addresses_RW+0x14281, %r11
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movntdq %xmm2, (%r11)
nop
cmp %rsi, %rsi

// Store
lea addresses_normal+0x148a0, %rdi
nop
nop
nop
nop
add %rdx, %rdx
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
and $28872, %rdx

// Faulty Load
mov $0x2db33600000003a0, %r14
nop
nop
nop
nop
and $52512, %rsi
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 4}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'00': 50}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
