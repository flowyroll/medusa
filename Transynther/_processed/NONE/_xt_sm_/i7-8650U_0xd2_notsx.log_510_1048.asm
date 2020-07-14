.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdx
lea addresses_normal_ht+0xce1a, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
inc %r12
movl $0x61626364, (%rdx)
nop
nop
nop
nop
dec %r9
lea addresses_A_ht+0x545e, %r11
nop
nop
nop
nop
nop
and $9844, %rbp
mov (%r11), %rcx
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x1cf52, %r12
nop
nop
nop
nop
and %rbp, %rbp
mov (%r12), %r13d
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x1941a, %rdx
nop
nop
sub %r13, %r13
movw $0x6162, (%rdx)
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x41a, %rbp
dec %rdx
and $0xffffffffffffffc0, %rbp
vmovaps (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r9
nop
nop
nop
sub %rdx, %rdx
lea addresses_WT_ht+0x31a, %r12
sub $53354, %r9
mov (%r12), %r11
nop
nop
nop
nop
nop
xor $45697, %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdx

// Store
mov $0x72fa030000000eca, %r8
add $15839, %r10
mov $0x5152535455565758, %rdx
movq %rdx, (%r8)
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_UC+0x18a74, %r8
dec %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r8)
nop
xor $9681, %rbp

// Store
lea addresses_PSE+0x161a, %rcx
nop
nop
nop
nop
nop
add %r8, %r8
movl $0x51525354, (%rcx)
inc %r13

// Store
lea addresses_PSE+0x161a, %rcx
clflush (%rcx)
nop
nop
nop
xor $54221, %rdx
movb $0x51, (%rcx)
nop
and $64579, %rdx

// Faulty Load
lea addresses_PSE+0x161a, %r13
nop
nop
nop
add %r10, %r10
movb (%r13), %bl
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'51': 510}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
