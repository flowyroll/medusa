.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0xb8b1, %rdx
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rdx)
nop
nop
nop
nop
cmp %rax, %rax

// Load
mov $0xbb1, %r14
clflush (%r14)
nop
nop
nop
sub %r12, %r12
mov (%r14), %rsi
nop
nop
xor $22161, %r12

// Store
lea addresses_D+0x198b1, %rcx
nop
nop
nop
xor $30874, %r12
movw $0x5152, (%rcx)
and $13083, %rdx

// Store
lea addresses_PSE+0x1cb1, %rbp
nop
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rbp)
nop
nop
dec %rbp

// Store
lea addresses_A+0xbfc9, %rcx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x51, (%rcx)
xor $22533, %rcx

// Store
mov $0x4b1, %rax
nop
nop
xor $89, %rdx
movb $0x51, (%rax)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
mov $0x4b1, %rcx
clflush (%rcx)
nop
nop
nop
cmp $60456, %rbp
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
add $8109, %rax

// Store
mov $0x4b1, %rsi
nop
nop
nop
cmp $296, %rdx
movw $0x5152, (%rsi)
nop
nop
nop
nop
dec %r12

// Faulty Load
mov $0x4b1, %rax
clflush (%rax)
nop
nop
nop
nop
xor %rbp, %rbp
movntdqa (%rax), %xmm2
vpextrq $1, %xmm2, %r14
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 5}
00 00 00 00 00
*/
