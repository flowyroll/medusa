.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rcx
lea addresses_D_ht+0x14da6, %r15
nop
add %rbx, %rbx
movb $0x61, (%r15)
nop
nop
nop
cmp $2352, %rcx
lea addresses_WC_ht+0x151c6, %rbp
nop
nop
sub $49191, %rbx
mov $0x6162636465666768, %r11
movq %r11, (%rbp)
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x17126, %rbp
nop
nop
nop
nop
cmp $17116, %rbx
vmovups (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
sub $8495, %rbp
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rdx

// Load
lea addresses_PSE+0x675e, %r14
nop
add %r9, %r9
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
add $7341, %rdx

// Store
lea addresses_US+0x11726, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
xor %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
cmp %r13, %r13

// Store
lea addresses_US+0x11726, %r14
nop
nop
nop
nop
nop
sub $50937, %rbx
movb $0x51, (%r14)
nop
and %rdx, %rdx

// Store
mov $0xf26, %r9
nop
nop
nop
nop
nop
and $59354, %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
nop
nop
nop
nop
and $17331, %rbx

// Store
lea addresses_RW+0x1f626, %rbx
nop
nop
nop
nop
nop
cmp %r8, %r8
movw $0x5152, (%rbx)
nop
nop
nop
nop
inc %r11

// Faulty Load
lea addresses_US+0x11726, %rdx
nop
nop
nop
nop
sub %r14, %r14
movb (%rdx), %r11b
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'51': 4}
51 51 51 51
*/
