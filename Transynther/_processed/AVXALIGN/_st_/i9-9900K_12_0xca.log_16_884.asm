.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rax
push %rdi
push %rdx
push %rsi

// Load
lea addresses_US+0x142ab, %r8
nop
nop
cmp %rax, %rax
vmovups (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
xor $1800, %r15

// Store
lea addresses_UC+0x17ac3, %r8
nop
nop
nop
nop
nop
cmp $50453, %rdi
mov $0x5152535455565758, %r15
movq %r15, (%r8)
nop
nop
nop
nop
add $52173, %r13

// Store
mov $0x2aa52d00000003ab, %r13
nop
nop
nop
nop
nop
xor %rdx, %rdx
movl $0x51525354, (%r13)
nop
nop
nop
add %rdi, %rdi

// Faulty Load
lea addresses_D+0x11fab, %rdi
nop
nop
nop
nop
nop
cmp $51856, %r15
mov (%rdi), %rdx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'36': 16}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
