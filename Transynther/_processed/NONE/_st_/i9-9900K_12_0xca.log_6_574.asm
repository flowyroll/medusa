.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rdx
lea addresses_normal_ht+0x853b, %r10
nop
sub %rbp, %rbp
movl $0x61626364, (%r10)
nop
nop
nop
nop
sub %r11, %r11
lea addresses_D_ht+0xb2bb, %r12
nop
dec %r11
mov (%r12), %r15w
nop
and $62711, %r10
lea addresses_D_ht+0x3b3b, %r12
cmp $19532, %rdx
movups (%r12), %xmm0
vpextrq $0, %xmm0, %rbp
nop
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0xe0f4, %r8
xor %rdx, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%r8)
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x1920d, %r12
clflush (%r12)
nop
nop
nop
and $28061, %rbp
mov (%r12), %r11
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x19b3b, %r11
nop
nop
add %r15, %r15
movw $0x6162, (%r11)
nop
nop
nop
nop
and $48363, %rdx
pop %rdx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0x511b, %r12
nop
nop
sub %rdx, %rdx
movb $0x51, (%r12)
nop
nop
xor %r8, %r8

// Store
lea addresses_WT+0xeb3b, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
cmp %r15, %r15

// Store
lea addresses_UC+0x1aadb, %r15
nop
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r15)
nop
inc %r8

// Store
lea addresses_US+0x8a3b, %r11
clflush (%r11)
dec %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
xor %r15, %r15

// Store
mov $0x22f4bf00000000db, %r15
inc %r11
movl $0x51525354, (%r15)
nop
nop
inc %r15

// Faulty Load
lea addresses_WT+0x8b3b, %rcx
nop
nop
nop
nop
nop
xor $24302, %rbx
mov (%rcx), %r12d
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'58': 6}
58 58 58 58 58 58
*/
