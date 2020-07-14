.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xe48f, %rbp
nop
nop
nop
sub %rax, %rax
mov (%rbp), %rdi
nop
nop
nop
nop
sub $25332, %r11
lea addresses_WC_ht+0x134ff, %r10
nop
inc %rsi
movw $0x6162, (%r10)
nop
add $30307, %rsi
lea addresses_UC_ht+0x1348f, %rax
nop
nop
add %rsi, %rsi
movb $0x61, (%rax)
cmp $22652, %rsi
lea addresses_WC_ht+0x38af, %rsi
lea addresses_normal_ht+0x19c93, %rdi
nop
nop
nop
add %rbp, %rbp
mov $38, %rcx
rep movsq
nop
nop
nop
nop
sub $39237, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rdx
push %rsi

// Load
lea addresses_WC+0xf0a7, %rsi
nop
nop
nop
and %r8, %r8
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
nop
inc %r15

// Store
lea addresses_UC+0xa6ef, %r13
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r13)
nop
nop
add $26219, %r14

// Store
lea addresses_D+0x508f, %rbp
nop
nop
add $27330, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
xor %rbp, %rbp

// Faulty Load
mov $0x1c0aff0000000c8f, %rdx
nop
and $45127, %rbp
vmovups (%rdx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'48': 14408, '00': 7421}
00 48 00 00 00 00 00 00 00 48 48 00 48 48 48 48 00 48 48 00 48 48 48 00 48 00 00 48 48 00 48 48 00 00 48 48 48 48 48 48 00 00 48 48 48 00 00 48 00 48 48 48 48 48 48 00 48 48 00 00 48 48 48 00 48 48 00 48 00 48 48 48 48 48 48 00 48 48 00 00 00 48 00 48 48 48 48 00 00 48 48 00 00 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 00 00 48 48 00 00 48 00 48 48 48 00 48 00 00 00 48 48 00 00 48 00 48 00 48 48 00 00 48 48 48 00 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 00 48 00 00 00 00 00 48 00 48 48 00 48 48 48 00 00 00 00 00 00 48 48 00 48 00 48 00 48 48 48 48 00 00 00 00 48 48 48 48 48 48 00 48 00 48 48 00 48 00 48 00 48 48 48 48 48 48 00 48 48 00 48 00 48 48 48 00 00 00 48 48 00 48 48 48 00 48 00 48 48 48 48 48 48 00 48 00 48 00 48 48 48 48 00 00 48 48 00 48 48 00 48 48 48 48 00 48 48 00 48 48 48 48 48 48 00 48 48 00 48 00 48 48 48 00 48 00 48 00 00 00 48 00 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 00 48 48 48 48 48 48 00 48 48 00 00 48 48 00 48 48 48 00 48 48 48 00 00 00 48 48 48 00 48 48 48 48 48 48 00 00 48 00 48 00 48 48 48 48 48 00 48 48 48 48 48 00 00 00 48 48 48 00 48 00 00 48 00 48 48 48 00 48 00 48 48 48 00 48 48 48 48 00 48 48 48 00 48 00 48 48 00 48 00 00 48 48 00 00 48 48 48 48 00 48 48 48 00 00 00 00 00 48 00 00 48 48 00 00 48 00 48 48 48 48 48 00 48 48 00 48 48 00 00 48 48 48 48 48 00 48 00 48 48 48 00 00 48 48 00 00 48 48 48 00 48 00 48 48 00 48 48 48 48 00 00 00 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 00 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 00 48 48 00 48 00 48 48 00 00 48 48 00 00 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 00 48 48 48 48 00 48 48 00 00 48 48 48 48 48 00 00 48 48 00 48 48 00 00 00 00 48 00 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 00 00 48 00 00 48 00 48 48 48 00 48 00 48 48 00 48 48 48 48 00 00 00 00 00 48 00 48 00 00 00 00 00 48 48 48 48 00 00 48 48 00 00 48 00 00 00 48 48 48 00 48 48 00 00 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 00 48 00 00 48 48 00 00 48 48 48 48 00 00 00 00 48 48 00 00 48 00 48 48 48 48 00 48 48 48 48 00 48 48 48 48 00 00 48 48 00 48 00 48 48 48 00 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 00 00 00 00 00 00 00 48 48 00 00 00 48 00 00 48 48 00 48 00 00 48 48 48 48 00 48 00 00 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 00 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 00 48 48 48 48 48 00 48 48 48 48 00 00 00 48 48 00 48 00 00 00 00 48 00 48 48 48 48 48 00 48 00 00 48 00 00 48 00 00 00 48 00 48 00 00 48 48 48 48 48 48 48 00 00 48 48 48 00 00 00 48 48 48 00 48 48 48 48 00 48 48 00 48 00 48 00 48 48 00 00 48 48 48 00 48 48 48 48 48 48 00 00 00 48 00 48 00 00 00 00 48 00 48 48 00 48 48 48 00 48 48 48 48 48 00 48 48 48 48 00 00 48 00 00 48 48 48 48 00 48 48 48 48 00 48 00 48 48 00 00 48 48 48 48 00 00 00 48 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 48 00 48 48 48 48 48 00 48 48
*/
