.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x186e7, %rsi
lea addresses_WC_ht+0x15b33, %rdi
nop
nop
nop
nop
cmp $21939, %r15
mov $51, %rcx
rep movsw
add %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rax
push %rdi
push %rsi

// Store
lea addresses_UC+0x8edf, %rdi
nop
nop
nop
nop
add $19161, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
and %r8, %r8

// Store
mov $0x667aab0000000127, %r14
nop
sub %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovntdq %ymm3, (%r14)
nop
nop
nop
nop
nop
inc %r14

// Store
lea addresses_PSE+0x13ee7, %r13
nop
nop
nop
sub %r10, %r10
movl $0x51525354, (%r13)
nop
and %rsi, %rsi

// Faulty Load
lea addresses_PSE+0x13ee7, %rsi
nop
nop
nop
nop
inc %rax
mov (%rsi), %r10w
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'54': 241}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
