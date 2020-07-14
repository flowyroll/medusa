.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbp
push %rbx
push %rdi
lea addresses_WC_ht+0x4451, %r13
sub %r11, %r11
movw $0x6162, (%r13)
nop
inc %rdi
lea addresses_normal_ht+0x1479f, %rbx
nop
nop
nop
nop
nop
add $50129, %r11
movups (%rbx), %xmm1
vpextrq $1, %xmm1, %rbp
nop
cmp %rbp, %rbp
pop %rdi
pop %rbx
pop %rbp
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rsi

// Store
lea addresses_WT+0x1c5f7, %rax
nop
nop
nop
nop
nop
add $62268, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
nop
nop
and %r8, %r8

// Load
lea addresses_D+0x1cf1f, %r13
cmp %r10, %r10
vmovups (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
nop
nop
xor $1420, %r8

// Store
lea addresses_PSE+0xe61f, %rax
nop
nop
nop
nop
xor $33417, %r15
movw $0x5152, (%rax)
nop
nop
nop
nop
add $10428, %rsi

// Faulty Load
lea addresses_US+0x1cf1f, %r15
cmp $61685, %rbx
movb (%r15), %r10b
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_PSE', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
