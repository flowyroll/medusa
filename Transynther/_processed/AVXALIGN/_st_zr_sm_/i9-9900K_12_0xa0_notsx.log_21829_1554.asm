.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rbp
push %rsi
lea addresses_normal_ht+0x1de03, %r12
sub %rbp, %rbp
mov (%r12), %r10w
nop
nop
nop
add $24854, %rsi
lea addresses_D_ht+0x1a95b, %rbp
clflush (%rbp)
nop
nop
sub %r14, %r14
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
sub $39932, %rsi
pop %rsi
pop %rbp
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_RW+0x1da43, %rdx
nop
nop
nop
sub $43560, %r10
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
inc %rdx

// Load
lea addresses_UC+0x1643, %r15
nop
nop
nop
sub $3365, %rbp
mov (%r15), %eax
xor $32867, %r11

// Load
lea addresses_UC+0xa643, %r15
add $48664, %rsi
movb (%r15), %r10b
nop
nop
nop
xor $57798, %r11

// Store
lea addresses_D+0xc643, %rbp
nop
nop
and $5440, %r11
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
xor $750, %rsi

// Store
mov $0x55fc2e00000007db, %rax
nop
and $61886, %r11
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
sub %r11, %r11

// Load
lea addresses_RW+0x1da43, %r11
nop
sub %r15, %r15
movb (%r11), %dl
add %r15, %r15

// Store
lea addresses_PSE+0x19eb3, %rsi
nop
nop
nop
add $34697, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_RW+0x1da43, %rsi
nop
nop
nop
inc %r15
movntdqa (%rsi), %xmm1
vpextrq $0, %xmm1, %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'51': 18695, '00': 3134}
51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 00 51 51 51 51 51 51 51 00 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 00 51 51 51 51 51 00 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 00 00 51 51 51 51 00 51 51 51 00 51 51 51 51 00 51 51 51 00 00 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 00 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 00 00 51 51 00 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 00 51 00 51 51 00 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 00 51 51 00 51 51 51 51 00 51 00 51 00 51 51 51 51 51 51 51 51 00 51 51 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 00 51 51 51 51 00 51 51 00 00 51 51 51 51 51 51 00 00 51 51 00 00 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 00 00 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 00 51 51 51 51 00 51 51 51 51 00 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 00 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 00 51 00 51 00 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 00 00 00 00 51 51 51 51 51 51 51 00 51 51 51 00 51 51 00 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 00 00 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 00 51 51
*/
