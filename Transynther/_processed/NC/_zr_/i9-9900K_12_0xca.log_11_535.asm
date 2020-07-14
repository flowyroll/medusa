.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rbx

// Store
lea addresses_WT+0xbc8b, %r15
nop
sub $16562, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
nop
cmp $60858, %rax

// Store
lea addresses_WC+0x55db, %r8
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r10
movq %r10, (%r8)
nop
nop
and %r15, %r15

// Load
mov $0x62b3900000000ddb, %rbp
nop
nop
nop
sub $52125, %r8
vmovups (%rbp), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15
nop
and $5977, %rbx

// Store
mov $0x62b3900000000ddb, %rbp
nop
nop
nop
xor $44441, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%rbp)

// Exception!!!
nop
nop
nop
nop
mov (0), %r10
sub $8543, %rbx

// Store
lea addresses_D+0x7bd7, %rbp
nop
nop
nop
nop
and %rax, %rax
movw $0x5152, (%rbp)
nop
sub %r15, %r15

// Faulty Load
mov $0x62b3900000000ddb, %rbx
and $47472, %rbp
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
