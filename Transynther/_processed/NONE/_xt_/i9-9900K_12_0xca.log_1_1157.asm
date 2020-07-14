.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x19b63, %rbp
nop
nop
nop
nop
add %rbx, %rbx
movups (%rbp), %xmm4
vpextrq $1, %xmm4, %rsi
cmp %rdi, %rdi

// Store
lea addresses_UC+0xdc63, %rdi
nop
xor %r13, %r13
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
nop
nop
nop
nop
nop
sub $24359, %rbx

// Store
lea addresses_WC+0x4563, %r11
clflush (%r11)
dec %rsi
movw $0x5152, (%r11)
nop
nop
cmp $59395, %r11

// Store
lea addresses_US+0x123cb, %rbp
nop
nop
nop
nop
nop
dec %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
nop
nop
sub $26818, %r8

// Faulty Load
lea addresses_D+0x2b63, %rbx
nop
xor $17550, %rdi
vmovups (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'36': 1}
36
*/
