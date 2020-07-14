.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rbx

// Store
lea addresses_normal+0x1a645, %rax
nop
add $50763, %r11
movw $0x5152, (%rax)
nop
nop
and %r11, %r11

// Store
lea addresses_RW+0x9d35, %r8
nop
nop
nop
nop
dec %r12
movb $0x51, (%r8)
nop
and $48696, %rax

// Load
lea addresses_D+0x98f9, %rax
nop
nop
xor $37856, %r15
mov (%rax), %r8w
and %rbp, %rbp

// Store
lea addresses_UC+0x1c521, %rax
xor $22623, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
nop
inc %r12

// Load
mov $0x8a4fd0000000321, %r11
add %r12, %r12
mov (%r11), %ax
nop
nop
sub $10029, %r12

// Store
lea addresses_PSE+0x19d21, %r11
clflush (%r11)
nop
nop
nop
cmp $40052, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%r11)
nop
nop
nop
nop
nop
add $14014, %rax

// Load
lea addresses_UC+0x1c521, %rbp
nop
nop
nop
nop
add %r11, %r11
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
nop
nop
and $10683, %r12

// Faulty Load
lea addresses_UC+0x1c521, %rbx
and $23554, %r12
mov (%rbx), %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'58': 11}
58 58 58 58 58 58 58 58 58 58 58
*/
