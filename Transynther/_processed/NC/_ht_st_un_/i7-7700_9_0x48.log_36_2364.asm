.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rdi
push %rdx
lea addresses_D_ht+0x1cba8, %r11
xor $38179, %rdx
mov (%r11), %rdi
nop
nop
dec %r12
pop %rdx
pop %rdi
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Store
mov $0x728, %r12
nop
nop
nop
nop
nop
cmp $39358, %r14
mov $0x5152535455565758, %rax
movq %rax, (%r12)
nop
nop
sub $30236, %r14

// Store
mov $0x37dee80000000208, %rsi
nop
inc %rbp
mov $0x5152535455565758, %r14
movq %r14, (%rsi)
nop
nop
nop
nop
nop
cmp $5596, %rsi

// Faulty Load
mov $0x969a200000003a8, %rax
nop
nop
nop
nop
and %r9, %r9
vmovups (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'53': 1, '4d': 9, '8f': 3, 'cb': 3, '4c': 6, '03': 1, '2f': 1, '51': 1, 'ae': 3, '9f': 4, '9a': 2, '2c': 2}
03 9f 4d 9f 9f 4d 9f 8f 8f 8f 4c cb cb cb 9a 4d 9a 4d 2c 2c 4d 4d ae 4d 4d ae ae 2f 4c 51 4c 4c 4d 4c 4c 53
*/
