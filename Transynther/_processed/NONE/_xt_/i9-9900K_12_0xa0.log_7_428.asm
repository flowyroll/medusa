.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1a68c, %rdx
nop
nop
nop
nop
sub %r11, %r11
mov (%rdx), %r8w
sub %rdi, %rdi
lea addresses_D_ht+0x278c, %rcx
clflush (%rcx)
nop
dec %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
nop
nop
and %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_US+0x13f0c, %r9
nop
nop
nop
and $10563, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovntdq %ymm2, (%r9)
nop
add $12850, %r10

// Store
mov $0x156e9800000009d4, %rsi
nop
nop
nop
nop
sub $9318, %rcx
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
nop
nop
nop
nop
add %r12, %r12

// Faulty Load
lea addresses_D+0x1f30c, %rsi
clflush (%rsi)
nop
nop
nop
cmp $12767, %r9
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'36': 7}
36 36 36 36 36 36 36
*/
